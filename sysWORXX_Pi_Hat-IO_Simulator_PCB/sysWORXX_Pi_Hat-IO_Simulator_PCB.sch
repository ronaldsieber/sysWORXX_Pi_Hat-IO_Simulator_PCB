EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "IO Simulator | sysWORXX Pi HAT"
Date "2025-09-13"
Rev "1.01"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L sysWORXX_Pi:sysWORXX_Pi_GPIO J1
U 1 1 676621CA
P 5550 3500
F 0 "J1" H 4600 4600 60  0000 C CNN
F 1 "sysWORXX_Pi_GPIO" H 5550 4600 60  0000 C CNN
F 2 "sysWORXX_Pi:Pin_Header_Straight_2x20" H 4500 4400 60  0001 C CNN
F 3 "" H 4500 4400 60  0000 C CNN
	1    5550 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R100
U 1 1 6724214B
P 8000 4850
F 0 "R100" V 7793 4850 50  0000 C CNN
F 1 "270R" V 7884 4850 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 7930 4850 50  0001 C CNN
F 3 "~" H 8000 4850 50  0001 C CNN
	1    8000 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R101
U 1 1 67241B70
P 8500 4850
F 0 "R101" V 8293 4850 50  0000 C CNN
F 1 "270R" V 8384 4850 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8430 4850 50  0001 C CNN
F 3 "~" H 8500 4850 50  0001 C CNN
	1    8500 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R102
U 1 1 6725393B
P 9000 4850
F 0 "R102" V 8793 4850 50  0000 C CNN
F 1 "270R" V 8884 4850 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8930 4850 50  0001 C CNN
F 3 "~" H 9000 4850 50  0001 C CNN
	1    9000 4850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW103
U 1 1 67255CEB
P 2500 1500
F 0 "SW103" H 2500 1785 50  0000 C CNN
F 1 "DI3" H 2500 1694 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 2500 1693 50  0001 C CNN
F 3 "~" H 2500 1700 50  0001 C CNN
	1    2500 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Network06 RN100
U 1 1 676DD41E
P 2100 5200
F 0 "RN100" H 1720 5154 50  0000 R CNN
F 1 "SIL 7-6 4,7K" H 1720 5245 50  0000 R CNN
F 2 "Resistors_THT:R_Array_SIP7" V 2475 5200 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2100 5200 50  0001 C CNN
	1    2100 5200
	1    0    0    1   
$EndComp
Wire Wire Line
	1000 1700 1000 2900
Wire Wire Line
	1000 2900 4300 2900
Wire Wire Line
	1500 4500 1900 4500
Wire Wire Line
	1900 4500 1900 5000
Wire Wire Line
	1000 2900 1000 4600
Wire Wire Line
	1000 4600 1800 4600
Wire Wire Line
	1800 4600 1800 5000
Wire Wire Line
	2500 4500 2100 4500
Wire Wire Line
	2100 4500 2100 5000
$Comp
L Device:LED D100
U 1 1 676F0626
P 8000 5350
F 0 "D100" V 8039 5232 50  0000 R CNN
F 1 "DO0" V 7948 5232 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm" H 8000 5350 50  0001 C CNN
F 3 "~" H 8000 5350 50  0001 C CNN
	1    8000 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D101
U 1 1 676F0ED3
P 8500 5350
F 0 "D101" V 8539 5232 50  0000 R CNN
F 1 "DO1" V 8448 5232 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm" H 8500 5350 50  0001 C CNN
F 3 "~" H 8500 5350 50  0001 C CNN
	1    8500 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D102
U 1 1 676F36AF
P 9000 5350
F 0 "D102" V 9039 5232 50  0000 R CNN
F 1 "DO2" V 8948 5232 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm" H 9000 5350 50  0001 C CNN
F 3 "~" H 9000 5350 50  0001 C CNN
	1    9000 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D103
U 1 1 676F4540
P 9500 5350
F 0 "D103" V 9539 5232 50  0000 R CNN
F 1 "DO3" V 9448 5232 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm" H 9500 5350 50  0001 C CNN
F 3 "~" H 9500 5350 50  0001 C CNN
	1    9500 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R103
U 1 1 676F68C2
P 9500 4850
F 0 "R103" V 9293 4850 50  0000 C CNN
F 1 "270R" V 9384 4850 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 9430 4850 50  0001 C CNN
F 3 "~" H 9500 4850 50  0001 C CNN
	1    9500 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1900 8000 4700
Wire Wire Line
	8500 3100 8500 4700
Wire Wire Line
	9000 1800 9000 4700
Wire Wire Line
	8000 5000 8000 5200
Wire Wire Line
	8500 5000 8500 5200
Wire Wire Line
	9000 5000 9000 5200
Wire Wire Line
	9500 5000 9500 5200
$Comp
L MCP3202:MCP3202 U1
U 1 1 676F5A5F
P 5150 6400
F 0 "U1" H 4850 6850 50  0000 C CNN
F 1 "MCP3202" H 5450 6850 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 5150 6300 50  0001 C CNN
F 3 "" H 5150 6600 50  0001 C CNN
	1    5150 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV100
U 1 1 676F6344
P 2600 6200
F 0 "RV100" H 2530 6246 50  0000 R CNN
F 1 "4k7" H 2530 6155 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Trimmer_ACP_CA9v_Horizontal_Px10.0mm_Py5.0mm" H 2600 6200 50  0001 C CNN
F 3 "~" H 2600 6200 50  0001 C CNN
	1    2600 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV101
U 1 1 676F9A30
P 3500 6600
F 0 "RV101" H 3430 6646 50  0000 R CNN
F 1 "4k7" H 3430 6555 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Trimmer_ACP_CA9v_Horizontal_Px10.0mm_Py5.0mm" H 3500 6600 50  0001 C CNN
F 3 "~" H 3500 6600 50  0001 C CNN
	1    3500 6600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x02 SW104
U 1 1 67705F95
P 3050 1500
F 0 "SW104" H 3150 1850 50  0000 R CNN
F 1 "DI3/DI4" H 3200 1750 50  0000 R CNN
F 2 "Buttons_Switches_THT:SW_DIP_x2_W7.62mm_Slide" H 3050 1500 50  0001 C CNN
F 3 "~" H 3050 1500 50  0001 C CNN
	1    3050 1500
	0    -1   1    0   
$EndComp
Wire Wire Line
	4300 3900 2950 3900
Wire Wire Line
	2950 3900 2950 1800
Wire Wire Line
	2200 5000 2200 4600
Wire Wire Line
	2200 4600 2950 4600
Wire Wire Line
	2950 4600 2950 3900
Wire Wire Line
	2300 5000 2300 4700
Wire Wire Line
	2300 4700 3050 4700
Wire Wire Line
	4300 2600 3500 2600
Wire Wire Line
	1000 1000 1000 1300
Wire Wire Line
	1500 1300 1500 1000
Connection ~ 1500 1000
Wire Wire Line
	1500 1000 1000 1000
Wire Wire Line
	2000 1300 2000 1000
Connection ~ 2000 1000
Wire Wire Line
	2000 1000 1500 1000
Wire Wire Line
	2500 1300 2500 1000
Connection ~ 2500 1000
Wire Wire Line
	2500 1000 2000 1000
Wire Wire Line
	2950 1200 2950 1000
Connection ~ 2950 1000
Wire Wire Line
	2950 1000 2500 1000
Wire Wire Line
	3050 1200 3050 1000
Connection ~ 3050 1000
Wire Wire Line
	3050 1000 2950 1000
Wire Wire Line
	4650 6200 2900 6200
Wire Wire Line
	3500 2600 3500 5400
Connection ~ 3500 5750
Wire Wire Line
	3500 5750 3500 6450
Wire Wire Line
	3500 7100 3500 6750
Wire Wire Line
	2600 6350 2600 7100
Connection ~ 3500 7100
Wire Wire Line
	4300 3500 3750 3500
Wire Wire Line
	3750 3500 3750 5000
Wire Wire Line
	6000 5000 6000 6250
Wire Wire Line
	6000 6250 5750 6250
Wire Wire Line
	4300 3600 3850 3600
Wire Wire Line
	3850 3600 3850 4900
Wire Wire Line
	3850 4900 5900 4900
Wire Wire Line
	3750 5000 6000 5000
Wire Wire Line
	5750 6150 5900 6150
Wire Wire Line
	5900 6150 5900 4900
Wire Wire Line
	6100 4800 6100 6550
Wire Wire Line
	6100 6550 5750 6550
Wire Wire Line
	6800 3700 7000 3700
Wire Wire Line
	7000 3700 7000 4800
Wire Wire Line
	7000 4800 6200 4800
Wire Wire Line
	6200 6650 5750 6650
Wire Wire Line
	9500 5500 9500 5700
Wire Wire Line
	9500 5700 9000 5700
Wire Wire Line
	8000 5500 8000 5700
Connection ~ 8000 5700
Wire Wire Line
	8000 5700 6700 5700
Wire Wire Line
	8500 5500 8500 5700
Connection ~ 8500 5700
Wire Wire Line
	8500 5700 8000 5700
Wire Wire Line
	9000 5500 9000 5700
Connection ~ 9000 5700
Wire Wire Line
	9000 5700 8500 5700
Wire Wire Line
	1800 5400 1800 7100
Wire Wire Line
	1800 7100 2600 7100
Wire Wire Line
	3500 2600 3500 1000
Wire Wire Line
	3500 1000 3050 1000
Wire Wire Line
	3650 6600 3800 6600
Wire Wire Line
	3950 4800 6100 4800
Wire Wire Line
	4300 3700 3950 3700
Wire Wire Line
	3950 3700 3950 4800
Wire Wire Line
	4300 4500 4200 4500
Wire Wire Line
	4200 4500 4200 5400
Connection ~ 4200 7100
Wire Wire Line
	4200 7100 3800 7100
Wire Wire Line
	4200 7100 5150 7100
Wire Wire Line
	5150 6900 5150 7100
Wire Wire Line
	5150 5900 5150 5750
Wire Wire Line
	3500 5750 5150 5750
$Comp
L Device:C C1
U 1 1 67995E1D
P 3850 5400
F 0 "C1" V 3700 5400 50  0000 C CNN
F 1 "1µ" V 4000 5400 50  0000 C CNN
F 2 "Capacitors_THT:C_Rect_L7.2mm_W2.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 7788 3200 50  0001 C CNN
F 3 "~" H 3850 5400 50  0001 C CNN
	1    3850 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 5400 4200 5400
Connection ~ 4200 5400
Wire Wire Line
	4200 5400 4200 7100
Wire Wire Line
	3700 5400 3500 5400
Connection ~ 3500 5400
Wire Wire Line
	3500 5400 3500 5750
Wire Wire Line
	4200 4500 4200 3000
Wire Wire Line
	4200 3000 4300 3000
Connection ~ 4200 4500
Wire Wire Line
	9500 3300 9500 4700
$Comp
L Switch:SW_Push SW102
U 1 1 67255799
P 2000 1500
F 0 "SW102" H 2000 1785 50  0000 C CNN
F 1 "DI2" H 2000 1694 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 2000 1693 50  0001 C CNN
F 3 "~" H 2000 1700 50  0001 C CNN
	1    2000 1500
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW101
U 1 1 67255228
P 1500 1500
F 0 "SW101" H 1500 1785 50  0000 C CNN
F 1 "DI1" H 1500 1694 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 1500 1693 50  0001 C CNN
F 3 "~" H 1500 1700 50  0001 C CNN
	1    1500 1500
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW100
U 1 1 67254623
P 1000 1500
F 0 "SW100" H 1000 1785 50  0000 C CNN
F 1 "DI0" H 1000 1694 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 1000 1693 50  0001 C CNN
F 3 "~" H 1000 1700 50  0001 C CNN
	1    1000 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 1700 1500 3200
Wire Wire Line
	2000 1700 2000 2200
Wire Wire Line
	2500 1700 2500 2100
Wire Wire Line
	4300 3200 1500 3200
Wire Wire Line
	1500 3200 1500 4500
Wire Wire Line
	2000 2200 7050 2200
Wire Wire Line
	7050 2200 7050 3400
Wire Wire Line
	7050 3400 6800 3400
Connection ~ 2000 2200
Wire Wire Line
	2000 2200 2000 5000
Connection ~ 1000 2900
Connection ~ 1500 3200
Connection ~ 2950 3900
Connection ~ 3500 2600
Wire Wire Line
	6800 3800 7150 3800
Wire Wire Line
	7150 3800 7150 2100
Wire Wire Line
	7150 2100 2500 2100
Connection ~ 2500 2100
Wire Wire Line
	2500 2100 2500 4500
Wire Wire Line
	3050 1800 3050 2000
Wire Wire Line
	6800 3900 7250 3900
Wire Wire Line
	7250 3900 7250 2000
Wire Wire Line
	7250 2000 3050 2000
Connection ~ 3050 2000
Wire Wire Line
	3050 2000 3050 4700
Wire Wire Line
	4300 3100 3950 3100
Wire Wire Line
	3950 3100 3950 1900
Wire Wire Line
	3950 1900 8000 1900
Wire Wire Line
	6800 3100 8500 3100
Wire Wire Line
	4300 3300 3850 3300
Wire Wire Line
	3850 3300 3850 1800
Wire Wire Line
	3850 1800 9000 1800
Text Notes 9600 5250 0    50   ~ 0
LED bl
Text Notes 8100 5250 0    50   ~ 0
LED rt
Text Notes 8600 5250 0    50   ~ 0
LED gn
Text Notes 9100 5250 0    50   ~ 0
LED ge
$Comp
L Device:C C3
U 1 1 68929E6B
P 3800 6850
F 0 "C3" V 3950 6850 50  0000 C CNN
F 1 "100n" V 3650 6850 50  0000 C CNN
F 2 "Capacitors_THT:C_Rect_L7.2mm_W2.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 7738 4650 50  0001 C CNN
F 3 "~" H 3800 6850 50  0001 C CNN
	1    3800 6850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 7100 6700 7100
Wire Wire Line
	6700 5700 6700 7100
Connection ~ 5150 7100
Wire Wire Line
	3800 7000 3800 7100
Connection ~ 3800 7100
Wire Wire Line
	3800 7100 3500 7100
Wire Wire Line
	3800 6700 3800 6600
Connection ~ 3800 6600
Wire Wire Line
	3800 6600 4650 6600
Wire Wire Line
	2600 6050 2600 5750
Wire Wire Line
	2600 5750 3500 5750
$Comp
L Device:C C2
U 1 1 68960E2A
P 2900 6600
F 0 "C2" V 3050 6600 50  0000 C CNN
F 1 "100n" V 2750 6600 50  0000 C CNN
F 2 "Capacitors_THT:C_Rect_L7.2mm_W2.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 6838 4400 50  0001 C CNN
F 3 "~" H 2900 6600 50  0001 C CNN
	1    2900 6600
	-1   0    0    1   
$EndComp
Connection ~ 2600 7100
Wire Wire Line
	2600 7100 2900 7100
Wire Wire Line
	2900 6450 2900 6200
Connection ~ 2900 6200
Wire Wire Line
	2900 6200 2750 6200
Wire Wire Line
	2900 6750 2900 7100
Connection ~ 2900 7100
Wire Wire Line
	2900 7100 3500 7100
$Comp
L Device:R R1
U 1 1 6893EA60
P 5550 5750
F 0 "R1" V 5343 5750 50  0000 C CNN
F 1 "10k" V 5434 5750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 5480 5750 50  0001 C CNN
F 3 "~" H 5550 5750 50  0001 C CNN
	1    5550 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 4800 6200 5750
Wire Wire Line
	5400 5750 5150 5750
Connection ~ 5150 5750
Wire Wire Line
	5700 5750 6200 5750
Connection ~ 6200 5750
Wire Wire Line
	6200 5750 6200 6650
Wire Wire Line
	6800 3300 9500 3300
$EndSCHEMATC
