/* 
 * File:   Screen.hpp
 * Author: Whiteway
 *
 * Created on November 21, 2019, 11:12 PM
 */

#ifndef SCREEN_HPP
#define	SCREEN_HPP

#include <xc.h>

void initializeDiscreteIO(void);
void initializeScreen(void);
void drawScreen(void);
void setScreen(uint8_t * ptr);

#endif	/* SCREEN_HPP */

