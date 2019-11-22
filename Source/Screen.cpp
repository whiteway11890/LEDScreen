
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

uint8_t screenBuffer[NUM_COLORS][SCREEN_COLS][SCREEN_ROWS];
uint8_t currentRow = 0;
volatile bool interruptFired = false;

//Private functions
void writeRow(uint8_t row);
void writeAddress(uint8_t row);

void drawScreen(void)
{
    //See if it's time to update a row
    //if(!interruptFired){
    //    return;
    //}
    
    //Clear the interrupt flag
    interruptFired = 0;
    
    //Update a row
    writeRow(currentRow);
    
    //Next row
    currentRow = (currentRow + 1) % ROWS_TO_SCAN;
}

void writeAddress(uint8_t row)
{
    ADDR_A = (row & 0x01);
    ADDR_B = (row >> 1 & 0x01);
    ADDR_C = (row >> 2 & 0x01);
    ADDR_D = (row >> 3 & 0x01);
}

void writeRow(uint8_t row)
{    
    //Calculate addresses
    uint8_t rowToUse  = row % ROWS_TO_SCAN;
    uint8_t secondRow = rowToUse + ROWS_TO_SCAN;
    
    //Blank the display
    DISPLAY_ENABLE = 0;
    SHIFT_LAT = 0;
    
    //Update the address pins
    writeAddress(row);
    
    //1 bit color to start
    for(uint16_t idx = 0; idx < SCREEN_COLS; idx++){
        SHIFT_CLOCK = 0;
        R1 = screenBuffer[RED_MAT]  [idx][rowToUse];
        R2 = screenBuffer[RED_MAT]  [idx][secondRow];
        G1 = screenBuffer[GREEN_MAT][idx][rowToUse];
        G2 = screenBuffer[GREEN_MAT][idx][secondRow];
        B1 = screenBuffer[BLUE_MAT] [idx][rowToUse];
        B2 = screenBuffer[BLUE_MAT] [idx][secondRow];
        SHIFT_CLOCK = 1;
    }
    
    SHIFT_LAT = 1;
    DISPLAY_ENABLE = 1;
}

void initializeScreen(void)
{
    initializeDiscreteIO();
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
    ADDR_A_TRIS = TRIS_OUTPUT;
    ADDR_B_TRIS = TRIS_OUTPUT;
    ADDR_C_TRIS = TRIS_OUTPUT;
    ADDR_D_TRIS = TRIS_OUTPUT;
    SHIFT_CLOCK_TRIS = TRIS_OUTPUT;
    SHIFT_LAT_TRIS = TRIS_OUTPUT;
}