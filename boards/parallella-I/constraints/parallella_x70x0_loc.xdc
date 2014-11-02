###############################################################
##  Location constraints for the Parallella-I board
##  3/12/14 F. Huettig
####
## This file defines pin locations & standards for the Parallella-I
##   and Zynq 7010 or 7020.  See the file parallella_z7020_loc.ucf
##    for pins added with the 7020.
## Timing constraints are defined elsewhere.
###############################################################

#  NOTE:  IOSTANDARDS for e-link and gpio have been removed
#    from these files.  IOSTANDARDS are to be set in the 
#    verilog instead.

#######################
# HDMI constraints
#######################

set_property LOC Y18 [get_ports {HDMI_D[8]}] ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[8]}]
set_property LOC W18 [get_ports {HDMI_D[9]}] ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[9]}]
set_property LOC V18 [get_ports {HDMI_D[10]}] ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[10]}]
set_property LOC V15 [get_ports {HDMI_D[11]}] ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[11]}]
set_property LOC R18 [get_ports {HDMI_D[12]}] ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[12]}]
set_property LOC P18 [get_ports {HDMI_D[13]}] ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[13]}]
set_property LOC Y19 [get_ports {HDMI_D[14]}] ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[14]}]
set_property LOC W19 [get_ports {HDMI_D[15]}] ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[15]}]
set_property LOC W15 [get_ports {HDMI_D[16]}] ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[16]}]
set_property LOC T19 [get_ports {HDMI_D[17]}] ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[17]}]
set_property LOC R19 [get_ports {HDMI_D[18]}] ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[18]}]
set_property LOC P19 [get_ports {HDMI_D[19]}] ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[19]}]
set_property LOC W20 [get_ports {HDMI_D[20]}] ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[20]}]
set_property LOC V20 [get_ports {HDMI_D[21]}] ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[21]}]
set_property LOC U20 [get_ports {HDMI_D[22]}] ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[22]}]
set_property LOC T20 [get_ports {HDMI_D[23]}] ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_D[23]}]

set_property LOC R17 [get_ports {HDMI_CLK}]     ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_CLK}]
set_property LOC V17 [get_ports {HDMI_VSYNC}]   ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_VSYNC}]
set_property LOC T17 [get_ports {HDMI_HSYNC}]   ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_HSYNC}]
set_property LOC Y17 [get_ports {HDMI_DE}]      ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_DE}]
set_property LOC Y16 [get_ports {HDMI_SPDIF}]   ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_SPDIF}]
set_property LOC P20 [get_ports {HDMI_INT}]     ; set_property IOSTANDARD LVCMOS25 [get_ports {HDMI_INT}]

#####################
# I2C
#####################
set_property LOC N18 [get_ports {PS_I2C_SCL}]     ; set_property IOSTANDARD LVCMOS25 [get_ports {PS_I2C_SCL}]
set_property LOC N17 [get_ports {PS_I2C_SDA}]     ; set_property IOSTANDARD LVCMOS25 [get_ports {PS_I2C_SDA}]

#####################
# MISC
#####################
set_property LOC R16 [get_ports {TURBO_MODE}]     ; set_property IOSTANDARD LVCMOS25 [get_ports {TURBO_MODE}]
set_property LOC N20 [get_ports {PROG_IO}]        ; set_property IOSTANDARD LVCMOS25 [get_ports {PROG_IO}]

#####################
# Epiphany Interface
#####################
set_property LOC H16 [get_ports {RXI_CCLK_P}]
set_property LOC H17 [get_ports {RXI_CCLK_N}]
set_property LOC G14 [get_ports {DSP_RESET_N}]  ; set_property IOSTANDARD LVCMOS25 [get_ports {DSP_RESET_N}] ;  set_property DRIVE 4 [get_ports {DSP_RESET_N}]
# set_property LOC J15 [get_ports {DSP_FLAG}]  ; set_property IOSTANDARD LVCMOS25 [get_ports {DSP_FLAG}] ;

set_property LOC F16 [get_ports {RXI_LCLK_P}]
set_property LOC F17 [get_ports {RXI_LCLK_N}]
set_property LOC B19 [get_ports {RXI_DATA_P[0]}]
set_property LOC A20 [get_ports {RXI_DATA_N[0]}]
set_property LOC C20 [get_ports {RXI_DATA_P[1]}]
set_property LOC B20 [get_ports {RXI_DATA_N[1]}]
set_property LOC D19 [get_ports {RXI_DATA_P[2]}]
set_property LOC D20 [get_ports {RXI_DATA_N[2]}]
set_property LOC E18 [get_ports {RXI_DATA_P[3]}]
set_property LOC E19 [get_ports {RXI_DATA_N[3]}]
set_property LOC E17 [get_ports {RXI_DATA_P[4]}]
set_property LOC D18 [get_ports {RXI_DATA_N[4]}]
set_property LOC F19 [get_ports {RXI_DATA_P[5]}]
set_property LOC F20 [get_ports {RXI_DATA_N[5]}]
set_property LOC G17 [get_ports {RXI_DATA_P[6]}]
set_property LOC G18 [get_ports {RXI_DATA_N[6]}]
set_property LOC G19 [get_ports {RXI_DATA_P[7]}]
set_property LOC G20 [get_ports {RXI_DATA_N[7]}]
set_property LOC H15 [get_ports {RXI_FRAME_P}]
set_property LOC G15 [get_ports {RXI_FRAME_N}]
set_property LOC J15 [get_ports {RXO_RD_WAIT}]  ; set_property IOSTANDARD LVCMOS25 [get_ports {RXO_RD_WAIT}]
set_property LOC J18 [get_ports {RXO_WR_WAIT_P}]
set_property LOC H18 [get_ports {RXO_WR_WAIT_N}]

set_property LOC K17 [get_ports {TXO_LCLK_P}]
set_property LOC K18 [get_ports {TXO_LCLK_N}]
set_property LOC K19 [get_ports {TXO_DATA_P[0]}]
set_property LOC J19 [get_ports {TXO_DATA_N[0]}]
set_property LOC L14 [get_ports {TXO_DATA_P[1]}]
set_property LOC L15 [get_ports {TXO_DATA_N[1]}]
set_property LOC L16 [get_ports {TXO_DATA_P[2]}]
set_property LOC L17 [get_ports {TXO_DATA_N[2]}]
set_property LOC M14 [get_ports {TXO_DATA_P[3]}]
set_property LOC M15 [get_ports {TXO_DATA_N[3]}]
set_property LOC L19 [get_ports {TXO_DATA_P[4]}]
set_property LOC L20 [get_ports {TXO_DATA_N[4]}]
set_property LOC M19 [get_ports {TXO_DATA_P[5]}]
set_property LOC M20 [get_ports {TXO_DATA_N[5]}]
set_property LOC M17 [get_ports {TXO_DATA_P[6]}]
set_property LOC M18 [get_ports {TXO_DATA_N[6]}]
set_property LOC N15 [get_ports {TXO_DATA_P[7]}]
set_property LOC N16 [get_ports {TXO_DATA_N[7]}]
set_property LOC J20 [get_ports {TXO_FRAME_P}]
set_property LOC H20 [get_ports {TXO_FRAME_N}]
set_property LOC K14 [get_ports {TXI_RD_WAIT_P}]
set_property LOC J14 [get_ports {TXI_RD_WAIT_N}]
set_property LOC K16 [get_ports {TXI_WR_WAIT_P}]
set_property LOC J16 [get_ports {TXI_WR_WAIT_N}]


#######################
# GPIO
#  First 12 pairs are present on all parts, next 12 on 7020 only
#######################
set_property LOC T16 [get_ports {GPIO_P[0]}]
set_property LOC U17 [get_ports {GPIO_N[0]}]
set_property LOC V16 [get_ports {GPIO_P[1]}]
set_property LOC W16 [get_ports {GPIO_N[1]}]
set_property LOC P15 [get_ports {GPIO_P[2]}]
set_property LOC P16 [get_ports {GPIO_N[2]}]
set_property LOC U18 [get_ports {GPIO_P[3]}]
set_property LOC U19 [get_ports {GPIO_N[3]}]
set_property LOC P14 [get_ports {GPIO_P[4]}]
set_property LOC R14 [get_ports {GPIO_N[4]}]
set_property LOC T14 [get_ports {GPIO_P[5]}]
set_property LOC T15 [get_ports {GPIO_N[5]}]
set_property LOC U14 [get_ports {GPIO_P[6]}]
set_property LOC U15 [get_ports {GPIO_N[6]}]
set_property LOC W14 [get_ports {GPIO_P[7]}]
set_property LOC Y14 [get_ports {GPIO_N[7]}]
set_property LOC U13 [get_ports {GPIO_P[8]}]
set_property LOC V13 [get_ports {GPIO_N[8]}]
set_property LOC V12 [get_ports {GPIO_P[9]}]
set_property LOC W13 [get_ports {GPIO_N[9]}]
set_property LOC T12 [get_ports {GPIO_P[10]}]
set_property LOC U12 [get_ports {GPIO_N[10]}]
set_property LOC T11 [get_ports {GPIO_P[11]}]
set_property LOC T10 [get_ports {GPIO_N[11]}]

