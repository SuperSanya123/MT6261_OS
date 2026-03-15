#ifndef _RAWIMAGES_H_
#define _RAWIMAGES_H_
#include <stdint.h>
typedef enum{
    MIRROR_NONE,
    MIRROR_HORIZONTAL,
    MIRROR_VERTICAL,
    MIRROR_BOTH
} mirror_t;
extern void Draw_raw(uint16_t *framebuffer, int x, int y, int width, int height, uint16_t *image_lol);
extern void Draw_raw_ex(uint16_t *fb, int x, int y, int w, int h, const uint16_t *img, mirror_t mirror, int invert);
#endif
