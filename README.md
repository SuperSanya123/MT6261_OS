# MT6261_OS
OS for devices based on MT6261 SoC
This is a fork of DZ09 repo:https://github.com/MediatekInfo/DZ09.
Use EmBitz 1.11 to build this project.
You must edit linker script, if your device not contain 4mb ROM.
Also dont forget to edit appconfig.h. The default LCD resolution is 240x320.

!!!HOW TO FLASH!!!

1 step: build SYSTEM and BOOTLOADER in EmBitz.

2 step: open FlashTool from this repo.

3 step: Select the scatter file mt6261.cat

4 step: turn off your device and connect to PC. Then, click download button. If your device is not detected by the system, install the drivers from drivers.zip archive
