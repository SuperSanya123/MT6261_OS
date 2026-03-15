// This is an independent project of an individual developer. Dear PVS-Studio, please check it.
// PVS-Studio Static Code Analyzer for C, C++ and C#: http://www.viva64.com
/*
* This file is part of the DZ09 project.
*
* Copyright (C) 2020, 2019 AJScorp
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; version 2 of the License.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
*/
#include "systemconfig.h"
#include "lcdif.h"
#include "rawimages.h"
#include <stdint.h>
#include "images.h"
#include "ili9341.h"
#include "pmu.h"
#include "utils.h"
void draw_menu(uint16_t *framebuffer){
    __disable_interrupts();
    for (int i = 0; i < 240 * 320; i++) {
        framebuffer[i] = 0x0000;
    }
    Draw_raw_ex(framebuffer, 100, 100, 126, 126, image_bikov, MIRROR_HORIZONTAL, 1);
    __enable_interrupts();
}
int main(void)
{   //init the phone
    Init();
    LCDIF_Initialize();
    TPOINT offset = {0, 0};
    LCDIF_SetupLayer(LCDIF_LAYER0, offset, 240, 320, CF_RGB565, 255, 0);
    LCDIF_SetLayerEnabled(LCDIF_LAYER0, true, true);
    uint16_t *fb = (uint16_t*)LCDScreen.VLayer[0].FrameBuffer;
    static int last_charge_state = -1;
    static int last_btn = 0;
    while(1)
    {   EM_ProcessEvents();
        /* Restart watchdog */
        RGU_RestartWDT();
        int charge_state = PMU_IsChargerConnected();
        int btn = PMU_IsPowerKeyPressed();
        if (btn && !last_btn) {
                draw_menu(fb);
        }
        last_btn = btn;
        if (charge_state != last_charge_state) {
             Draw_raw_ex(fb, 0, 0, 27, 10,
                charge_state ? image_charge : image_no_charge,
                MIRROR_HORIZONTAL, 1);
            last_charge_state = charge_state;
        }
}}
