EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ftdi
LIBS:aki-shelf
LIBS:switches
LIBS:aki-shelf-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +3.3V #PWR01
U 1 1 58DEEF95
P 2000 2500
F 0 "#PWR01" H 2000 2350 50  0001 C CNN
F 1 "+3.3V" H 2000 2640 50  0000 C CNN
F 2 "" H 2000 2500 50  0000 C CNN
F 3 "" H 2000 2500 50  0000 C CNN
	1    2000 2500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R3
U 1 1 58DEEFB3
P 2000 2800
F 0 "R3" H 2030 2820 50  0000 L CNN
F 1 "4.7k" H 2030 2760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2000 2800 50  0001 C CNN
F 3 "" H 2000 2800 50  0000 C CNN
	1    2000 2800
	1    0    0    -1  
$EndComp
Text GLabel 2000 3100 3    40   Input ~ 0
ENABLE
$Comp
L GND #PWR02
U 1 1 58DEF0FA
P 2000 6100
F 0 "#PWR02" H 2000 5850 50  0001 C CNN
F 1 "GND" H 2000 5950 50  0000 C CNN
F 2 "" H 2000 6100 50  0000 C CNN
F 3 "" H 2000 6100 50  0000 C CNN
	1    2000 6100
	1    0    0    -1  
$EndComp
Text GLabel 5000 5600 0    40   Input ~ 0
TENKEY_R1
Text GLabel 5000 5200 0    40   Input ~ 0
TENKEY_R2
Text GLabel 5000 4800 0    40   Input ~ 0
TENKEY_R3
Text GLabel 5000 4400 0    40   Input ~ 0
TENKEY_R4
Text GLabel 5100 5700 3    40   Input ~ 0
TENKEY_C1
Text GLabel 5500 5700 3    40   Input ~ 0
TENKEY_C2
Text GLabel 5900 5700 3    40   Input ~ 0
TENKEY_C3
Text GLabel 3900 4700 2    40   Input ~ 0
I2C_SDA
Text GLabel 3900 4800 2    40   Input ~ 0
I2C_SCL
Text GLabel 3900 2700 2    40   Input ~ 0
UART_TX
Text GLabel 3900 2900 2    40   Input ~ 0
UART_RX
Text GLabel 3900 5500 2    40   Input ~ 0
TENKEY_R1
Text GLabel 3900 5600 2    40   Input ~ 0
TENKEY_R2
Text GLabel 3900 5700 2    40   Input ~ 0
TENKEY_R3
Text GLabel 3900 5800 2    40   Input ~ 0
TENKEY_R4
Text GLabel 3900 5100 2    40   Input ~ 0
TENKEY_C1
Text GLabel 3900 5200 2    40   Input ~ 0
TENKEY_C2
Text GLabel 3900 5300 2    40   Input ~ 0
TENKEY_C3
Text GLabel 3900 4900 2    40   Input ~ 0
SPEAKER
$Comp
L GND #PWR03
U 1 1 58DF1FF5
P 5900 3700
F 0 "#PWR03" H 5900 3450 50  0001 C CNN
F 1 "GND" H 5900 3550 50  0000 C CNN
F 2 "" H 5900 3700 50  0000 C CNN
F 3 "" H 5900 3700 50  0000 C CNN
	1    5900 3700
	1    0    0    -1  
$EndComp
Text GLabel 5100 3300 0    40   Input ~ 0
SPEAKER
NoConn ~ 3900 3600
NoConn ~ 3900 3700
NoConn ~ 3900 3500
NoConn ~ 3900 3400
NoConn ~ 3900 3300
NoConn ~ 3900 3200
Text GLabel 3900 4300 2    40   Input ~ 0
LED_R
Text GLabel 3900 2600 2    40   Input ~ 0
IO0
Text GLabel 7450 1700 1    40   Input ~ 0
ENABLE
$Comp
L GND #PWR05
U 1 1 58F186E4
P 7650 2100
F 0 "#PWR05" H 7650 1850 50  0001 C CNN
F 1 "GND" H 7650 1950 50  0000 C CNN
F 2 "" H 7650 2100 50  0000 C CNN
F 3 "" H 7650 2100 50  0000 C CNN
	1    7650 2100
	1    0    0    -1  
$EndComp
Text GLabel 7850 1700 1    40   Input ~ 0
IO0
$Comp
L GND #PWR06
U 1 1 58F1FACC
P 8050 2100
F 0 "#PWR06" H 8050 1850 50  0001 C CNN
F 1 "GND" H 8050 1950 50  0000 C CNN
F 2 "" H 8050 2100 50  0000 C CNN
F 3 "" H 8050 2100 50  0000 C CNN
	1    8050 2100
	1    0    0    -1  
$EndComp
$Comp
L R_Small R5
U 1 1 5A8A1FA9
P 6400 4400
F 0 "R5" H 6430 4420 50  0000 L CNN
F 1 "4.7k" H 6430 4360 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6400 4400 50  0001 C CNN
F 3 "" H 6400 4400 50  0001 C CNN
	1    6400 4400
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R6
U 1 1 5A8A21EC
P 6400 4800
F 0 "R6" H 6430 4820 50  0000 L CNN
F 1 "4.7k" H 6430 4760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6400 4800 50  0001 C CNN
F 3 "" H 6400 4800 50  0001 C CNN
	1    6400 4800
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R10
U 1 1 5A8A233E
P 6400 5200
F 0 "R10" H 6430 5220 50  0000 L CNN
F 1 "4.7k" H 6430 5160 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6400 5200 50  0001 C CNN
F 3 "" H 6400 5200 50  0001 C CNN
	1    6400 5200
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R11
U 1 1 5A8A24E5
P 6400 5600
F 0 "R11" H 6430 5620 50  0000 L CNN
F 1 "4.7k" H 6430 5560 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6400 5600 50  0001 C CNN
F 3 "" H 6400 5600 50  0001 C CNN
	1    6400 5600
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR07
U 1 1 5A8A2E88
P 6600 4300
F 0 "#PWR07" H 6600 4150 50  0001 C CNN
F 1 "+3.3V" H 6600 4440 50  0000 C CNN
F 2 "" H 6600 4300 50  0000 C CNN
F 3 "" H 6600 4300 50  0000 C CNN
	1    6600 4300
	1    0    0    -1  
$EndComp
Text GLabel 2500 1900 2    40   Input ~ 0
UART_TX
Text GLabel 2500 1800 2    40   Input ~ 0
UART_RX
$Comp
L GND #PWR08
U 1 1 5A8B4A43
P 2400 2100
F 0 "#PWR08" H 2400 1850 50  0001 C CNN
F 1 "GND" H 2400 1950 50  0000 C CNN
F 2 "" H 2400 2100 50  0000 C CNN
F 3 "" H 2400 2100 50  0000 C CNN
	1    2400 2100
	1    0    0    -1  
$EndComp
$Comp
L Battery BT1
U 1 1 5A8C1B95
P 5700 1800
F 0 "BT1" H 5800 1900 50  0000 L CNN
F 1 "JST_PH_S2B-PH-K" H 5800 1800 50  0000 L CNN
F 2 "Connectors_JST:JST_PH_S2B-PH-K_02x2.00mm_Angled" V 5700 1860 50  0001 C CNN
F 3 "" V 5700 1860 50  0001 C CNN
	1    5700 1800
	1    0    0    -1  
$EndComp
$Comp
L AQM0802 U2
U 1 1 5A8C4AD2
P 7700 3200
F 0 "U2" H 7700 3850 60  0000 C CNN
F 1 "AQM0802" H 7700 3750 60  0000 C CNN
F 2 "aki-shelf:AQM0802A-RN-GBW" H 7700 3750 60  0001 C CNN
F 3 "" H 7700 3750 60  0000 C CNN
	1    7700 3200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 5A8C6B9D
P 7400 2700
F 0 "#PWR09" H 7400 2550 50  0001 C CNN
F 1 "+3.3V" H 7400 2840 50  0000 C CNN
F 2 "" H 7400 2700 50  0000 C CNN
F 3 "" H 7400 2700 50  0000 C CNN
	1    7400 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5A8C6CF1
P 7400 3700
F 0 "#PWR010" H 7400 3450 50  0001 C CNN
F 1 "GND" H 7400 3550 50  0000 C CNN
F 2 "" H 7400 3700 50  0000 C CNN
F 3 "" H 7400 3700 50  0000 C CNN
	1    7400 3700
	1    0    0    -1  
$EndComp
Text GLabel 3900 3000 2    40   Input ~ 0
LCD_RESET
Text GLabel 7300 3600 0    40   Input ~ 0
LCD_RESET
Text GLabel 7300 3500 0    40   Input ~ 0
I2C_SCL
Text GLabel 7300 3400 0    40   Input ~ 0
I2C_SDA
$Comp
L C_Small C5
U 1 1 5A8C7DC6
P 7200 3000
F 0 "C5" H 7210 3070 50  0000 L CNN
F 1 "1u" H 7210 2920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7200 3000 50  0001 C CNN
F 3 "" H 7200 3000 50  0001 C CNN
	1    7200 3000
	0    1    1    0   
$EndComp
$Comp
L C_Small C6
U 1 1 5A8C8704
P 7200 3200
F 0 "C6" H 7210 3270 50  0000 L CNN
F 1 "1u" H 7210 3120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7200 3200 50  0001 C CNN
F 3 "" H 7200 3200 50  0001 C CNN
	1    7200 3200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR011
U 1 1 5A8CB348
P 5700 2100
F 0 "#PWR011" H 5700 1850 50  0001 C CNN
F 1 "GND" H 5700 1950 50  0000 C CNN
F 2 "" H 5700 2100 50  0000 C CNN
F 3 "" H 5700 2100 50  0000 C CNN
	1    5700 2100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR012
U 1 1 5A8D27A1
P 7300 4300
F 0 "#PWR012" H 7300 4150 50  0001 C CNN
F 1 "+3.3V" H 7300 4440 50  0000 C CNN
F 2 "" H 7300 4300 50  0000 C CNN
F 3 "" H 7300 4300 50  0000 C CNN
	1    7300 4300
	1    0    0    -1  
$EndComp
$Comp
L R_Small R7
U 1 1 5A8D2815
P 7100 5000
F 0 "R7" H 7130 5020 50  0000 L CNN
F 1 "200" H 7130 4960 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 7100 5000 50  0001 C CNN
F 3 "" H 7100 5000 50  0000 C CNN
	1    7100 5000
	1    0    0    -1  
$EndComp
$Comp
L R_Small R8
U 1 1 5A8D2959
P 7300 5000
F 0 "R8" H 7330 5020 50  0000 L CNN
F 1 "100" H 7330 4960 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 7300 5000 50  0001 C CNN
F 3 "" H 7300 5000 50  0000 C CNN
	1    7300 5000
	1    0    0    -1  
$EndComp
$Comp
L R_Small R9
U 1 1 5A8D29DC
P 7500 5000
F 0 "R9" H 7530 5020 50  0000 L CNN
F 1 "100" H 7530 4960 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 7500 5000 50  0001 C CNN
F 3 "" H 7500 5000 50  0000 C CNN
	1    7500 5000
	1    0    0    -1  
$EndComp
Text GLabel 3900 4400 2    40   Input ~ 0
LED_G
Text GLabel 3900 4500 2    40   Input ~ 0
LED_B
Text GLabel 7100 5200 3    40   Input ~ 0
LED_R
Text GLabel 7300 5200 3    40   Input ~ 0
LED_G
Text GLabel 7500 5200 3    40   Input ~ 0
LED_B
$Comp
L R_Small R1
U 1 1 5A8D8861
P 6550 1600
F 0 "R1" H 6580 1620 50  0000 L CNN
F 1 "4.7k" H 6580 1560 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6550 1600 50  0001 C CNN
F 3 "" H 6550 1600 50  0001 C CNN
	1    6550 1600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 5A8D88EB
P 6550 2000
F 0 "R2" H 6580 2020 50  0000 L CNN
F 1 "4.7k" H 6580 1960 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6550 2000 50  0001 C CNN
F 3 "" H 6550 2000 50  0001 C CNN
	1    6550 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5A8D8D69
P 6550 2100
F 0 "#PWR013" H 6550 1850 50  0001 C CNN
F 1 "GND" H 6550 1950 50  0000 C CNN
F 2 "" H 6550 2100 50  0000 C CNN
F 3 "" H 6550 2100 50  0000 C CNN
	1    6550 2100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 5A8D8E3E
P 6850 2000
F 0 "C4" H 6860 2070 50  0000 L CNN
F 1 "0.1u" H 6860 1920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6850 2000 50  0001 C CNN
F 3 "" H 6850 2000 50  0001 C CNN
	1    6850 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5A8D8F7F
P 6850 2100
F 0 "#PWR014" H 6850 1850 50  0001 C CNN
F 1 "GND" H 6850 1950 50  0000 C CNN
F 2 "" H 6850 2100 50  0000 C CNN
F 3 "" H 6850 2100 50  0000 C CNN
	1    6850 2100
	1    0    0    -1  
$EndComp
Text GLabel 6950 1800 2    40   Input ~ 0
BAT_VOL
$Comp
L +3.3V #PWR015
U 1 1 58F066AD
P 4800 1500
F 0 "#PWR015" H 4800 1350 50  0001 C CNN
F 1 "+3.3V" H 4800 1640 50  0000 C CNN
F 2 "" H 4800 1500 50  0000 C CNN
F 3 "" H 4800 1500 50  0000 C CNN
	1    4800 1500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR016
U 1 1 58F059EA
P 3400 1500
F 0 "#PWR016" H 3400 1350 50  0001 C CNN
F 1 "+5V" H 3400 1640 50  0000 C CNN
F 2 "" H 3400 1500 50  0000 C CNN
F 3 "" H 3400 1500 50  0000 C CNN
	1    3400 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 58F056AF
P 4800 2100
F 0 "#PWR017" H 4800 1850 50  0001 C CNN
F 1 "GND" H 4800 1950 50  0000 C CNN
F 2 "" H 4800 2100 50  0000 C CNN
F 3 "" H 4800 2100 50  0000 C CNN
	1    4800 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 58F05638
P 4600 2100
F 0 "#PWR018" H 4600 1850 50  0001 C CNN
F 1 "GND" H 4600 1950 50  0000 C CNN
F 2 "" H 4600 2100 50  0000 C CNN
F 3 "" H 4600 2100 50  0000 C CNN
	1    4600 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 58F04FDA
P 3400 2100
F 0 "#PWR019" H 3400 1850 50  0001 C CNN
F 1 "GND" H 3400 1950 50  0000 C CNN
F 2 "" H 3400 2100 50  0000 C CNN
F 3 "" H 3400 2100 50  0000 C CNN
	1    3400 2100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 58F04B41
P 4800 1900
F 0 "C3" H 4810 1970 50  0000 L CNN
F 1 "47u" H 4810 1820 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4800 1900 50  0001 C CNN
F 3 "" H 4800 1900 50  0000 C CNN
	1    4800 1900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 58F04AA0
P 4600 1900
F 0 "C2" H 4610 1970 50  0000 L CNN
F 1 "0.1u" H 4610 1820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4600 1900 50  0001 C CNN
F 3 "" H 4600 1900 50  0000 C CNN
	1    4600 1900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 58F04914
P 3400 1900
F 0 "C1" H 3410 1970 50  0000 L CNN
F 1 "0.1u" H 3410 1820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3400 1900 50  0001 C CNN
F 3 "" H 3400 1900 50  0000 C CNN
	1    3400 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 58F03AB4
P 4400 2100
F 0 "#PWR020" H 4400 1850 50  0001 C CNN
F 1 "GND" H 4400 1950 50  0000 C CNN
F 2 "" H 4400 2100 50  0000 C CNN
F 3 "" H 4400 2100 50  0000 C CNN
	1    4400 2100
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_45deg SW1
U 1 1 5A89A5D3
P 7550 1900
F 0 "SW1" H 7670 1940 50  0000 L CNN
F 1 "RESET" H 7500 1750 50  0000 C CNN
F 2 "aki-shelf:SKRPACE010" H 7550 1900 50  0001 C CNN
F 3 "" H 7550 1900 50  0001 C CNN
	1    7550 1900
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_45deg SW2
U 1 1 5A89A81F
P 7950 1900
F 0 "SW2" H 8070 1940 50  0000 L CNN
F 1 "UPLOAD" H 7900 1750 50  0000 C CNN
F 2 "aki-shelf:SKRPACE010" H 7950 1900 50  0001 C CNN
F 3 "" H 7950 1900 50  0001 C CNN
	1    7950 1900
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_45deg SW3
U 1 1 5A89AFF4
P 5300 4200
F 0 "SW3" H 5420 4240 50  0000 L CNN
F 1 "4x1" H 5250 4050 50  0000 C CNN
F 2 "aki-shelf:SKRPACE010" H 5300 4200 50  0001 C CNN
F 3 "" H 5300 4200 50  0001 C CNN
	1    5300 4200
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_45deg SW6
U 1 1 5A89B459
P 5300 4600
F 0 "SW6" H 5420 4640 50  0000 L CNN
F 1 "3x1" H 5250 4450 50  0000 C CNN
F 2 "aki-shelf:SKRPACE010" H 5300 4600 50  0001 C CNN
F 3 "" H 5300 4600 50  0001 C CNN
	1    5300 4600
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_45deg SW7
U 1 1 5A89B52F
P 5700 4600
F 0 "SW7" H 5820 4640 50  0000 L CNN
F 1 "3x2" H 5650 4450 50  0000 C CNN
F 2 "aki-shelf:SKRPACE010" H 5700 4600 50  0001 C CNN
F 3 "" H 5700 4600 50  0001 C CNN
	1    5700 4600
	1    0    0    -1  
$EndComp
$Comp
L Speaker LS1
U 1 1 5A89B8B8
P 6200 2900
F 0 "LS1" H 6200 3000 50  0000 R CNN
F 1 "UGCT7525AN4" H 6450 3100 50  0000 R CNN
F 2 "aki-shelf:UGCT7525AN4" H 6200 2700 50  0001 C CNN
F 3 "" H 6190 2850 50  0001 C CNN
	1    6200 2900
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_45deg SW4
U 1 1 5A8A9C2C
P 5700 4200
F 0 "SW4" H 5820 4240 50  0000 L CNN
F 1 "4x2" H 5650 4050 50  0000 C CNN
F 2 "aki-shelf:SKRPACE010" H 5700 4200 50  0001 C CNN
F 3 "" H 5700 4200 50  0001 C CNN
	1    5700 4200
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_45deg SW5
U 1 1 5A8A9D20
P 6100 4200
F 0 "SW5" H 6220 4240 50  0000 L CNN
F 1 "4x3" H 6050 4050 50  0000 C CNN
F 2 "aki-shelf:SKRPACE010" H 6100 4200 50  0001 C CNN
F 3 "" H 6100 4200 50  0001 C CNN
	1    6100 4200
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_45deg SW8
U 1 1 5A8A9DE1
P 6100 4600
F 0 "SW8" H 6220 4640 50  0000 L CNN
F 1 "3x3" H 6050 4450 50  0000 C CNN
F 2 "aki-shelf:SKRPACE010" H 6100 4600 50  0001 C CNN
F 3 "" H 6100 4600 50  0001 C CNN
	1    6100 4600
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_45deg SW11
U 1 1 5A8A9EA7
P 6100 5000
F 0 "SW11" H 6220 5040 50  0000 L CNN
F 1 "2x3" H 6050 4850 50  0000 C CNN
F 2 "aki-shelf:SKRPACE010" H 6100 5000 50  0001 C CNN
F 3 "" H 6100 5000 50  0001 C CNN
	1    6100 5000
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_45deg SW14
U 1 1 5A8A9FB8
P 6100 5400
F 0 "SW14" H 6220 5440 50  0000 L CNN
F 1 "1x3" H 6050 5250 50  0000 C CNN
F 2 "aki-shelf:SKRPACE010" H 6100 5400 50  0001 C CNN
F 3 "" H 6100 5400 50  0001 C CNN
	1    6100 5400
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_45deg SW13
U 1 1 5A8AAA29
P 5700 5400
F 0 "SW13" H 5820 5440 50  0000 L CNN
F 1 "1x2" H 5650 5250 50  0000 C CNN
F 2 "aki-shelf:SKRPACE010" H 5700 5400 50  0001 C CNN
F 3 "" H 5700 5400 50  0001 C CNN
	1    5700 5400
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_45deg SW12
U 1 1 5A8AAAFE
P 5300 5400
F 0 "SW12" H 5420 5440 50  0000 L CNN
F 1 "1x1" H 5250 5250 50  0000 C CNN
F 2 "aki-shelf:SKRPACE010" H 5300 5400 50  0001 C CNN
F 3 "" H 5300 5400 50  0001 C CNN
	1    5300 5400
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_45deg SW9
U 1 1 5A8AABD8
P 5300 5000
F 0 "SW9" H 5420 5040 50  0000 L CNN
F 1 "2x1" H 5250 4850 50  0000 C CNN
F 2 "aki-shelf:SKRPACE010" H 5300 5000 50  0001 C CNN
F 3 "" H 5300 5000 50  0001 C CNN
	1    5300 5000
	1    0    0    -1  
$EndComp
$Comp
L SW_Push_45deg SW10
U 1 1 5A8AACDD
P 5700 5000
F 0 "SW10" H 5820 5040 50  0000 L CNN
F 1 "2x2" H 5650 4850 50  0000 C CNN
F 2 "aki-shelf:SKRPACE010" H 5700 5000 50  0001 C CNN
F 3 "" H 5700 5000 50  0001 C CNN
	1    5700 5000
	1    0    0    -1  
$EndComp
$Comp
L NJM2884 U1
U 1 1 5A8A9A23
P 4000 1600
F 0 "U1" H 4000 1800 60  0000 C CNN
F 1 "NJM2884" H 4000 1700 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-89-5_Housing" H 4000 1700 60  0001 C CNN
F 3 "" H 4000 1700 60  0000 C CNN
	1    4000 1600
	1    0    0    -1  
$EndComp
$Comp
L ESP-WROOM-32 U3
U 1 1 5A8AD7EC
P 3000 4000
F 0 "U3" H 3000 5550 60  0000 C CNN
F 1 "ESP-WROOM-32" H 3000 5400 60  0000 C CNN
F 2 "aki-shelf:ESP-WROOM-32" H 3000 5500 60  0001 C CNN
F 3 "" H 2550 5100 60  0001 C CNN
	1    3000 4000
	1    0    0    -1  
$EndComp
NoConn ~ 3900 2800
NoConn ~ 3900 3100
NoConn ~ 3900 3800
NoConn ~ 3900 3900
NoConn ~ 3900 4000
NoConn ~ 3900 4100
NoConn ~ 3900 4200
Text GLabel 3900 6000 2    40   Input ~ 0
BAT_VOL
NoConn ~ 3900 5900
$Comp
L PWR_FLAG #FLG021
U 1 1 5A8AC441
P 3100 1600
F 0 "#FLG021" H 3100 1675 50  0001 C CNN
F 1 "PWR_FLAG" H 3100 1750 50  0000 C CNN
F 2 "" H 3100 1600 50  0001 C CNN
F 3 "" H 3100 1600 50  0001 C CNN
	1    3100 1600
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR022
U 1 1 5A8AC4CB
P 3100 1500
F 0 "#PWR022" H 3100 1350 50  0001 C CNN
F 1 "+5V" H 3100 1640 50  0000 C CNN
F 2 "" H 3100 1500 50  0000 C CNN
F 3 "" H 3100 1500 50  0000 C CNN
	1    3100 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 5A8AC606
P 3100 2100
F 0 "#PWR023" H 3100 1850 50  0001 C CNN
F 1 "GND" H 3100 1950 50  0000 C CNN
F 2 "" H 3100 2100 50  0000 C CNN
F 3 "" H 3100 2100 50  0000 C CNN
	1    3100 2100
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG024
U 1 1 5A8AC689
P 3100 2000
F 0 "#FLG024" H 3100 2075 50  0001 C CNN
F 1 "PWR_FLAG" H 3100 2150 50  0000 C CNN
F 2 "" H 3100 2000 50  0001 C CNN
F 3 "" H 3100 2000 50  0001 C CNN
	1    3100 2000
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR025
U 1 1 5A8B177B
P 5700 1500
F 0 "#PWR025" H 5700 1350 50  0001 C CNN
F 1 "+BATT" H 5700 1640 50  0000 C CNN
F 2 "" H 5700 1500 50  0001 C CNN
F 3 "" H 5700 1500 50  0001 C CNN
	1    5700 1500
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR026
U 1 1 5A8B1853
P 6550 1500
F 0 "#PWR026" H 6550 1350 50  0001 C CNN
F 1 "+BATT" H 6550 1640 50  0000 C CNN
F 2 "" H 6550 1500 50  0001 C CNN
F 3 "" H 6550 1500 50  0001 C CNN
	1    6550 1500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR027
U 1 1 5A8B1ED8
P 5200 1500
F 0 "#PWR027" H 5200 1350 50  0001 C CNN
F 1 "+5V" H 5200 1640 50  0000 C CNN
F 2 "" H 5200 1500 50  0000 C CNN
F 3 "" H 5200 1500 50  0000 C CNN
	1    5200 1500
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR028
U 1 1 5A8B1F58
P 5400 1500
F 0 "#PWR028" H 5400 1350 50  0001 C CNN
F 1 "+BATT" H 5400 1640 50  0000 C CNN
F 2 "" H 5400 1500 50  0001 C CNN
F 3 "" H 5400 1500 50  0001 C CNN
	1    5400 1500
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 J1
U 1 1 5A8E4B4D
P 2100 1800
F 0 "J1" H 2100 2000 50  0000 C CNN
F 1 "UART" H 2100 1600 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 2100 1800 50  0001 C CNN
F 3 "" H 2100 1800 50  0001 C CNN
	1    2100 1800
	-1   0    0    -1  
$EndComp
$Comp
L OSTB0603C1C-A D1
U 1 1 5AA242E4
P 7300 4600
F 0 "D1" H 7300 4970 50  0000 C CNN
F 1 "OSTB0603C1C-A" H 7300 4250 50  0000 C CNN
F 2 "aki-shelf:OSTB0603C1C-A" H 7300 4550 50  0001 C CNN
F 3 "" H 7300 4550 50  0001 C CNN
	1    7300 4600
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR04
U 1 1 58DF22B5
P 5900 2700
F 0 "#PWR04" H 5900 2550 50  0001 C CNN
F 1 "+3.3V" H 5900 2840 50  0000 C CNN
F 2 "" H 5900 2700 50  0000 C CNN
F 3 "" H 5900 2700 50  0000 C CNN
	1    5900 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2500 2000 2700
Wire Wire Line
	2000 2600 2100 2600
Wire Wire Line
	2000 2900 2000 3100
Connection ~ 2000 2600
Connection ~ 2000 3000
Wire Wire Line
	2000 6000 2100 6000
Wire Wire Line
	2000 5700 2000 6100
Wire Wire Line
	2000 5900 2100 5900
Connection ~ 2000 6000
Wire Wire Line
	2000 5800 2100 5800
Connection ~ 2000 5900
Wire Wire Line
	2000 5700 2100 5700
Connection ~ 2000 5800
Wire Wire Line
	5200 4100 5100 4100
Wire Wire Line
	5100 4100 5100 5700
Wire Wire Line
	5100 4500 5200 4500
Wire Wire Line
	5100 4900 5200 4900
Connection ~ 5100 4500
Wire Wire Line
	5100 5300 5200 5300
Connection ~ 5100 4900
Wire Wire Line
	5500 5300 5600 5300
Wire Wire Line
	5500 4100 5500 5700
Wire Wire Line
	5500 4900 5600 4900
Wire Wire Line
	5500 4500 5600 4500
Connection ~ 5500 4900
Wire Wire Line
	5500 4100 5600 4100
Connection ~ 5500 4500
Wire Wire Line
	6000 4100 5900 4100
Wire Wire Line
	5900 4100 5900 5700
Wire Wire Line
	5900 4500 6000 4500
Wire Wire Line
	5900 4900 6000 4900
Connection ~ 5900 4500
Wire Wire Line
	5900 5300 6000 5300
Connection ~ 5900 4900
Wire Wire Line
	6200 5600 6200 5500
Wire Wire Line
	5000 5600 6300 5600
Wire Wire Line
	5800 5600 5800 5500
Wire Wire Line
	5400 5600 5400 5500
Connection ~ 5800 5600
Wire Wire Line
	5400 5100 5400 5200
Wire Wire Line
	5000 5200 6300 5200
Wire Wire Line
	6200 5200 6200 5100
Wire Wire Line
	5800 5200 5800 5100
Connection ~ 5800 5200
Wire Wire Line
	5800 4800 5800 4700
Wire Wire Line
	5000 4800 6300 4800
Wire Wire Line
	6200 4800 6200 4700
Wire Wire Line
	5400 4800 5400 4700
Connection ~ 5800 4800
Wire Wire Line
	5400 4300 5400 4400
Wire Wire Line
	5000 4400 6300 4400
Wire Wire Line
	5800 4400 5800 4300
Wire Wire Line
	6200 4400 6200 4300
Connection ~ 5800 4400
Connection ~ 5400 5600
Connection ~ 5400 5200
Connection ~ 5400 4800
Connection ~ 5400 4400
Connection ~ 5900 5300
Connection ~ 5500 5300
Connection ~ 5100 5300
Wire Wire Line
	2000 3000 2100 3000
Wire Wire Line
	7650 2100 7650 2000
Wire Wire Line
	7450 1800 7450 1700
Wire Wire Line
	7850 1700 7850 1800
Wire Wire Line
	8050 2100 8050 2000
Connection ~ 6200 4400
Connection ~ 6200 4800
Connection ~ 6200 5200
Connection ~ 6200 5600
Wire Wire Line
	6600 5600 6500 5600
Wire Wire Line
	6600 4300 6600 5600
Wire Wire Line
	6600 5200 6500 5200
Wire Wire Line
	6600 4800 6500 4800
Connection ~ 6600 5200
Wire Wire Line
	6600 4400 6500 4400
Connection ~ 6600 4800
Connection ~ 6600 4400
Wire Wire Line
	2500 1800 2300 1800
Wire Wire Line
	2300 1900 2500 1900
Wire Wire Line
	2400 1700 2300 1700
Wire Wire Line
	7400 2700 7400 3200
Wire Wire Line
	7400 3700 7400 3300
Wire Wire Line
	7500 3600 7300 3600
Wire Wire Line
	7300 3400 7500 3400
Wire Wire Line
	7500 3500 7300 3500
Wire Wire Line
	7500 3100 7000 3100
Wire Wire Line
	7000 3100 7000 3000
Wire Wire Line
	7000 3000 7100 3000
Wire Wire Line
	7300 3000 7500 3000
Wire Wire Line
	7400 3300 7500 3300
Wire Wire Line
	7300 3200 7500 3200
Connection ~ 7400 3200
Wire Wire Line
	7100 3200 6900 3200
Wire Wire Line
	6900 3200 6900 2900
Wire Wire Line
	6900 2900 7500 2900
Wire Wire Line
	5700 2100 5700 2000
Wire Wire Line
	2400 2100 2400 1700
Wire Wire Line
	7100 4800 7100 4900
Wire Wire Line
	7300 4900 7300 4800
Wire Wire Line
	7500 4900 7500 4800
Wire Wire Line
	7300 4300 7300 4400
Wire Wire Line
	7500 5200 7500 5100
Wire Wire Line
	7300 5200 7300 5100
Wire Wire Line
	7100 5200 7100 5100
Wire Wire Line
	6850 1900 6850 1800
Wire Wire Line
	6550 1800 6950 1800
Wire Wire Line
	6550 1700 6550 1900
Connection ~ 6550 1800
Connection ~ 6850 1800
Wire Wire Line
	3400 2000 3400 2100
Wire Wire Line
	4400 2100 4400 1800
Wire Wire Line
	4600 2100 4600 2000
Wire Wire Line
	4800 2000 4800 2100
Wire Wire Line
	4400 1600 4800 1600
Connection ~ 4800 1600
Wire Wire Line
	3400 1600 3600 1600
Connection ~ 4600 1600
Wire Wire Line
	4800 1500 4800 1800
Wire Wire Line
	4600 1600 4600 1800
Connection ~ 3500 1600
Wire Wire Line
	3500 1700 3500 1600
Wire Wire Line
	3600 1700 3500 1700
Connection ~ 3400 1600
Wire Wire Line
	3400 1500 3400 1800
Wire Wire Line
	5700 1500 5700 1600
Wire Wire Line
	3100 1500 3100 1600
Wire Wire Line
	3100 2000 3100 2100
Wire Wire Line
	5200 1500 5200 1600
Wire Wire Line
	5200 1600 5400 1600
Wire Wire Line
	5400 1600 5400 1500
Wire Wire Line
	5900 2900 6000 2900
Wire Wire Line
	6000 3000 5900 3000
Wire Wire Line
	5900 3000 5900 3100
Wire Wire Line
	5200 3300 5100 3300
Wire Wire Line
	5900 2700 5900 2900
$Comp
L R_Small R4
U 1 1 5AA3248A
P 5500 3500
F 0 "R4" H 5530 3520 50  0000 L CNN
F 1 "100k" H 5530 3460 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 5500 3500 50  0001 C CNN
F 3 "" H 5500 3500 50  0001 C CNN
	1    5500 3500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 5AA338DB
P 5300 3300
F 0 "C7" H 5310 3370 50  0000 L CNN
F 1 "0.1u" H 5310 3220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5300 3300 50  0001 C CNN
F 3 "" H 5300 3300 50  0001 C CNN
	1    5300 3300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR029
U 1 1 5AA32770
P 5500 3700
F 0 "#PWR029" H 5500 3450 50  0001 C CNN
F 1 "GND" H 5500 3550 50  0000 C CNN
F 2 "" H 5500 3700 50  0000 C CNN
F 3 "" H 5500 3700 50  0000 C CNN
	1    5500 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3700 5500 3600
Connection ~ 5500 3300
Wire Wire Line
	5500 3300 5500 3400
Wire Wire Line
	5400 3300 5600 3300
Wire Wire Line
	5900 3700 5900 3500
$Comp
L Q_NMOS_GSD Q1
U 1 1 5AA3E23A
P 5800 3300
F 0 "Q1" H 6000 3350 50  0000 L CNN
F 1 "BSS138" H 6000 3250 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6000 3400 50  0001 C CNN
F 3 "" H 5800 3300 50  0001 C CNN
	1    5800 3300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
