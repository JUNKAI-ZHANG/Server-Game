#ifndef RING_BUFFER_H
#define RING_BUFFER_H

#include <stdint.h>

#endif

class RingBuffer {
public:
    uint8_t* _buffer;
    uint32_t _begin;
    uint32_t _end;
    uint32_t _remain;
    uint32_t _capacity;

public:
    RingBuffer();

    ~RingBuffer();

    RingBuffer(const RingBuffer& ringBuffer);

    bool AddBuffer(uint8_t* buffer, uint32_t size);

    bool PopBuffer(uint32_t size);

    uint8_t* GetBuffer(uint32_t len);

    uint32_t GetRemain();

    uint32_t GetCapacity();

    uint8_t operator[] (int id);
};