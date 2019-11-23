#include <sys/attribs.h>
#include "LEDBoard/Screen.hpp"
#include "LEDBoard/BSP.hpp"

#define SCREEN_ROWS 32
#define SCREEN_COLS 32
#define NUM_COLORS  3
#define NUM_BUFFERS 2
#define ROWS_TO_SCAN (SCREEN_ROWS / 2)
#define RED_MAT   0
#define GREEN_MAT 1
#define BLUE_MAT  2
#define BIT_DEPTH 8

uint8_t screenBuffer[NUM_COLORS * SCREEN_COLS * SCREEN_ROWS];
uint8_t currentRow = 0;
uint8_t bitVal = 0;
volatile bool interruptFired = false;

//Private functions
void writeRow(uint32_t row);
void initializeTimer(void);

void drawScreen(void)
{
    //See if it's time to update a row
    if(!interruptFired){
        return;
    }

    //Clear the interrupt flag
    interruptFired = 0;

    //Increment the counter
    if(currentRow == 0){
        bitVal+=8;
    }

    //Update a row
    writeRow(currentRow);

    //Next row
    currentRow = (currentRow + 1) % ROWS_TO_SCAN;
}

void setScreen(uint8_t * ptr)
{
    memcpy(screenBuffer, ptr, NUM_COLORS * SCREEN_COLS * SCREEN_ROWS);
}

void writeRow(uint32_t row)
{
    //Calculate addresses
    uint8_t rowToUse  = row % ROWS_TO_SCAN;
    uint8_t secondRow = rowToUse + ROWS_TO_SCAN;

    uint32_t redOffset1 = rowToUse  * SCREEN_COLS;
    uint32_t redOffset2 = secondRow * SCREEN_COLS;
    //uint32_t greenOffset1 = redOffset1 + (SCREEN_COLS * SCREEN_ROWS);
    //uint32_t greenOffset2 = redOffset2 + (SCREEN_COLS * SCREEN_ROWS);
    //uint32_t blueOffset1 = greenOffset1 + (SCREEN_COLS * SCREEN_ROWS);
    //uint32_t blueOffset2 = greenOffset2 + (SCREEN_COLS * SCREEN_ROWS);

    //1 bit color to start
    for(uint32_t idx = 0; idx < SCREEN_COLS; idx++){
        //SHIFT_CLOCK = 0;
        LATB &= 0xFDFF;

        R1 = screenBuffer[redOffset1 + idx] > bitVal;
        R2 = screenBuffer[redOffset2 + idx] > bitVal;
        //G1 = screenBuffer[greenOffset1 + idx] > bitVal;
        //G2 = screenBuffer[greenOffset2 + idx] > bitVal;
        //B1 = screenBuffer[blueOffset1 + idx]  > bitVal;
        //B2 = screenBuffer[blueOffset2 + idx]  > bitVal;
        //B2 = counter >> idx;
        //SHIFT_CLOCK = 1;
        LATB |= 0x0200;
    }

    //Blank the display to move the line
    DISPLAY_ENABLE = 1;

    //SHIFT_LAT = 1;
    LATB |= 0x0100;

    //Update the address pins
    ADDR_PORT = (ADDR_PORT & !ADDR_PORT_MASK) | (row << ADDR_SHIFT);

    //SHIFT_LAT = 0;
    LATB &= 0xFEFF;

    DISPLAY_ENABLE = 0;
}

void initializeScreen(void)
{
    initializeDiscreteIO();
    initializeTimer();
}

void initializeTimer(void)
{
    //Clear out timer
    T1CON = 0;

    T1CONbits.TCS = 0;  //Internal Clock
    T1CONbits.TCKPS = 0;
    TMR1 = 0;           //Clear Timer
    PR1 = 0x07FF;       //Timer Period
    IFS0bits.T1IF = 0;  //Clear Interrupt
    IPC1bits.T1IP = 7;  //High priority
    IPC1bits.T1IS = 3;  //High Subpriority
    IEC0bits.T1IE = 1;  //Enable interrupt

    //Timer On
    T1CONbits.ON = 1;
}

void initializeDiscreteIO(void)
{
    R1TRIS = TRIS_OUTPUT;
    R2TRIS = TRIS_OUTPUT;
    G1TRIS = TRIS_OUTPUT;
    G2TRIS = TRIS_OUTPUT;
    B1TRIS = TRIS_OUTPUT;
    B2TRIS = TRIS_OUTPUT;
    DISPLAY_ENABLE_TRIS = TRIS_OUTPUT;
    ADDR_TRIS &= !ADDR_PORT_MASK;
    SHIFT_CLOCK_TRIS = TRIS_OUTPUT;
    SHIFT_LAT_TRIS = TRIS_OUTPUT;
    ANSELG &= !ADDR_PORT_MASK;

    //Values
    ADDR_PORT = ADDR_PORT & !ADDR_PORT_MASK;
    R1 = 0;
    R2 = 0;
    G1 = 0;
    G2 = 0;
    B1 = 0;
    B2 = 0;
}
extern "C" {
void __ISR(_TIMER_1_VECTOR,IPL7AUTO)Timer1Handler(void)
{
    interruptFired = true;
    IFS0CLR=_IFS0_T1IF_MASK; //Clear Interrupt
    //TMR1 = 0;
}
}