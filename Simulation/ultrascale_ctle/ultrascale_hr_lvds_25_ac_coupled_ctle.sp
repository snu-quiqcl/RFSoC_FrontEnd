*************************************************************************
* IBIS-ISS file for CTLE for use in HRIO SGMII interface 
* CTLE SGMII is supported only with AC coupled LVDS_25_HR
*
* [File name] hr_lvds_25_ac_coupled_ctle.sp
* [File Rev] 1.0
* [Date]  Wed July 15 15:29:38 IST 2015
* [Source] Hspice simulations (ox20-0.5-2p3.lib: TT, SS, FF)
*
* [Notes]  Xilinx IBIS-ISS model for HRIO SGMII CTLE
* [Disclaimer]  The data in this model is derived from SPICE simulations
*   using modeling information extracted from the target process.
*   While a great deal of care has been taken to provide information
*   that is accurate, this model is considered preliminary
*   as it has not been verified by actual silicon measurement.
*   Treat the data in this model as preliminary until actual silicon
*   verification is performed.
* [Copyright] Copyright 2015, Xilinx Inc., All rights reserved
*
*************************************************************************
*                          Component UltraScale HRIO
*************************************************************************
*
*
* UltraScale HRIO SGMII CTLE provides 4 options for AC Gain: 1.5db; 3.0db; 4.5db; 6.0db
*
* Sub-circuits are provided for each AC gain option for each of the following corners 
*
*                           TYP         MIN        MAX
* [Temperature Range]       25C        100C        0.0C
* [Voltage Range]           1.8V       1.71V       1.89V
*
* Sub-circuit port descriptions
* in1: The positive sense pad of a differential input device (not including package parasitics)
* in2: The negative sense pad of a differential input device (not including package parasitics)
* out1: The negative sense output of CTLE
* out2: The positive sense output og CTLE
* out3: The output of the CTLE+Rx
* vccaux_io: IO receiver power (Typ:1.8V; Min:1.71V; Max:1.89V)
* vss_io: IO Ground
*
* Sub-circuit names are in the format "hr_lvds_25_ac_coupled_ctle_AAAdb_DDD"
* 
* AAA:  1p5 or 3p0 or 4p5 or 6p0 (Identifies the CTLE gain. Example: 1.5db gain)
* DDD:  typ or min or max        (Identifies the simulation parameters. Example: typ requires typical temperature and typical voltage)
*
* Model usage: connect in1, in2 ports to the Xilinx FPGA package pin model on receive side of the channel. 
* out1 and out2 are the 180degree phase shifted differential outputs of the CTLE circuit.
* out3 is the output of the receiver circuit. 
*
* Receiver pad capacitance is included in the model.
*
* Users is required to include appropriate package model in the simulation. This information is available on www.xilinx.com
*
* CTLE model mapping to Vivado attributes
* EQ_LEVEL0 : 0.0dB (CTLE Disabled.)
* EQ_LEVEL1 : 1.5dB
* EQ_LEVEL2 : 3.0dB
* EQ_LEVEL3 : 4.5dB
* EQ_LEVEL4 : 6.0dB
*
*
********** SUBCKT for CTLE OFF **********************************

.subckt hr_lvds_25_ac_coupled_ctle_none_typ in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 5.2368e-12
cio2 in2 vss_io 5.2368e-12
r151 in1 n150 41
r152 in2 n150 41
r153 vccaux_io in1 3473
r154 in1 vss_io 3622
r155 vccaux_io in2 3473
r156 in2 vss_io 3622
C7 n102 vss_io 40e-15
C0 n101 vss_io 40e-15
I1 vccaux_io n102 DC=400e-6
I0 vccaux_io n101 DC=400e-6
I2 n101 out2 DC=400e-6
I4 n102 out1 DC=400e-6
E3 n119 vss_io VCVS n102 n101 500e-3
E2 n120 vss_io VCVS in2 in1 500e-3
E1 n117 vss_io VCVS n101 n102 500e-3
E0 n118 vss_io VCVS in1 in2 500e-3
R29 n113 n114 94
R28 n111 n112 49
R27 n109 n110 100
R20 out2 vss_io 4.08e3 M=6
R4 n102 out1 19.85e3
R8 vccaux_io n102 6.14e3
R5 vccaux_io n101 6.14e3
R2 n101 out2 19.85e3
R9 n112 n102 896 M=2
R12 n101 n115 734
R17 n110 n102 734 M=2
R15 n101 n111 896 M=2
R16 n101 n109 734 M=2
R10 n101 n113 653
R11 n114 n102 653
R13 n115 n116 734
R14 n116 n102 734
R21 out1 vss_io 4.08e3 M=6
G2 n102 out1 VCCS n119 n120 4.25e-3 MAX=400e-6 MIN=-400e-6
G0 n101 out2 VCCS n117 n118 4.25e-3 MAX=400e-6 MIN=-400e-6
C19 out2 vss_io 40e-15
C18 out1 vss_io 40e-15
C17 n105 vss_io 50e-15
C16 n106 vss_io 50e-15
C13 n102 out1 50e-15
C12 n101 out2 50e-15
C15 n104 vss_io 50e-15
C14 n103 vss_io 50e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.95 min=0
.ends

.subckt hr_lvds_25_ac_coupled_ctle_none_min in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 5.0748e-12
cio2 in2 vss_io 5.0748e-12
r151 in1 n150 51
r152 in2 n150 51
r153 vccaux_io in1 3473
r154 in1 vss_io 3622
r155 vccaux_io in2 3473
r156 in2 vss_io 3622
C7 n102 vss_io 40e-15
C0 n101 vss_io 40e-15
I7 n102 out1 DC=296e-6
I2 n101 out2 DC=296e-6
I5 vccaux_io n102 DC=295e-6
I0 vccaux_io n101 DC=295e-6
E0 n118 vss_io VCVS in1 in2 500e-3
E1 n117 vss_io VCVS n101 n102 500e-3
E3 n119 vss_io VCVS n102 n101 500e-3
E2 n120 vss_io VCVS in2 in1 500e-3
R34 n102 out1 29.53e3
R2 n101 out2 29.53e3
R3 vccaux_io n102 7.55e3
R5 vccaux_io n101 7.55e3
R30 n113 n114 100
R31 n109 n110 95
R28 n111 n112 51
R20 out2 vss_io 4.765e3 M=6
R9 n112 n102 1.09e3 M=2
R12 n101 n115 893
R17 n110 n102 893 M=2
R15 n101 n111 1.09e3 M=2
R16 n101 n109 893 M=2
R10 n101 n113 794.5
R11 n114 n102 794.5
R13 n115 n116 893
R14 n116 n102 893
R21 out1 vss_io 4.765e3 M=6
G2 n102 out1 VCCS n119 n120 2.98e-3 MAX=296e-6 MIN=-296e-6
G0 n101 out2 VCCS n117 n118 2.98e-3 MAX=296e-6 MIN=-296e-6
C17 n105 vss_io 100e-15
C16 n106 vss_io 100e-15
C13 n102 out1 40e-15
C12 n101 out2 40e-15
C21 out1 vss_io 70e-15
C20 out2 vss_io 70e-15
C15 n104 vss_io 235e-15
C14 n103 vss_io 235e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9025 min=0
.ends

.subckt hr_lvds_25_ac_coupled_ctle_none_max in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 5.7508e-12
cio2 in2 vss_io 5.7508e-12
r151 in1 n150 33
r152 in2 n150 33
r153 vccaux_io in1 3473
r154 in1 vss_io 3622
r155 vccaux_io in2 3473
r156 in2 vss_io 3622
C7 n102 vss_io 40e-15
C0 n101 vss_io 40e-15
E3 n119 vss_io VCVS n102 n101 500e-3
E2 n120 vss_io VCVS in2 in1 500e-3
E0 n118 vss_io VCVS in1 in2 500e-3
E1 n117 vss_io VCVS n101 n102 500e-3
G2 n102 out1 VCCS n119 n120 5.62e-3 MAX=576e-6 MIN=-576e-6
G0 n101 out2 VCCS n117 n118 5.62e-3 MAX=576e-6 MIN=-576e-6
R38 n109 n110 52
R37 n111 n112 34
R36 n113 n114 54
R15 n110 n102 574 M=2
R3 vccaux_io n102 5.07e3
R5 vccaux_io n101 5.07e3
R8 out2 vss_io 3.393e3 M=6
R2 n101 out2 11.03e3
R4 n102 out1 11.03e3
R19 n114 n102 511
R20 n101 n115 574
R22 n116 n102 574
R21 n115 n116 574
R16 n101 n109 574 M=2
R17 n101 n111 701 M=2
R9 out1 vss_io 3.393e3 M=6
R10 n101 n113 511
R18 n112 n102 701 M=2
I5 vccaux_io n102 DC=573e-6
I0 vccaux_io n101 DC=573e-6
I2 n101 out2 DC=576e-6
I4 n102 out1 DC=576e-6
C22 n106 vss_io 30e-15
C23 n105 vss_io 30e-15
C17 out1 vss_io 70e-15
C16 out2 vss_io 70e-15
C12 n101 out2 40e-15
C13 n102 out1 40e-15
C20 n103 vss_io 30e-15
C21 n104 vss_io 30e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9975 min=0
.ends
*************************************************************************
********** SUBCKT for AC gain of 1.5db **********************************

.subckt hr_lvds_25_ac_coupled_ctle_1p5db_typ in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 5.2368e-12
cio2 in2 vss_io 5.2368e-12
r151 in1 n150 41
r152 in2 n150 41
r153 vccaux_io in1 3473
r154 in1 vss_io 3622
r155 vccaux_io in2 3473
r156 in2 vss_io 3622
C7 n102 vss_io 40e-15
C0 n101 vss_io 40e-15
I1 vccaux_io n102 DC=400e-6
I0 vccaux_io n101 DC=400e-6
I2 n101 out2 DC=400e-6
I4 n102 out1 DC=400e-6
E3 n119 vss_io VCVS n102 n101 500e-3
E2 n120 vss_io VCVS in2 in1 500e-3
E1 n117 vss_io VCVS n101 n102 500e-3
E0 n118 vss_io VCVS in1 in2 500e-3
R29 n113 n114 94
R28 n111 n112 49
R24 n104 n102 80
R27 n109 n110 100
R20 out2 vss_io 4.08e3 M=6
R22 n101 n105 90
R25 n101 n103 80
R23 n106 n102 90
R4 n102 out1 19.85e3
R8 vccaux_io n102 6.14e3
R5 vccaux_io n101 6.14e3
R2 n101 out2 19.85e3
R9 n112 n102 896 M=2
R12 n101 n115 734
R26 n107 n108 70
R17 n110 n102 734 M=2
R18 n108 n102 961 M=4
R15 n101 n111 896 M=2
R16 n101 n109 734 M=2
R19 n101 n107 961 M=4
R10 n101 n113 653
R11 n114 n102 653
R13 n115 n116 734
R14 n116 n102 734
R21 out1 vss_io 4.08e3 M=6
G2 n102 out1 VCCS n119 n120 4.25e-3 MAX=400e-6 MIN=-400e-6
G0 n101 out2 VCCS n117 n118 4.25e-3 MAX=400e-6 MIN=-400e-6
C19 out2 vss_io 40e-15
C18 out1 vss_io 40e-15
C17 n105 vss_io 50e-15
C16 n106 vss_io 50e-15
C13 n102 out1 50e-15
C12 n101 out2 50e-15
C15 n104 vss_io 50e-15
C8 n103 n104 580e-15
C11 n106 n105 200e-15
C10 n105 n106 200e-15
C9 n104 n103 580e-15
C14 n103 vss_io 50e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.95 min=0
.ends

.subckt hr_lvds_25_ac_coupled_ctle_1p5db_min in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 5.0748e-12
cio2 in2 vss_io 5.0748e-12
r151 in1 n150 51
r152 in2 n150 51
r153 vccaux_io in1 3473
r154 in1 vss_io 3622
r155 vccaux_io in2 3473
r156 in2 vss_io 3622
C7 n102 vss_io 40e-15
C0 n101 vss_io 40e-15
I7 n102 out1 DC=296e-6
I2 n101 out2 DC=296e-6
I5 vccaux_io n102 DC=295e-6
I0 vccaux_io n101 DC=295e-6
E0 n118 vss_io VCVS in1 in2 500e-3
E1 n117 vss_io VCVS n101 n102 500e-3
E3 n119 vss_io VCVS n102 n101 500e-3
E2 n120 vss_io VCVS in2 in1 500e-3
R34 n102 out1 29.53e3
R2 n101 out2 29.53e3
R3 vccaux_io n102 7.55e3
R5 vccaux_io n101 7.55e3
R30 n113 n114 100
R31 n109 n110 95
R28 n111 n112 51
R32 n107 n108 88
R24 n104 n102 80
R20 out2 vss_io 4.765e3 M=6
R22 n101 n105 90
R25 n101 n103 80
R23 n106 n102 90
R9 n112 n102 1.09e3 M=2
R12 n101 n115 893
R17 n110 n102 893 M=2
R18 n108 n102 1.1691e3 M=4
R15 n101 n111 1.09e3 M=2
R16 n101 n109 893 M=2
R19 n101 n107 1.1691e3 M=4
R10 n101 n113 794.5
R11 n114 n102 794.5
R13 n115 n116 893
R14 n116 n102 893
R21 out1 vss_io 4.765e3 M=6
G2 n102 out1 VCCS n119 n120 2.98e-3 MAX=296e-6 MIN=-296e-6
G0 n101 out2 VCCS n117 n118 2.98e-3 MAX=296e-6 MIN=-296e-6
C17 n105 vss_io 100e-15
C16 n106 vss_io 100e-15
C13 n102 out1 40e-15
C12 n101 out2 40e-15
C21 out1 vss_io 70e-15
C20 out2 vss_io 70e-15
C15 n104 vss_io 235e-15
C8 n103 n104 544e-15
C11 n106 n105 196e-15
C10 n105 n106 196e-15
C9 n104 n103 544e-15
C14 n103 vss_io 235e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9025 min=0
.ends

.subckt hr_lvds_25_ac_coupled_ctle_1p5db_max in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 5.7508e-12
cio2 in2 vss_io 5.7508e-12
r151 in1 n150 33
r152 in2 n150 33
r153 vccaux_io in1 3473
r154 in1 vss_io 3622
r155 vccaux_io in2 3473
r156 in2 vss_io 3622
C7 n102 vss_io 40e-15
C0 n101 vss_io 40e-15
E3 n119 vss_io VCVS n102 n101 500e-3
E2 n120 vss_io VCVS in2 in1 500e-3
E0 n118 vss_io VCVS in1 in2 500e-3
E1 n117 vss_io VCVS n101 n102 500e-3
G2 n102 out1 VCCS n119 n120 5.62e-3 MAX=576e-6 MIN=-576e-6
G0 n101 out2 VCCS n117 n118 5.62e-3 MAX=576e-6 MIN=-576e-6
R38 n109 n110 52
R37 n111 n112 34
R36 n113 n114 54
R35 n107 n108 48
R15 n110 n102 574 M=2
R12 n101 n107 750 M=4
R34 n104 n102 62
R32 n101 n105 65
R3 vccaux_io n102 5.07e3
R31 n101 n103 62
R5 vccaux_io n101 5.07e3
R8 out2 vss_io 3.393e3 M=6
R11 n108 n102 750 M=4
R33 n106 n102 65
R2 n101 out2 11.03e3
R4 n102 out1 11.03e3
R19 n114 n102 511
R20 n101 n115 574
R22 n116 n102 574
R21 n115 n116 574
R16 n101 n109 574 M=2
R17 n101 n111 701 M=2
R9 out1 vss_io 3.393e3 M=6
R10 n101 n113 511
R18 n112 n102 701 M=2
I5 vccaux_io n102 DC=573e-6
I0 vccaux_io n101 DC=573e-6
I2 n101 out2 DC=576e-6
I4 n102 out1 DC=576e-6
C11 n106 n105 330e-15
C22 n106 vss_io 30e-15
C23 n105 vss_io 30e-15
C19 n103 n104 530e-15
C18 n104 n103 530e-15
C10 n105 n106 330e-15
C17 out1 vss_io 70e-15
C16 out2 vss_io 70e-15
C12 n101 out2 40e-15
C13 n102 out1 40e-15
C20 n103 vss_io 30e-15
C21 n104 vss_io 30e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9975 min=0
.ends
*********************************************************************

********** SUBCKT for AC gain of 3.0db ******************************

.subckt hr_lvds_25_ac_coupled_ctle_3p0db_typ in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 5.2368e-12
cio2 in2 vss_io 5.2368e-12
r151 in1 n150 41
r152 in2 n150 41
r153 vccaux_io in1 3473
r154 in1 vss_io 3622
r155 vccaux_io in2 3473
r156 in2 vss_io 3622
C7 n102 vss_io 40e-15
C0 n101 vss_io 40e-15
I1 vccaux_io n102 DC=400e-6
I0 vccaux_io n101 DC=400e-6
I2 n101 out2 DC=400e-6
I4 n102 out1 DC=400e-6
E3 n119 vss_io VCVS n102 n101 500e-3
E2 n120 vss_io VCVS in2 in1 500e-3
E1 n117 vss_io VCVS n101 n102 500e-3
E0 n118 vss_io VCVS in1 in2 500e-3
R28 n111 n112 49
R24 n104 n102 80
R20 out2 vss_io 4.08e3 M=6
R22 n101 n105 90
R25 n101 n103 80
R23 n106 n102 90
R4 n102 out1 19.85e3
R8 vccaux_io n102 6.14e3
R5 vccaux_io n101 6.14e3
R2 n101 out2 19.85e3
R9 n112 n102 896 M=2
R12 n101 n115 734
R26 n107 n108 70
R17 n110 n102 734 M=2
R18 n108 n102 961 M=4
R15 n101 n111 896 M=2
R16 n101 n109 734 M=2
R19 n101 n107 961 M=4
R10 n101 n113 653
R11 n114 n102 653
R13 n115 n116 734
R14 n116 n102 734
R21 out1 vss_io 4.08e3 M=6
G2 n102 out1 VCCS n119 n120 4.25e-3 MAX=400e-6 MIN=-400e-6
G0 n101 out2 VCCS n117 n118 4.25e-3 MAX=400e-6 MIN=-400e-6
C19 out2 vss_io 40e-15
C18 out1 vss_io 40e-15
C17 n105 vss_io 50e-15
C16 n106 vss_io 50e-15
C13 n102 out1 50e-15
C12 n101 out2 50e-15
C15 n104 vss_io 50e-15
C8 n103 n104 580e-15
C11 n106 n105 200e-15
C10 n105 n106 200e-15
C9 n104 n103 580e-15
C14 n103 vss_io 50e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.95 min=0
.ends

.subckt hr_lvds_25_ac_coupled_ctle_3p0db_min in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 5.0748e-12
cio2 in2 vss_io 5.0748e-12
r151 in1 n150 51
r152 in2 n150 51
r153 vccaux_io in1 3473
r154 in1 vss_io 3622
r155 vccaux_io in2 3473
r156 in2 vss_io 3622
C7 n102 vss_io 40e-15
C0 n101 vss_io 40e-15
I7 n102 out1 DC=296e-6
I2 n101 out2 DC=296e-6
I5 vccaux_io n102 DC=295e-6
I0 vccaux_io n101 DC=295e-6
E0 n118 vss_io VCVS in1 in2 500e-3
E1 n117 vss_io VCVS n101 n102 500e-3
E3 n119 vss_io VCVS n102 n101 500e-3
E2 n120 vss_io VCVS in2 in1 500e-3
R34 n102 out1 29.53e3
R2 n101 out2 29.53e3
R3 vccaux_io n102 7.55e3
R5 vccaux_io n101 7.55e3
R28 n111 n112 51
R32 n107 n108 88
R24 n104 n102 80
R20 out2 vss_io 4.765e3 M=6
R22 n101 n105 90
R25 n101 n103 80
R23 n106 n102 90
R9 n112 n102 1.09e3 M=2
R12 n101 n115 893
R17 n110 n102 893 M=2
R18 n108 n102 1.1691e3 M=4
R15 n101 n111 1.09e3 M=2
R16 n101 n109 893 M=2
R19 n101 n107 1.1691e3 M=4
R10 n101 n113 794.5
R11 n114 n102 794.5
R13 n115 n116 893
R14 n116 n102 893
R21 out1 vss_io 4.765e3 M=6
G2 n102 out1 VCCS n119 n120 2.98e-3 MAX=296e-6 MIN=-296e-6
G0 n101 out2 VCCS n117 n118 2.98e-3 MAX=296e-6 MIN=-296e-6
C17 n105 vss_io 100e-15
C16 n106 vss_io 100e-15
C13 n102 out1 40e-15
C12 n101 out2 40e-15
C21 out1 vss_io 70e-15
C20 out2 vss_io 70e-15
C15 n104 vss_io 235e-15
C8 n103 n104 544e-15
C11 n106 n105 196e-15
C10 n105 n106 196e-15
C9 n104 n103 544e-15
C14 n103 vss_io 235e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9025 min=0
.ends

.subckt hr_lvds_25_ac_coupled_ctle_3p0db_max in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 5.7508e-12
cio2 in2 vss_io 5.7508e-12
r151 in1 n150 33
r152 in2 n150 33
r153 vccaux_io in1 3473
r154 in1 vss_io 3622
r155 vccaux_io in2 3473
r156 in2 vss_io 3622
C7 n102 vss_io 40e-15
C0 n101 vss_io 40e-15
E3 n119 vss_io VCVS n102 n101 500e-3
E2 n120 vss_io VCVS in2 in1 500e-3
E0 n118 vss_io VCVS in1 in2 500e-3
E1 n117 vss_io VCVS n101 n102 500e-3
G2 n102 out1 VCCS n119 n120 5.62e-3 MAX=576e-6 MIN=-576e-6
G0 n101 out2 VCCS n117 n118 5.62e-3 MAX=576e-6 MIN=-576e-6
R37 n111 n112 34
R35 n107 n108 48
R15 n110 n102 574 M=2
R12 n101 n107 750 M=4
R34 n104 n102 62
R32 n101 n105 65
R3 vccaux_io n102 5.07e3
R31 n101 n103 62
R5 vccaux_io n101 5.07e3
R8 out2 vss_io 3.393e3 M=6
R11 n108 n102 750 M=4
R33 n106 n102 65
R2 n101 out2 11.03e3
R4 n102 out1 11.03e3
R19 n114 n102 511
R20 n101 n115 574
R22 n116 n102 574
R21 n115 n116 574
R16 n101 n109 574 M=2
R17 n101 n111 701 M=2
R9 out1 vss_io 3.393e3 M=6
R10 n101 n113 511
R18 n112 n102 701 M=2
I5 vccaux_io n102 DC=573e-6
I0 vccaux_io n101 DC=573e-6
I2 n101 out2 DC=576e-6
I4 n102 out1 DC=576e-6
C11 n106 n105 330e-15
C22 n106 vss_io 30e-15
C23 n105 vss_io 30e-15
C19 n103 n104 530e-15
C18 n104 n103 530e-15
C10 n105 n106 330e-15
C17 out1 vss_io 70e-15
C16 out2 vss_io 70e-15
C12 n101 out2 40e-15
C13 n102 out1 40e-15
C20 n103 vss_io 30e-15
C21 n104 vss_io 30e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9975 min=0
.ends
*********************************************************************

********** SUBCKT for AC gain of 4.5db ******************************

.subckt hr_lvds_25_ac_coupled_ctle_4p5db_typ in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 5.2368e-12
cio2 in2 vss_io 5.2368e-12
r151 in1 n150 41
r152 in2 n150 41
r153 vccaux_io in1 3473
r154 in1 vss_io 3622
r155 vccaux_io in2 3473
r156 in2 vss_io 3622
C7 n102 vss_io 40e-15
C0 n101 vss_io 40e-15
I1 vccaux_io n102 DC=400e-6
I0 vccaux_io n101 DC=400e-6
I2 n101 out2 DC=400e-6
I4 n102 out1 DC=400e-6
E3 n119 vss_io VCVS n102 n101 500e-3
E2 n120 vss_io VCVS in2 in1 500e-3
E1 n117 vss_io VCVS n101 n102 500e-3
E0 n118 vss_io VCVS in1 in2 500e-3
R29 n113 n114 94
R28 n111 n112 49
R24 n104 n102 80
R20 out2 vss_io 4.08e3 M=6
R22 n101 n105 90
R25 n101 n103 80
R23 n106 n102 90
R4 n102 out1 19.85e3
R8 vccaux_io n102 6.14e3
R5 vccaux_io n101 6.14e3
R2 n101 out2 19.85e3
R9 n112 n102 896 M=2
R12 n101 n115 734
R17 n110 n102 734 M=2
R18 n108 n102 961 M=4
R15 n101 n111 896 M=2
R16 n101 n109 734 M=2
R19 n101 n107 961 M=4
R10 n101 n113 653
R11 n114 n102 653
R13 n115 n116 734
R14 n116 n102 734
R21 out1 vss_io 4.08e3 M=6
G2 n102 out1 VCCS n119 n120 4.25e-3 MAX=400e-6 MIN=-400e-6
G0 n101 out2 VCCS n117 n118 4.25e-3 MAX=400e-6 MIN=-400e-6
C19 out2 vss_io 40e-15
C18 out1 vss_io 40e-15
C17 n105 vss_io 50e-15
C16 n106 vss_io 50e-15
C13 n102 out1 50e-15
C12 n101 out2 50e-15
C15 n104 vss_io 50e-15
C8 n103 n104 580e-15
C11 n106 n105 200e-15
C10 n105 n106 200e-15
C9 n104 n103 580e-15
C14 n103 vss_io 50e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.95 min=0
.ends

.subckt hr_lvds_25_ac_coupled_ctle_4p5db_min in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 5.0748e-12
cio2 in2 vss_io 5.0748e-12
r151 in1 n150 51
r152 in2 n150 51
r153 vccaux_io in1 3473
r154 in1 vss_io 3622
r155 vccaux_io in2 3473
r156 in2 vss_io 3622
C7 n102 vss_io 40e-15
C0 n101 vss_io 40e-15
I7 n102 out1 DC=296e-6
I2 n101 out2 DC=296e-6
I5 vccaux_io n102 DC=295e-6
I0 vccaux_io n101 DC=295e-6
E0 n118 vss_io VCVS in1 in2 500e-3
E1 n117 vss_io VCVS n101 n102 500e-3
E3 n119 vss_io VCVS n102 n101 500e-3
E2 n120 vss_io VCVS in2 in1 500e-3
R34 n102 out1 29.53e3
R2 n101 out2 29.53e3
R3 vccaux_io n102 7.55e3
R5 vccaux_io n101 7.55e3
R30 n113 n114 100
R28 n111 n112 51
R24 n104 n102 80
R20 out2 vss_io 4.765e3 M=6
R22 n101 n105 90
R25 n101 n103 80
R23 n106 n102 90
R9 n112 n102 1.09e3 M=2
R12 n101 n115 893
R17 n110 n102 893 M=2
R18 n108 n102 1.1691e3 M=4
R15 n101 n111 1.09e3 M=2
R16 n101 n109 893 M=2
R19 n101 n107 1.1691e3 M=4
R10 n101 n113 794.5
R11 n114 n102 794.5
R13 n115 n116 893
R14 n116 n102 893
R21 out1 vss_io 4.765e3 M=6
G2 n102 out1 VCCS n119 n120 2.98e-3 MAX=296e-6 MIN=-296e-6
G0 n101 out2 VCCS n117 n118 2.98e-3 MAX=296e-6 MIN=-296e-6
C17 n105 vss_io 100e-15
C16 n106 vss_io 100e-15
C13 n102 out1 40e-15
C12 n101 out2 40e-15
C21 out1 vss_io 70e-15
C20 out2 vss_io 70e-15
C15 n104 vss_io 235e-15
C8 n103 n104 544e-15
C11 n106 n105 196e-15
C10 n105 n106 196e-15
C9 n104 n103 544e-15
C14 n103 vss_io 235e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9025 min=0
.ends

.subckt hr_lvds_25_ac_coupled_ctle_4p5db_max in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 5.7508e-12
cio2 in2 vss_io 5.7508e-12
r151 in1 n150 33
r152 in2 n150 33
r153 vccaux_io in1 3473
r154 in1 vss_io 3622
r155 vccaux_io in2 3473
r156 in2 vss_io 3622
C7 n102 vss_io 40e-15
C0 n101 vss_io 40e-15
E3 n119 vss_io VCVS n102 n101 500e-3
E2 n120 vss_io VCVS in2 in1 500e-3
E0 n118 vss_io VCVS in1 in2 500e-3
E1 n117 vss_io VCVS n101 n102 500e-3
G2 n102 out1 VCCS n119 n120 5.62e-3 MAX=576e-6 MIN=-576e-6
G0 n101 out2 VCCS n117 n118 5.62e-3 MAX=576e-6 MIN=-576e-6
R37 n111 n112 34
R36 n113 n114 54
R15 n110 n102 574 M=2
R12 n101 n107 750 M=4
R34 n104 n102 62
R32 n101 n105 65
R3 vccaux_io n102 5.07e3
R31 n101 n103 62
R5 vccaux_io n101 5.07e3
R8 out2 vss_io 3.393e3 M=6
R11 n108 n102 750 M=4
R33 n106 n102 65
R2 n101 out2 11.03e3
R4 n102 out1 11.03e3
R19 n114 n102 511
R20 n101 n115 574
R22 n116 n102 574
R21 n115 n116 574
R16 n101 n109 574 M=2
R17 n101 n111 701 M=2
R9 out1 vss_io 3.393e3 M=6
R10 n101 n113 511
R18 n112 n102 701 M=2
I5 vccaux_io n102 DC=573e-6
I0 vccaux_io n101 DC=573e-6
I2 n101 out2 DC=576e-6
I4 n102 out1 DC=576e-6
C11 n106 n105 330e-15
C22 n106 vss_io 30e-15
C23 n105 vss_io 30e-15
C19 n103 n104 530e-15
C18 n104 n103 530e-15
C10 n105 n106 330e-15
C17 out1 vss_io 70e-15
C16 out2 vss_io 70e-15
C12 n101 out2 40e-15
C13 n102 out1 40e-15
C20 n103 vss_io 30e-15
C21 n104 vss_io 30e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9975 min=0
.ends

*********************************************************************

********** SUBCKT for AC gain of 6.0db ******************************

.subckt hr_lvds_25_ac_coupled_ctle_6p0db_typ in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 5.2368e-12
cio2 in2 vss_io 5.2368e-12
r151 in1 n150 41
r152 in2 n150 41
r153 vccaux_io in1 3473
r154 in1 vss_io 3622
r155 vccaux_io in2 3473
r156 in2 vss_io 3622
C7 n102 vss_io 40e-15
C0 n101 vss_io 40e-15
I1 vccaux_io n102 DC=400e-6
I0 vccaux_io n101 DC=400e-6
I2 n101 out2 DC=400e-6
I4 n102 out1 DC=400e-6
E3 n119 vss_io VCVS n102 n101 500e-3
E2 n120 vss_io VCVS in2 in1 500e-3
E1 n117 vss_io VCVS n101 n102 500e-3
E0 n118 vss_io VCVS in1 in2 500e-3
R28 n111 n112 49
R24 n104 n102 80
R20 out2 vss_io 4.08e3 M=6
R22 n101 n105 90
R25 n101 n103 80
R23 n106 n102 90
R4 n102 out1 19.85e3
R8 vccaux_io n102 6.14e3
R5 vccaux_io n101 6.14e3
R2 n101 out2 19.85e3
R9 n112 n102 896 M=2
R12 n101 n115 734
R17 n110 n102 734 M=2
R18 n108 n102 961 M=4
R15 n101 n111 896 M=2
R16 n101 n109 734 M=2
R19 n101 n107 961 M=4
R10 n101 n113 653
R11 n114 n102 653
R13 n115 n116 734
R14 n116 n102 734
R21 out1 vss_io 4.08e3 M=6
G2 n102 out1 VCCS n119 n120 4.25e-3 MAX=400e-6 MIN=-400e-6
G0 n101 out2 VCCS n117 n118 4.25e-3 MAX=400e-6 MIN=-400e-6
C19 out2 vss_io 40e-15
C18 out1 vss_io 40e-15
C17 n105 vss_io 50e-15
C16 n106 vss_io 50e-15
C13 n102 out1 50e-15
C12 n101 out2 50e-15
C15 n104 vss_io 50e-15
C8 n103 n104 580e-15
C11 n106 n105 200e-15
C10 n105 n106 200e-15
C9 n104 n103 580e-15
C14 n103 vss_io 50e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.95 min=0
.ends

.subckt hr_lvds_25_ac_coupled_ctle_6p0db_min in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 5.0748e-12
cio2 in2 vss_io 5.0748e-12
r151 in1 n150 51
r152 in2 n150 51
r153 vccaux_io in1 3473
r154 in1 vss_io 3622
r155 vccaux_io in2 3473
r156 in2 vss_io 3622
C7 n102 vss_io 40e-15
C0 n101 vss_io 40e-15
I7 n102 out1 DC=296e-6
I2 n101 out2 DC=296e-6
I5 vccaux_io n102 DC=295e-6
I0 vccaux_io n101 DC=295e-6
E0 n118 vss_io VCVS in1 in2 500e-3
E1 n117 vss_io VCVS n101 n102 500e-3
E3 n119 vss_io VCVS n102 n101 500e-3
E2 n120 vss_io VCVS in2 in1 500e-3
R34 n102 out1 29.53e3
R2 n101 out2 29.53e3
R3 vccaux_io n102 7.55e3
R5 vccaux_io n101 7.55e3
R28 n111 n112 51
R24 n104 n102 80
R20 out2 vss_io 4.765e3 M=6
R22 n101 n105 90
R25 n101 n103 80
R23 n106 n102 90
R9 n112 n102 1.09e3 M=2
R12 n101 n115 893
R17 n110 n102 893 M=2
R18 n108 n102 1.1691e3 M=4
R15 n101 n111 1.09e3 M=2
R16 n101 n109 893 M=2
R19 n101 n107 1.1691e3 M=4
R10 n101 n113 794.5
R11 n114 n102 794.5
R13 n115 n116 893
R14 n116 n102 893
R21 out1 vss_io 4.765e3 M=6
G2 n102 out1 VCCS n119 n120 2.98e-3 MAX=296e-6 MIN=-296e-6
G0 n101 out2 VCCS n117 n118 2.98e-3 MAX=296e-6 MIN=-296e-6
C17 n105 vss_io 100e-15
C16 n106 vss_io 100e-15
C13 n102 out1 40e-15
C12 n101 out2 40e-15
C21 out1 vss_io 70e-15
C20 out2 vss_io 70e-15
C15 n104 vss_io 235e-15
C8 n103 n104 544e-15
C11 n106 n105 196e-15
C10 n105 n106 196e-15
C9 n104 n103 544e-15
C14 n103 vss_io 235e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9025 min=0
.ends

.subckt hr_lvds_25_ac_coupled_ctle_6p0db_max in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 5.7508e-12
cio2 in2 vss_io 5.7508e-12
r151 in1 n150 33
r152 in2 n150 33
r153 vccaux_io in1 3473
r154 in1 vss_io 3622
r155 vccaux_io in2 3473
r156 in2 vss_io 3622
C7 n102 vss_io 40e-15
C0 n101 vss_io 40e-15
E3 n119 vss_io VCVS n102 n101 500e-3
E2 n120 vss_io VCVS in2 in1 500e-3
E0 n118 vss_io VCVS in1 in2 500e-3
E1 n117 vss_io VCVS n101 n102 500e-3
G2 n102 out1 VCCS n119 n120 5.62e-3 MAX=576e-6 MIN=-576e-6
G0 n101 out2 VCCS n117 n118 5.62e-3 MAX=576e-6 MIN=-576e-6
R37 n111 n112 34
R15 n110 n102 574 M=2
R12 n101 n107 750 M=4
R34 n104 n102 62
R32 n101 n105 65
R3 vccaux_io n102 5.07e3
R31 n101 n103 62
R5 vccaux_io n101 5.07e3
R8 out2 vss_io 3.393e3 M=6
R11 n108 n102 750 M=4
R33 n106 n102 65
R2 n101 out2 11.03e3
R4 n102 out1 11.03e3
R19 n114 n102 511
R20 n101 n115 574
R22 n116 n102 574
R21 n115 n116 574
R16 n101 n109 574 M=2
R17 n101 n111 701 M=2
R9 out1 vss_io 3.393e3 M=6
R10 n101 n113 511
R18 n112 n102 701 M=2
I5 vccaux_io n102 DC=573e-6
I0 vccaux_io n101 DC=573e-6
I2 n101 out2 DC=576e-6
I4 n102 out1 DC=576e-6
C11 n106 n105 330e-15
C22 n106 vss_io 30e-15
C23 n105 vss_io 30e-15
C19 n103 n104 530e-15
C18 n104 n103 530e-15
C10 n105 n106 330e-15
C17 out1 vss_io 70e-15
C16 out2 vss_io 70e-15
C12 n101 out2 40e-15
C13 n102 out1 40e-15
C20 n103 vss_io 30e-15
C21 n104 vss_io 30e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9975 min=0
.ends

*********************************************************************

************End of subcircuits**************************************
