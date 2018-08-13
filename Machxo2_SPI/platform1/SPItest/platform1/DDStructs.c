#include "DDStructs.h"


/* lm8 instance LM8*/
struct st_LatticeMico8Ctx_t lm8_LM8 = {
    "LM8"};


/* gpio instance LED*/
struct st_MicoGPIOCtx_t gpio_LED = {
    "LED",
    0x80000800,
    255,
    1,
    0,
    0,
    0,
    2,
    1,
    1,
    0};


/* spi_flash instance SPIFlash*/
struct st_MicoSPIFlashCtx_t spi_flash_SPIFlash = {
    "SPIFlash",
    0x80000000,
    256,
    32768};

