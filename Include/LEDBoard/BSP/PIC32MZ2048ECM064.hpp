/* 
 * File:   PIC32MZ2048ECM064.hpp
 * Author: Whiteway
 *
 * Created on November 21, 2019, 10:07 PM
 */

#ifndef PIC32MZ2048ECM064_HPP
#define	PIC32MZ2048ECM064_HPP

//Red
#define R1TRIS TRISBbits.TRISB1
#define R1     LATBbits.LATB1
#define R2TRIS TRISBbits.TRISB4
#define R2     LATBbits.LATB4

//Green
#define G1TRIS TRISBbits.TRISB0
#define G1     LATBbits.LATB0
#define G2TRIS TRISBbits.TRISB3
#define G2     LATBbits.LATB3

//Blue
#define B1TRIS TRISBbits.TRISB2
#define B1     LATBbits.LATB2
#define B2TRIS TRISBbits.TRISB5
#define B2     LATBbits.LATB5

//Display
#define DISPLAY_ENABLE_TRIS TRISFbits.TRISF5
#define DISPLAY_ENABLE      LATFbits.LATF5
#define ADDR_PORT_MASK 0x03C0
#define ADDR_TRIS      TRISG
#define ADDR_SHIFT     6
#define ADDR_PORT      LATG

//Shift Register
#define SHIFT_CLOCK_TRIS TRISBbits.TRISB9
#define SHIFT_CLOCK      LATBbits.LATB9
#define SHIFT_LAT_TRIS   TRISBbits.TRISB8
#define SHIFT_LAT        LATBbits.LATB8

#endif	/* PIC32MZ2048ECM064_HPP */

