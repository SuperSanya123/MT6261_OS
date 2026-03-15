//2026 raw images drawing script. Sanya's work
#include "rawimages.h"
#include <stdint.h>
void Draw_raw(uint16_t *framebuffer, int x, int y, int width, int height, uint16_t *image_lol){
     for(int pixelh=0; pixelh<height; pixelh++){
        for (int p = 0; p < width; p++){
            int fb_ind = (y + pixelh) * 240 + (x + p);
            int img_ind = pixelh * width + p;
            framebuffer[fb_ind] = image_lol[img_ind];
        }
     }
}
void Draw_raw_ex(uint16_t *fb, int x, int y, int w, int h, const uint16_t *img, mirror_t mirror, int invert)
{
    for (int row = 0; row < h; row++) {
        for (int col = 0; col < w; col++) {
            int src_idx = row * w + col;
            int img_x = col;
            int img_y = row;

            // mirror
            if (mirror == MIRROR_HORIZONTAL || mirror == MIRROR_BOTH)
                img_x = w - 1 - col;
            if (mirror == MIRROR_VERTICAL || mirror == MIRROR_BOTH)
                img_y = h - 1 - row;

            int dst_idx = (y + img_y) * 240 + (x + img_x);
            uint16_t p = img[src_idx];

            if (invert) {
                uint16_t r = (p >> 11) & 0x1F;
                uint16_t g = (p >> 5) & 0x3F;
                uint16_t b = p & 0x1F;
                r = 31 - r;
                g = 63 - g;
                b = 31 - b;
                p = (r << 11) | (g << 5) | b;
            }

            fb[dst_idx] = p;
        }
    }
}
