/* 
 * File:   PIC32MZ2048ECM064.hpp
 * Author: Whiteway
 *
 * Created on November 21, 2019, 10:07 PM
 */

#ifndef PIC32MZ2048ECM064_HPP
#define	PIC32MZ2048ECM064_HPP

//Red
#define R1TRIS TRISBbits.TRISB0
#define R1     LATBbits.LATB0
#define R2TRIS TRISBbits.TRISB0
#define R2     LATBbits.LATB0

//Green
#define G1TRIS TRISBbits.TRISB0
#define G1     LATBbits.LATB0
#define G2TRIS TRISBbits.TRISB0
#define G2     LATBbits.LATB0

//Blue
#define B1TRIS TRISBbits.TRISB0
#define B1     LATBbits.LATB0
#define B2TRIS TRISBbits.TRISB0
#define B2     LATBbits.LATB0

//Display
#define DISPLAY_ENABLE_TRIS TRISBbits.TRISB0
#define DISPLAY_ENABLE      LATBbits.LATB0
#define ADDR_A_TRIS  TRISBbits.TRISB0
#define ADDR_B_TRIS  TRISBbits.TRISB0
#define ADDR_C_TRIS  TRISBbits.TRISB0
#define ADDR_D_TRIS  TRISBbits.TRISB0
#define ADDR_A       LATBbits.LATB0
#define ADDR_B       LATBbits.LATB0
#define ADDR_C       LATBbits.LATB0
#define ADDR_D       LATBbits.LATB0

//Shift Register
#define SHIFT_CLOCK_TRIS TRISBbits.TRISB0
#define SHIFT_CLOCK      LATBbits.LATB0
#define SHIFT_LAT_TRIS   TRISBbits.TRISB0
#define SHIFT_LAT        LATBbits.LATB0

#endif	/* PIC32MZ2048ECM064_HPP */

