#include "../HeaderFile/GlobalDefine.h"

uint8_t *IntToByte(int x)
{
    uint8_t *ret = new uint8_t[4];
    ret[0] = (uint8_t)((x >> 0)  & 255);
    ret[1] = (uint8_t)((x >> 8)  & 255);
    ret[2] = (uint8_t)((x >> 16) & 255);
    ret[3] = (uint8_t)((x >> 24) & 255);
    return ret;
}

int ByteToInt(uint8_t *x)
{
    int ret = 0;
    ret = (ret << 8) + (int)x[3];
    ret = (ret << 8) + (int)x[2];
    ret = (ret << 8) + (int)x[1];
    ret = (ret << 8) + (int)x[0];
    return ret;
}