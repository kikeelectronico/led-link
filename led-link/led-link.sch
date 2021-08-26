EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "LED link"
Date "2021-08-26"
Rev "1.0"
Comp ""
Comment1 "Apache License 2.0"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_C_Receptacle_USB2.0 J?
U 1 1 6127DDEF
P 1750 2400
F 0 "J?" H 1857 3267 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 1857 3176 50  0000 C CNN
F 2 "" H 1900 2400 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1900 2400 50  0001 C CNN
	1    1750 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6127F4A7
P 1750 3450
F 0 "#PWR?" H 1750 3200 50  0001 C CNN
F 1 "GND" H 1755 3277 50  0000 C CNN
F 2 "" H 1750 3450 50  0001 C CNN
F 3 "" H 1750 3450 50  0001 C CNN
	1    1750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3450 1750 3300
NoConn ~ 1450 3300
NoConn ~ 2350 2000
NoConn ~ 2350 2100
NoConn ~ 2350 2300
NoConn ~ 2350 2400
NoConn ~ 2350 2500
NoConn ~ 2350 2600
NoConn ~ 2350 2900
NoConn ~ 2350 3000
$Comp
L Diode:1.5KExxA D?
U 1 1 61283C60
P 3200 2300
F 0 "D?" V 3246 2220 50  0000 R CNN
F 1 "1.5KExxA" V 3155 2220 50  0000 R CNN
F 2 "Diode_THT:D_DO-201AE_P15.24mm_Horizontal" H 3200 2100 50  0001 C CNN
F 3 "https://www.vishay.com/docs/88301/15ke.pdf" H 3150 2300 50  0001 C CNN
	1    3200 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 1800 3200 1800
Wire Wire Line
	3200 1800 3200 2150
$Comp
L power:GND #PWR?
U 1 1 61284A6E
P 3200 2600
F 0 "#PWR?" H 3200 2350 50  0001 C CNN
F 1 "GND" H 3205 2427 50  0000 C CNN
F 2 "" H 3200 2600 50  0001 C CNN
F 3 "" H 3200 2600 50  0001 C CNN
	1    3200 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2600 3200 2450
$Comp
L Device:Ferrite_Bead FB?
U 1 1 61286464
P 3850 1800
F 0 "FB?" V 3576 1800 50  0000 C CNN
F 1 "Ferrite_Bead" V 3667 1800 50  0000 C CNN
F 2 "" V 3780 1800 50  0001 C CNN
F 3 "~" H 3850 1800 50  0001 C CNN
	1    3850 1800
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 61286FE9
P 4350 2300
F 0 "C?" H 4465 2346 50  0000 L CNN
F 1 "C" H 4465 2255 50  0000 L CNN
F 2 "" H 4388 2150 50  0001 C CNN
F 3 "~" H 4350 2300 50  0001 C CNN
	1    4350 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1800 3700 1800
Connection ~ 3200 1800
Wire Wire Line
	4000 1800 4350 1800
Wire Wire Line
	4350 1800 4350 2150
$Comp
L power:GND #PWR?
U 1 1 61287A1C
P 4350 2600
F 0 "#PWR?" H 4350 2350 50  0001 C CNN
F 1 "GND" H 4355 2427 50  0000 C CNN
F 2 "" H 4350 2600 50  0001 C CNN
F 3 "" H 4350 2600 50  0001 C CNN
	1    4350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2600 4350 2450
$EndSCHEMATC
