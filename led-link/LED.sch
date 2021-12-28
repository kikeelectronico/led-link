EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 4500 2900 0    50   ~ 0
Status
$Comp
L Device:R R?
U 1 1 61F1CE59
P 4300 3550
AR Path="/61F1CE59" Ref="R?"  Part="1" 
AR Path="/61F16302/61F1CE59" Ref="R12"  Part="1" 
F 0 "R12" H 4370 3596 50  0000 L CNN
F 1 "R" H 4370 3505 50  0000 L CNN
F 2 "" V 4230 3550 50  0001 C CNN
F 3 "~" H 4300 3550 50  0001 C CNN
	1    4300 3550
	1    0    0    -1  
$EndComp
$Comp
L local:HSMF-C169 D?
U 1 1 61F1CE60
P 4750 3800
AR Path="/61F1CE60" Ref="D?"  Part="1" 
AR Path="/61F16302/61F1CE60" Ref="D2"  Part="1" 
F 0 "D2" H 4725 4148 50  0000 C CNN
F 1 "HSMF-C169" H 4725 4057 50  0000 C CNN
F 2 "" H 4750 3800 50  0001 C CNN
F 3 "" H 4750 3800 50  0001 C CNN
	1    4750 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61F1CE66
P 4050 3550
AR Path="/61F1CE66" Ref="R?"  Part="1" 
AR Path="/61F16302/61F1CE66" Ref="R11"  Part="1" 
F 0 "R11" H 4120 3596 50  0000 L CNN
F 1 "R" H 4120 3505 50  0000 L CNN
F 2 "" V 3980 3550 50  0001 C CNN
F 3 "~" H 4050 3550 50  0001 C CNN
	1    4050 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3700 4050 3950
Wire Wire Line
	4050 3950 4600 3950
Wire Wire Line
	4300 3800 4300 3700
Wire Wire Line
	4300 3800 4600 3800
$Comp
L power:+5V #PWR?
U 1 1 61F1CE73
P 4050 3300
AR Path="/61F1CE73" Ref="#PWR?"  Part="1" 
AR Path="/61F16302/61F1CE73" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 4050 3150 50  0001 C CNN
F 1 "+5V" H 4065 3473 50  0000 C CNN
F 2 "" H 4050 3300 50  0001 C CNN
F 3 "" H 4050 3300 50  0001 C CNN
	1    4050 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3300 4050 3400
$Comp
L power:+3.3V #PWR?
U 1 1 61F1CE7A
P 4300 3300
AR Path="/61F1CE7A" Ref="#PWR?"  Part="1" 
AR Path="/61F16302/61F1CE7A" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 4300 3150 50  0001 C CNN
F 1 "+3.3V" H 4315 3473 50  0000 C CNN
F 2 "" H 4300 3300 50  0001 C CNN
F 3 "" H 4300 3300 50  0001 C CNN
	1    4300 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3300 4300 3400
NoConn ~ 7200 3800
Text Notes 6750 2900 0    50   ~ 0
Color LED
Wire Wire Line
	6900 4200 6900 4100
$Comp
L power:GND #PWR?
U 1 1 61F1CE8A
P 6900 4200
AR Path="/61F1CE8A" Ref="#PWR?"  Part="1" 
AR Path="/61F16302/61F1CE8A" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 6900 3950 50  0001 C CNN
F 1 "GND" H 6905 4027 50  0000 C CNN
F 2 "" H 6900 4200 50  0001 C CNN
F 3 "" H 6900 4200 50  0001 C CNN
	1    6900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3400 6900 3500
$Comp
L power:VDD #PWR?
U 1 1 61F1CE91
P 6900 3400
AR Path="/61F1CE91" Ref="#PWR?"  Part="1" 
AR Path="/61F16302/61F1CE91" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 6900 3250 50  0001 C CNN
F 1 "VDD" H 6915 3573 50  0000 C CNN
F 2 "" H 6900 3400 50  0001 C CNN
F 3 "" H 6900 3400 50  0001 C CNN
	1    6900 3400
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D?
U 1 1 61F1CE97
P 6900 3800
AR Path="/61F1CE97" Ref="D?"  Part="1" 
AR Path="/61F16302/61F1CE97" Ref="D3"  Part="1" 
F 0 "D3" H 7244 3846 50  0000 L CNN
F 1 "WS2812B" H 7244 3755 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 6950 3500 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7000 3425 50  0001 L TNN
	1    6900 3800
	1    0    0    -1  
$EndComp
Wire Notes Line
	5750 3000 5750 4550
Wire Notes Line
	4000 3000 5350 3000
Wire Notes Line
	6150 3000 7800 3000
Text GLabel 5050 3800 2    50   Input ~ 0
status_led
Text GLabel 5050 3950 2    50   Input ~ 0
charging_led
Wire Wire Line
	4850 3950 5050 3950
Wire Wire Line
	4850 3800 5050 3800
Text GLabel 6450 3800 0    50   Input ~ 0
color_led
Wire Wire Line
	6450 3800 6600 3800
$EndSCHEMATC
