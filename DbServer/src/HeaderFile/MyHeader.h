#ifndef HEADER_FILE_H
#define HEADER_FILE_H

#include <stdint.h>
#include <string>
#include "GlobalDefine.h"

#endif

uint8_t *IntToByte(int x);

int ByteToInt(uint8_t* x);

int StartEpollListen();


// ============ RedisLogic.cpp ============
int RedisOperation();


// ============ SqlLogic.cpp ============

int SqlOperation();