/* 
 * File:   BSP.hpp
 * Author: Whiteway
 *
 * Created on November 21, 2019, 10:08 PM
 */

#ifndef BSP_HPP
#define	BSP_HPP

#if defined(__32MZ2048ECM064__)
    #include <LEDBoard/BSP/PIC32MZ2048ECM064.hpp>
#else
    #error "BSP not defined for this microcontroller"
#endif

#include <xc.h>

#define TRIS_OUTPUT 0
#define TRIS_INPUT 1


#endif	/* BSP_HPP */

