#include "DDStructs.h"

void LatticeDDInit(void)
{

    /* initialize LED instance of gpio */
    MicoGPIOInit(&gpio_LED);
    
    /* initialize SPIFlash instance of spi_flash */
    MicoSPIFlash_Initialize(&spi_flash_SPIFlash);
    
    /* invoke application's main routine*/
    main();
}

