
NET clk LOC = V10 | TNM_NET = sys_clk_pin | IOSTANDARD = "LVCMOS33";
TIMESPEC TS_sys_clk_pin = PERIOD sys_clk_pin 50000 kHz;
##

##  当不屏蔽  rst_n时，实验现象不出现，按下按键不可使LED灯亮
##
##NET rst_n                 LOC = N4 | IOSTANDARD = "LVCMOS15";       ## reset pushbutton

##################################################################################
#LED Pin define
##################################################################################
NET led<0>                LOC = V5 | IOSTANDARD = "LVCMOS33";       ## LED1
NET led<1>                LOC = R3 | IOSTANDARD = "LVCMOS33";       ## LED2
NET led<2>                LOC = T3 | IOSTANDARD = "LVCMOS33";       ## LED3
NET led<3>                LOC = T4 | IOSTANDARD = "LVCMOS33";       ## LED4
##################################################################################
#KEY Pin define
##################################################################################
NET key<0>                LOC = P7 | IOSTANDARD = "LVCMOS33";       ## KEY1
NET key<1>                LOC = R5 | IOSTANDARD = "LVCMOS33";       ## KEY2
NET key<2>                LOC = T5 | IOSTANDARD = "LVCMOS33";       ## KEY3
NET key<3>                LOC = U5 | IOSTANDARD = "LVCMOS33";       ## KEY4

##################################################################################