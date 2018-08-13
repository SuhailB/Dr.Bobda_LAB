/****************************************************************
* This example exercises the use of SPI flash device.			*
*																*
*																*	
* PREREQUISITES:												*
* --------------												*
* - A SPI flash device. This example assumes the 	            *
*   SPI flash instance is named "SPIFLASH".If it is not true,   *
*   it must be changed to reflect the instance-name by changing	*
*   the spi_flash_SPIFlash in LM8_SPI_Test source file.         *
* - GPIO with 4-bit output named "LED" connected to the         *
*   board's LED pins.                                           *
*****************************************************************/
#include "DDStructs.h"
#include "MicoSPIFlash.h"
#include "MicoGPIO.h"
#include "MicoUtils.h"


unsigned char *Flash_address = (unsigned char*) 0x01010000;

/*************************
 * USER-MAIN ENTRY POINT *
 *************************/
int main (void)
{
	char iValue = 0xF;
	char rValue;
	

	/* gpio instance name is "LED" */
	MicoGPIOCtx_t *leds = &gpio_LED;
	/* SPI flash instance name is "SPIFLASH" */
	MicoSPIFlashCtx_t *spiFlash = &spi_flash_SPIFlash;
	


	MICO_GPIO_WRITE_DATA_BYTE0(leds->base, iValue); // initialise LED 

	MicoSleepMilliSecs(1000);// added to delay LED blinks


	unsigned char i = 0x0;
	for(i=0; i<16; i++)
	{

		rValue = *(Flash_address+i);

		MicoSleepMilliSecs(1000);

		MICO_GPIO_WRITE_DATA_BYTE0(leds->base, rValue);

		MicoSleepMilliSecs(1000);
	}

	unsigned char j = 0x0;
	for(j=0; j<16; j++)
	{

		*(Flash_address+16+j) = j;

		MicoSleepMilliSecs(10);

	}

	i = 0x0;
	for(i=0; i<16; i++)
	{

		rValue = *(Flash_address+16+i);

		MicoSleepMilliSecs(1000);

		MICO_GPIO_WRITE_DATA_BYTE0(leds->base, rValue);

		MicoSleepMilliSecs(1000);
	}
	
	return(0);
}
