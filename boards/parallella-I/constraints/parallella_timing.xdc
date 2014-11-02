###############################################################
##  Timing constraints for the Parallella-I board
##  3/12/14 F. Huettig
####
## This file defines timing constraints for the Parallella-I
##   and Zynq 7010 or 7020.  
## Pin constraints are defined elsewhere.
###############################################################

#######################
# Internal constraints
#######################
# TX at I/O is TX -FROM- the Epiphany, RX into the FPGA
#jh NET "TXO_LCLK_P" TNM_NET = "TXO_LCLK_P";
#jh TIMESPEC "TS_TXO_LCLK_P" = PERIOD "TXO_LCLK_P" 6.66ns HIGH 50% INPUT_JITTER 100ps;

create_clock -name TS_TXO_LCLK_P -period 6.66 -waveform {0 3.33} [get_ports TXO_LCLK_P]
set_input_jitter [get_clocks TS_TXO_LCLK_P] 0.1 

#jh NET "parallella/ewrapper_link_top/io_tx/CLK_IN" TNM_NET = "CLK_IN";
#jh TIMESPEC "TS_CLK_IN" = PERIOD "CLK_IN" 3.33ns HIGH 50% INPUT_JITTER 100ps;
create_clock -name CLK_IN -period 3.33 -waveform {0  1.666} [get_pins parallella/ewrapper_link_top/io_tx/CLK_IN]
set_input_jitter [get_clocks CLK_IN] 0.1

#jh NET "parallella/ewrapper_link_top/io_tx/CLK_IN_90" TNM_NET = "CLK_FWD_IN";
#jh TIMESPEC "TS_CLK_FWD_IN" = PERIOD "CLK_FWD_IN" 3.33ns HIGH 50% INPUT_JITTER 100ps;
create_clock -name CLK_FWD_IN -period 3.33 -waveform {0  1.666} [get_pins parallella/ewrapper_link_top/io_tx/CLK_IN_90]
set_input_jitter [get_clocks CLK_FWD_IN] 0.1




#INST "rst_sync*" ASYNC_REG = TRUE;
#PIN "CLK_RESET" TIG;
#PIN "IO_RESET" TIG;

# These constraints will be forwarded from the PS module, no need to duplicate them here.
#NET "system_stub/system_i/processing_system7_0/FCLK_CLK3" TNM_NET = clk_fpga_3;
#TIMESPEC TS_clk_fpga_3 = PERIOD clk_fpga_3 40000 kHz;

#NET "system_stub/system_i/processing_system7_0/FCLK_CLK2" TNM_NET = clk_fpga_2;
#TIMESPEC TS_clk_fpga_2 = PERIOD clk_fpga_2 200000 kHz;

#NET "system_stub/system_i/processing_system7_0/FCLK_CLK1" TNM_NET = clk_fpga_1;
#TIMESPEC TS_clk_fpga_1 = PERIOD clk_fpga_1 200000 kHz;

#NET "system_stub/system_i/processing_system7_0/FCLK_CLK0" TNM_NET = clk_fpga_0;
#TIMESPEC TS_clk_fpga_0 = PERIOD clk_fpga_0 100000 kHz;

