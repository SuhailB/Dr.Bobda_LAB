/****************************************************************
* This example exercises Wishbone UART's transmit/receive	  	*
* functionality by directly accessing the UART drivers(in		*
* lieu of stdin/stdout).										*
*																*
* To use this demo, connect the cable between the demo			*
* board and a PC.  Start hyperterminal on the PC and select		*
* the appropriate serial port (typically COM<n> where <n> is	*
* a numeric value (e.g. COM1, COM6 etc).						*
* 																*
* Configure the serial port connection to 115200 bits/second	*
* with 8-data bits, no parity and no flow control.				*
*																*
* The following message will be shown in the hyperterminal:		*
*																*
* -- MAIN MENU --												*
* 0 - Terminate Session											*
* 1 - Uart Echo Test											*
* 2 - Toggle LEDs												*
* >																*
*																*
* Type 0, 1 or 2 on hyperterminal; LatticeMico8 will terminate, *
* or do uart echo test or toggle LEDs.							*
*																*	
* PREREQUISITES:												*
* --------------												*
* - LatticeMico8 connected to a UART.  This example assumes		*
*   the UART instance is named "uart".  If it is not true,		*
*   it must be changed to reflect the instance-name by			*
*   changing the uart_core_uart to uart_core_<instance_name> 	*
*   in LM8_Uart_Test source file.								*
* - GPIO with 4-bit output named "LED" connected to the         *
*   board's LED pins.                                           *
*****************************************************************/
#include "MicoUtils.h"
#include "DDStructs.h"
#include "MicoUart.h"
#include "MicoGPIO.h"


/***************************************************************
 * TEMPLATE SPECIFIC PARAMETERS ARE HERE, CHANGE AS NEEDED.    *
 ***************************************************************/
char *WELCOME_MSG_1 = "-- MAIN MENU --\r\n";
char *WELCOME_MSG_2 = "0 - Terminate Session\r\n";
char *WELCOME_MSG_3 = "1 - Uart Echo Test\r\n";
char *WELCOME_MSG_4 = "2 - Toggle LEDs\r\n";
char *WELCOME_MSG_5 = ">";

char *ECHO_MSG_1 = "-- ECHO TEST --\r\n";
char *ECHO_MSG_2 = "Press 0 to return to Main Menu\r\n";
char *ECHO_MSG_3 = ">";

char *LED_MSG_1 = "-- LED TOGGLE TEST --\r\n";
char *LED_MSG_2 = "Press 0 to return to Main Menu\r\n";
char *LED_MSG_3 = "Press 1 through 4 to toggle LEDs\r\n";
char *LED_MSG_4 = ">";

char *SESSION_MSG_1 = "Session Terminated\r\n";

/***************************************************************
 * Send String to the Uart									   *
 ***************************************************************/
void SendString (MicoUartCtx_t *pUart, char *str)
{
	char *ptr = str;
	do {
		MicoUart_putC (pUart, *ptr);
		ptr++;
	} while (*ptr != '\0');	
}

/***************************************************************
 * Print the main menu on the hyperterminal					   *
 ***************************************************************/
void SM_Welcome (MicoUartCtx_t *pUart)
{
	// Clear screen
	MicoUart_putC (pUart, 0xc);
	// Print Main menu
	SendString (pUart, WELCOME_MSG_1);
	SendString (pUart, WELCOME_MSG_2);
	SendString (pUart, WELCOME_MSG_3);
	SendString (pUart, WELCOME_MSG_4);
	SendString (pUart, WELCOME_MSG_5);
}

/***************************************************************
 * Echo User's input on the hyperterminal					   *
 ***************************************************************/
void SM_Echo (MicoUartCtx_t *pUart)
{
	// Clear screen
	MicoUart_putC (pUart, 0xc);
	// Print Uart Echo menu
	SendString (pUart, ECHO_MSG_1);
	SendString (pUart, ECHO_MSG_2);
	SendString (pUart, ECHO_MSG_3);
	char rcvdChar;
	do {
		MicoUart_getC (pUart, &rcvdChar);
		if (rcvdChar == '0')
			break;
		MicoUart_putC (pUart, rcvdChar); 
	} while (1);
}

/***************************************************************
 * Toggle the LED											   *
 ***************************************************************/
void SM_Toggle (MicoUartCtx_t *pUart, MicoGPIOCtx_t *pGpio)
{
	// Clear screen
	MicoUart_putC (pUart, 0xc);
	// Print LED Toggle menu
	SendString (pUart, LED_MSG_1);
	SendString (pUart, LED_MSG_2);
	SendString (pUart, LED_MSG_3);
	SendString (pUart, LED_MSG_4);
	char rcvdChar;
	do {
		MicoUart_getC (pUart, &rcvdChar);
		if (rcvdChar == '0')
			break;
		
		switch (rcvdChar)
		{
			case '1': MICO_GPIO_WRITE_DATA_BYTE0 (pGpio->base, ~0x1); break;
			case '2': MICO_GPIO_WRITE_DATA_BYTE0 (pGpio->base, ~0x2); break;
			case '3': MICO_GPIO_WRITE_DATA_BYTE0 (pGpio->base, ~0x4); break;
			case '4': MICO_GPIO_WRITE_DATA_BYTE0 (pGpio->base, ~0x8); break;
			default:
				break;
		}
	} while (1);
}

/*************************
 * USER-MAIN ENTRY POINT *
 *************************/
int main (void)
{
	/* uart instance name is "uart" */
	MicoUartCtx_t *uart = &uart_core_uart;
	/* gpio instance name is "LED" */
	MicoGPIOCtx_t *led  = &gpio_LED;
	
	// Wait for user input
	char selection, stop = 0x0;
	do {
		// Print 'welcome' screen and wait for user input
		SM_Welcome (uart);
		MicoUart_getC (uart, &selection);
		
		// Select operation based on user input
		switch (selection)
		{
			case '1': SM_Echo (uart); break;
			case '2': SM_Toggle (uart, led); break;
			case '0': 
				SendString (uart, SESSION_MSG_1);
				stop = 0x1; // user has terminated session
				break;
			default: 
				break;
		}
		
		MicoSleepMicroSecs (100);
		if (stop == 0x1) 
			break;
	
	} while (1);
	
	return 0;
}

