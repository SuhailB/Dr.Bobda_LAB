`define LATTICE_FAMILY "MachXO2"
`define LATTICE_FAMILY_MachXO2
`define LATTICE_DEVICE "LCMXO2-2000ZE"
`ifndef SYSTEM_CONF
`define SYSTEM_CONF
`timescale 1ns / 100 ps
`define I_WB_DAT_WIDTH 8
`define D_WB_DAT_WIDTH 8
`define CFG_REGISTER_COUNT 16
`define LM8CFG_REGISTER_32
`define CFG_CALL_STACK 16
`define LM8CFG_CALL_STACK_16
`define LM8CFG_PROM_SIZE 2048
`define LM8CFG_PROM_INIT_FILE "C:/Users/Suhail/Desktop/Work/Machxo2_SPI/prom_init.mem"
`define LM8CFG_PROM_INIT_FILE_FORMAT "hex"
`define SP_ADDRESS_LOCK
`define SP_PORT_TYPE "Memory"
`define LM8SP_PORT_ENABLE
`define LM8CFG_SP_INIT_FILE "C:/Users/Suhail/Desktop/Work/Machxo2_SPI/scratchpad_init.mem"
`define LM8CFG_SP_INIT_FILE_FORMAT "hex"
`define CFG_EXT_SIZE 16
`define LM8CFG_EXT_SIZE_32
`define CFG_IO_BASE_ADDRESS 32'h80000000
`define LM8LATTICE_FAMILY "MachXO2"
`define LM8CFG_DISTRIBUTED_RAM
`define LEDGPIO_WB_DAT_WIDTH 8
`define LEDGPIO_WB_ADR_WIDTH 4
`define ADDRESS_LOCK
`define LEDOUTPUT_PORTS_ONLY
`define LEDDATA_WIDTH 32'h2
`define SPIFlashLATTICE_FAMILY "MachXO2"
`define S_PORT_TYPE "Memory"
`define SPIFlashS_WB_DAT_WIDTH 8
`define SPIFlashS_WB_ADR_WIDTH 32
`define C_PORT_TYPE "IO"
`define SPIFlashC_PORT_ENABLE
`define SPIFlashC_WB_DAT_WIDTH 8
`define SPIFlashC_WB_ADR_WIDTH 11
`define PORT_CONNECTION "S;C;S:C"
`define SPIFlashCLOCK_SEL 32'h4
`define PAGE_SIZE 32'h100
`define SECTOR_SIZE 32'h8000
`define SPIFlashSPI_READ 32'h3
`define SPIFlashSPI_FAST_READ 32'hb
`define SPIFlashSPI_BYTE_PRG 32'h2
`define SPIFlashSPI_PAGE_PRG 32'h2
`define SPIFlashSPI_BLK1_ERS 32'h20
`define SPIFlashSPI_BLK2_ERS 32'h52
`define SPIFlashSPI_BLK3_ERS 32'hd8
`define SPIFlashSPI_CHIP_ERS 32'hc7
`define SPIFlashSPI_WRT_ENB 32'h6
`define SPIFlashSPI_WRT_DISB 32'h4
`define SPIFlashSPI_READ_STAT 32'h5
`define SPIFlashSPI_WRT_STAT 32'h1
`define SPIFlashSPI_PWD_DOWN 32'hb9
`define SPIFlashSPI_PWD_UP 32'hab
`define SPIFlashSPI_DEV_ID 32'h9f
`define S_ADDRESS_LOCK
`define C_ADDRESS_LOCK
`endif // SYSTEM_CONF
