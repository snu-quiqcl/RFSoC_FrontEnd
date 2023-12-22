*************************************************************************
* IBIS-ISS file for CTLE for use in HPIO SGMII interface 
* CTLE SGMII is supported only with AC coupled LVDS_HP
*
* [File name] hp_lvds_ac_coupled_ctle.sp
* [File Rev] 1.0
* [Date]  Wed July 15 15:29:38 IST 2015
* [Source] Hspice simulations (ox20-0.5-2p3.lib: TT, SS, FF)
*
* [Notes]  Xilinx IBIS-ISS model for HPIO SGMII CTLE
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
*                          Component UltraScale HPIO
*************************************************************************
*
*
* UltraScale HPIO SGMII CTLE provides 4 options for AC Gain: 1.5db; 3.0db; 4.5db; 6.0db
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
* Sub-circuit names are in the format "hp_lvds_ac_coupled_ctle_AAAdb_DDD"
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

.subckt hp_lvds_ac_coupled_ctle_none_typ in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5689e-12
cio2 in2 vss_io 3.5689e-12
r151 in1 n150 43
r152 in2 n150 43
r153 vccaux_io in1 1240
r154 in1 vss_io 1435
r155 vccaux_io in2 1240
r156 in2 vss_io 1435
c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=400e-6
i0 vccaux_io n101 dc=400e-6
i2 n101 out2 dc=400e-6
i4 n102 out1 dc=400e-6
e3 n119 vss_io vcvs n102 n101 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e0 n118 vss_io vcvs in1 in2 500e-3
r29 n113 n114 94
r28 n111 n112 49
r27 n109 n110 100
r20 out2 vss_io 4.08e3 m=6
r4 n102 out1 19.85e3
r8 vccaux_io n102 6.14e3
r5 vccaux_io n101 6.14e3
r2 n101 out2 19.85e3
r9 n112 n102 896 m=2
r12 n101 n115 734
r17 n110 n102 734 m=2
r15 n101 n111 896 m=2
r16 n101 n109 734 m=2
r10 n101 n113 653
r11 n114 n102 653
r13 n115 n116 734
r14 n116 n102 734
r21 out1 vss_io 4.08e3 m=6
g2 n102 out1 vccs n119 n120 4.25e-3 max=400e-6 min=-400e-6
g0 n101 out2 vccs n117 n118 4.25e-3 max=400e-6 min=-400e-6
c19 out2 vss_io 40e-15
c18 out1 vss_io 40e-15
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 50e-15
c12 n101 out2 50e-15
c15 n104 vss_io 50e-15
c14 n103 vss_io 50e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.95 min=0
.ends

.subckt hp_lvds_ac_coupled_ctle_none_min in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5627e-12
cio2 in2 vss_io 3.5627e-12
r151 in1 n150 53
r152 in2 n150 53
r153 vccaux_io in1 1240
r154 in1 vss_io 1435
r155 vccaux_io in2 1240
r156 in2 vss_io 1435
c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i7 n102 out1 dc=296e-6
i2 n101 out2 dc=296e-6
i5 vccaux_io n102 dc=295e-6
i0 vccaux_io n101 dc=295e-6
e0 n118 vss_io vcvs in1 in2 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r34 n102 out1 29.53e3
r2 n101 out2 29.53e3
r3 vccaux_io n102 7.55e3
r5 vccaux_io n101 7.55e3
r30 n113 n114 100
r31 n109 n110 95
r28 n111 n112 51
r20 out2 vss_io 4.765e3 m=6
r9 n112 n102 1.09e3 m=2
r12 n101 n115 893
r17 n110 n102 893 m=2
r15 n101 n111 1.09e3 m=2
r16 n101 n109 893 m=2
r10 n101 n113 794.5
r11 n114 n102 794.5
r13 n115 n116 893
r14 n116 n102 893
r21 out1 vss_io 4.765e3 m=6
g2 n102 out1 vccs n119 n120 2.98e-3 max=296e-6 min=-296e-6
g0 n101 out2 vccs n117 n118 2.98e-3 max=296e-6 min=-296e-6
c17 n105 vss_io 100e-15
c16 n106 vss_io 100e-15
c13 n102 out1 40e-15
c12 n101 out2 40e-15
c21 out1 vss_io 70e-15
c20 out2 vss_io 70e-15
c15 n104 vss_io 235e-15
c14 n103 vss_io 235e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9025 min=0
.ends

.subckt hp_lvds_ac_coupled_ctle_none_max in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 36
r152 in2 n150 36
r153 vccaux_io in1 1240
r154 in1 vss_io 1435
r155 vccaux_io in2 1240
r156 in2 vss_io 1435
c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
e3 n119 vss_io vcvs n102 n101 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
e0 n118 vss_io vcvs in1 in2 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
g2 n102 out1 vccs n119 n120 5.62e-3 max=576e-6 min=-576e-6
g0 n101 out2 vccs n117 n118 5.62e-3 max=576e-6 min=-576e-6
r38 n109 n110 52
r37 n111 n112 34
r36 n113 n114 54
r15 n110 n102 574 m=2
r3 vccaux_io n102 5.07e3
r5 vccaux_io n101 5.07e3
r8 out2 vss_io 3.393e3 m=6
r2 n101 out2 11.03e3
r4 n102 out1 11.03e3
r19 n114 n102 511
r20 n101 n115 574
r22 n116 n102 574
r21 n115 n116 574
r16 n101 n109 574 m=2
r17 n101 n111 701 m=2
r9 out1 vss_io 3.393e3 m=6
r10 n101 n113 511
r18 n112 n102 701 m=2
i5 vccaux_io n102 dc=573e-6
i0 vccaux_io n101 dc=573e-6
i2 n101 out2 dc=576e-6
i4 n102 out1 dc=576e-6
c22 n106 vss_io 30e-15
c23 n105 vss_io 30e-15
c17 out1 vss_io 70e-15
c16 out2 vss_io 70e-15
c12 n101 out2 40e-15
c13 n102 out1 40e-15
c20 n103 vss_io 30e-15
c21 n104 vss_io 30e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9975 min=0
.ends

********** SUBCKT for AC gain of 1.5db **********************************

.subckt hp_lvds_ac_coupled_ctle_1p5db_typ in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5689e-12
cio2 in2 vss_io 3.5689e-12
r151 in1 n150 43
r152 in2 n150 43
r153 vccaux_io in1 1240
r154 in1 vss_io 1435
r155 vccaux_io in2 1240
r156 in2 vss_io 1435
c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=400e-6
i0 vccaux_io n101 dc=400e-6
i2 n101 out2 dc=400e-6
i4 n102 out1 dc=400e-6
e3 n119 vss_io vcvs n102 n101 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e0 n118 vss_io vcvs in1 in2 500e-3
r29 n113 n114 94
r28 n111 n112 49
r24 n104 n102 80
r27 n109 n110 100
r20 out2 vss_io 4.08e3 m=6
r22 n101 n105 90
r25 n101 n103 80
r23 n106 n102 90
r4 n102 out1 19.85e3
r8 vccaux_io n102 6.14e3
r5 vccaux_io n101 6.14e3
r2 n101 out2 19.85e3
r9 n112 n102 896 m=2
r12 n101 n115 734
r26 n107 n108 70
r17 n110 n102 734 m=2
r18 n108 n102 961 m=4
r15 n101 n111 896 m=2
r16 n101 n109 734 m=2
r19 n101 n107 961 m=4
r10 n101 n113 653
r11 n114 n102 653
r13 n115 n116 734
r14 n116 n102 734
r21 out1 vss_io 4.08e3 m=6
g2 n102 out1 vccs n119 n120 4.25e-3 max=400e-6 min=-400e-6
g0 n101 out2 vccs n117 n118 4.25e-3 max=400e-6 min=-400e-6
c19 out2 vss_io 40e-15
c18 out1 vss_io 40e-15
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 50e-15
c12 n101 out2 50e-15
c15 n104 vss_io 50e-15
c8 n103 n104 580e-15
c11 n106 n105 200e-15
c10 n105 n106 200e-15
c9 n104 n103 580e-15
c14 n103 vss_io 50e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.95 min=0
.ends

.subckt hp_lvds_ac_coupled_ctle_1p5db_min in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5627e-12
cio2 in2 vss_io 3.5627e-12
r151 in1 n150 53
r152 in2 n150 53
r153 vccaux_io in1 1240
r154 in1 vss_io 1435
r155 vccaux_io in2 1240
r156 in2 vss_io 1435
c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i7 n102 out1 dc=296e-6
i2 n101 out2 dc=296e-6
i5 vccaux_io n102 dc=295e-6
i0 vccaux_io n101 dc=295e-6
e0 n118 vss_io vcvs in1 in2 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r34 n102 out1 29.53e3
r2 n101 out2 29.53e3
r3 vccaux_io n102 7.55e3
r5 vccaux_io n101 7.55e3
r30 n113 n114 100
r31 n109 n110 95
r28 n111 n112 51
r32 n107 n108 88
r24 n104 n102 80
r20 out2 vss_io 4.765e3 m=6
r22 n101 n105 90
r25 n101 n103 80
r23 n106 n102 90
r9 n112 n102 1.09e3 m=2
r12 n101 n115 893
r17 n110 n102 893 m=2
r18 n108 n102 1.1691e3 m=4
r15 n101 n111 1.09e3 m=2
r16 n101 n109 893 m=2
r19 n101 n107 1.1691e3 m=4
r10 n101 n113 794.5
r11 n114 n102 794.5
r13 n115 n116 893
r14 n116 n102 893
r21 out1 vss_io 4.765e3 m=6
g2 n102 out1 vccs n119 n120 2.98e-3 max=296e-6 min=-296e-6
g0 n101 out2 vccs n117 n118 2.98e-3 max=296e-6 min=-296e-6
c17 n105 vss_io 100e-15
c16 n106 vss_io 100e-15
c13 n102 out1 40e-15
c12 n101 out2 40e-15
c21 out1 vss_io 70e-15
c20 out2 vss_io 70e-15
c15 n104 vss_io 235e-15
c8 n103 n104 544e-15
c11 n106 n105 196e-15
c10 n105 n106 196e-15
c9 n104 n103 544e-15
c14 n103 vss_io 235e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9025 min=0
.ends

.subckt hp_lvds_ac_coupled_ctle_1p5db_max in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 36
r152 in2 n150 36
r153 vccaux_io in1 1240
r154 in1 vss_io 1435
r155 vccaux_io in2 1240
r156 in2 vss_io 1435
c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
e3 n119 vss_io vcvs n102 n101 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
e0 n118 vss_io vcvs in1 in2 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
g2 n102 out1 vccs n119 n120 5.62e-3 max=576e-6 min=-576e-6
g0 n101 out2 vccs n117 n118 5.62e-3 max=576e-6 min=-576e-6
r38 n109 n110 52
r37 n111 n112 34
r36 n113 n114 54
r35 n107 n108 48
r15 n110 n102 574 m=2
r12 n101 n107 750 m=4
r34 n104 n102 62
r32 n101 n105 65
r3 vccaux_io n102 5.07e3
r31 n101 n103 62
r5 vccaux_io n101 5.07e3
r8 out2 vss_io 3.393e3 m=6
r11 n108 n102 750 m=4
r33 n106 n102 65
r2 n101 out2 11.03e3
r4 n102 out1 11.03e3
r19 n114 n102 511
r20 n101 n115 574
r22 n116 n102 574
r21 n115 n116 574
r16 n101 n109 574 m=2
r17 n101 n111 701 m=2
r9 out1 vss_io 3.393e3 m=6
r10 n101 n113 511
r18 n112 n102 701 m=2
i5 vccaux_io n102 dc=573e-6
i0 vccaux_io n101 dc=573e-6
i2 n101 out2 dc=576e-6
i4 n102 out1 dc=576e-6
c11 n106 n105 330e-15
c22 n106 vss_io 30e-15
c23 n105 vss_io 30e-15
c19 n103 n104 530e-15
c18 n104 n103 530e-15
c10 n105 n106 330e-15
c17 out1 vss_io 70e-15
c16 out2 vss_io 70e-15
c12 n101 out2 40e-15
c13 n102 out1 40e-15
c20 n103 vss_io 30e-15
c21 n104 vss_io 30e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9975 min=0
.ends
*********************************************************************

********** SUBCKT for AC gain of 3.0db ******************************

.subckt hp_lvds_ac_coupled_ctle_3p0db_typ in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5689e-12
cio2 in2 vss_io 3.5689e-12
r151 in1 n150 43
r152 in2 n150 43
r153 vccaux_io in1 1240
r154 in1 vss_io 1435
r155 vccaux_io in2 1240
r156 in2 vss_io 1435
c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=400e-6
i0 vccaux_io n101 dc=400e-6
i2 n101 out2 dc=400e-6
i4 n102 out1 dc=400e-6
e3 n119 vss_io vcvs n102 n101 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e0 n118 vss_io vcvs in1 in2 500e-3
r28 n111 n112 49
r24 n104 n102 80
r20 out2 vss_io 4.08e3 m=6
r22 n101 n105 90
r25 n101 n103 80
r23 n106 n102 90
r4 n102 out1 19.85e3
r8 vccaux_io n102 6.14e3
r5 vccaux_io n101 6.14e3
r2 n101 out2 19.85e3
r9 n112 n102 896 m=2
r12 n101 n115 734
r26 n107 n108 70
r17 n110 n102 734 m=2
r18 n108 n102 961 m=4
r15 n101 n111 896 m=2
r16 n101 n109 734 m=2
r19 n101 n107 961 m=4
r10 n101 n113 653
r11 n114 n102 653
r13 n115 n116 734
r14 n116 n102 734
r21 out1 vss_io 4.08e3 m=6
g2 n102 out1 vccs n119 n120 4.25e-3 max=400e-6 min=-400e-6
g0 n101 out2 vccs n117 n118 4.25e-3 max=400e-6 min=-400e-6
c19 out2 vss_io 40e-15
c18 out1 vss_io 40e-15
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 50e-15
c12 n101 out2 50e-15
c15 n104 vss_io 50e-15
c8 n103 n104 580e-15
c11 n106 n105 200e-15
c10 n105 n106 200e-15
c9 n104 n103 580e-15
c14 n103 vss_io 50e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.95 min=0
.ends

.subckt hp_lvds_ac_coupled_ctle_3p0db_min in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5627e-12
cio2 in2 vss_io 3.5627e-12
r151 in1 n150 53
r152 in2 n150 53
r153 vccaux_io in1 1240
r154 in1 vss_io 1435
r155 vccaux_io in2 1240
r156 in2 vss_io 1435
c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i7 n102 out1 dc=296e-6
i2 n101 out2 dc=296e-6
i5 vccaux_io n102 dc=295e-6
i0 vccaux_io n101 dc=295e-6
e0 n118 vss_io vcvs in1 in2 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r34 n102 out1 29.53e3
r2 n101 out2 29.53e3
r3 vccaux_io n102 7.55e3
r5 vccaux_io n101 7.55e3
r28 n111 n112 51
r32 n107 n108 88
r24 n104 n102 80
r20 out2 vss_io 4.765e3 m=6
r22 n101 n105 90
r25 n101 n103 80
r23 n106 n102 90
r9 n112 n102 1.09e3 m=2
r12 n101 n115 893
r17 n110 n102 893 m=2
r18 n108 n102 1.1691e3 m=4
r15 n101 n111 1.09e3 m=2
r16 n101 n109 893 m=2
r19 n101 n107 1.1691e3 m=4
r10 n101 n113 794.5
r11 n114 n102 794.5
r13 n115 n116 893
r14 n116 n102 893
r21 out1 vss_io 4.765e3 m=6
g2 n102 out1 vccs n119 n120 2.98e-3 max=296e-6 min=-296e-6
g0 n101 out2 vccs n117 n118 2.98e-3 max=296e-6 min=-296e-6
c17 n105 vss_io 100e-15
c16 n106 vss_io 100e-15
c13 n102 out1 40e-15
c12 n101 out2 40e-15
c21 out1 vss_io 70e-15
c20 out2 vss_io 70e-15
c15 n104 vss_io 235e-15
c8 n103 n104 544e-15
c11 n106 n105 196e-15
c10 n105 n106 196e-15
c9 n104 n103 544e-15
c14 n103 vss_io 235e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9025 min=0
.ends

.subckt hp_lvds_ac_coupled_ctle_3p0db_max in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 36
r152 in2 n150 36
r153 vccaux_io in1 1240
r154 in1 vss_io 1435
r155 vccaux_io in2 1240
r156 in2 vss_io 1435
c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
e3 n119 vss_io vcvs n102 n101 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
e0 n118 vss_io vcvs in1 in2 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
g2 n102 out1 vccs n119 n120 5.62e-3 max=576e-6 min=-576e-6
g0 n101 out2 vccs n117 n118 5.62e-3 max=576e-6 min=-576e-6
r37 n111 n112 34
r35 n107 n108 48
r15 n110 n102 574 m=2
r12 n101 n107 750 m=4
r34 n104 n102 62
r32 n101 n105 65
r3 vccaux_io n102 5.07e3
r31 n101 n103 62
r5 vccaux_io n101 5.07e3
r8 out2 vss_io 3.393e3 m=6
r11 n108 n102 750 m=4
r33 n106 n102 65
r2 n101 out2 11.03e3
r4 n102 out1 11.03e3
r19 n114 n102 511
r20 n101 n115 574
r22 n116 n102 574
r21 n115 n116 574
r16 n101 n109 574 m=2
r17 n101 n111 701 m=2
r9 out1 vss_io 3.393e3 m=6
r10 n101 n113 511
r18 n112 n102 701 m=2
i5 vccaux_io n102 dc=573e-6
i0 vccaux_io n101 dc=573e-6
i2 n101 out2 dc=576e-6
i4 n102 out1 dc=576e-6
c11 n106 n105 330e-15
c22 n106 vss_io 30e-15
c23 n105 vss_io 30e-15
c19 n103 n104 530e-15
c18 n104 n103 530e-15
c10 n105 n106 330e-15
c17 out1 vss_io 70e-15
c16 out2 vss_io 70e-15
c12 n101 out2 40e-15
c13 n102 out1 40e-15
c20 n103 vss_io 30e-15
c21 n104 vss_io 30e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9975 min=0
.ends
*********************************************************************

********** SUBCKT for AC gain of 4.5db ******************************

.subckt hp_lvds_ac_coupled_ctle_4p5db_typ in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5689e-12
cio2 in2 vss_io 3.5689e-12
r151 in1 n150 43
r152 in2 n150 43
r153 vccaux_io in1 1240
r154 in1 vss_io 1435
r155 vccaux_io in2 1240
r156 in2 vss_io 1435
c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=400e-6
i0 vccaux_io n101 dc=400e-6
i2 n101 out2 dc=400e-6
i4 n102 out1 dc=400e-6
e3 n119 vss_io vcvs n102 n101 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e0 n118 vss_io vcvs in1 in2 500e-3
r29 n113 n114 94
r28 n111 n112 49
r24 n104 n102 80
r20 out2 vss_io 4.08e3 m=6
r22 n101 n105 90
r25 n101 n103 80
r23 n106 n102 90
r4 n102 out1 19.85e3
r8 vccaux_io n102 6.14e3
r5 vccaux_io n101 6.14e3
r2 n101 out2 19.85e3
r9 n112 n102 896 m=2
r12 n101 n115 734
r17 n110 n102 734 m=2
r18 n108 n102 961 m=4
r15 n101 n111 896 m=2
r16 n101 n109 734 m=2
r19 n101 n107 961 m=4
r10 n101 n113 653
r11 n114 n102 653
r13 n115 n116 734
r14 n116 n102 734
r21 out1 vss_io 4.08e3 m=6
g2 n102 out1 vccs n119 n120 4.25e-3 max=400e-6 min=-400e-6
g0 n101 out2 vccs n117 n118 4.25e-3 max=400e-6 min=-400e-6
c19 out2 vss_io 40e-15
c18 out1 vss_io 40e-15
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 50e-15
c12 n101 out2 50e-15
c15 n104 vss_io 50e-15
c8 n103 n104 580e-15
c11 n106 n105 200e-15
c10 n105 n106 200e-15
c9 n104 n103 580e-15
c14 n103 vss_io 50e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.95 min=0
.ends

.subckt hp_lvds_ac_coupled_ctle_4p5db_min in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5627e-12
cio2 in2 vss_io 3.5627e-12
r151 in1 n150 53
r152 in2 n150 53
r153 vccaux_io in1 1240
r154 in1 vss_io 1435
r155 vccaux_io in2 1240
r156 in2 vss_io 1435
c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i7 n102 out1 dc=296e-6
i2 n101 out2 dc=296e-6
i5 vccaux_io n102 dc=295e-6
i0 vccaux_io n101 dc=295e-6
e0 n118 vss_io vcvs in1 in2 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r34 n102 out1 29.53e3
r2 n101 out2 29.53e3
r3 vccaux_io n102 7.55e3
r5 vccaux_io n101 7.55e3
r30 n113 n114 100
r28 n111 n112 51
r24 n104 n102 80
r20 out2 vss_io 4.765e3 m=6
r22 n101 n105 90
r25 n101 n103 80
r23 n106 n102 90
r9 n112 n102 1.09e3 m=2
r12 n101 n115 893
r17 n110 n102 893 m=2
r18 n108 n102 1.1691e3 m=4
r15 n101 n111 1.09e3 m=2
r16 n101 n109 893 m=2
r19 n101 n107 1.1691e3 m=4
r10 n101 n113 794.5
r11 n114 n102 794.5
r13 n115 n116 893
r14 n116 n102 893
r21 out1 vss_io 4.765e3 m=6
g2 n102 out1 vccs n119 n120 2.98e-3 max=296e-6 min=-296e-6
g0 n101 out2 vccs n117 n118 2.98e-3 max=296e-6 min=-296e-6
c17 n105 vss_io 100e-15
c16 n106 vss_io 100e-15
c13 n102 out1 40e-15
c12 n101 out2 40e-15
c21 out1 vss_io 70e-15
c20 out2 vss_io 70e-15
c15 n104 vss_io 235e-15
c8 n103 n104 544e-15
c11 n106 n105 196e-15
c10 n105 n106 196e-15
c9 n104 n103 544e-15
c14 n103 vss_io 235e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9025 min=0
.ends

.subckt hp_lvds_ac_coupled_ctle_4p5db_max in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 36
r152 in2 n150 36
r153 vccaux_io in1 1240
r154 in1 vss_io 1435
r155 vccaux_io in2 1240
r156 in2 vss_io 1435
c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
e3 n119 vss_io vcvs n102 n101 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
e0 n118 vss_io vcvs in1 in2 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
g2 n102 out1 vccs n119 n120 5.62e-3 max=576e-6 min=-576e-6
g0 n101 out2 vccs n117 n118 5.62e-3 max=576e-6 min=-576e-6
r37 n111 n112 34
r36 n113 n114 54
r15 n110 n102 574 m=2
r12 n101 n107 750 m=4
r34 n104 n102 62
r32 n101 n105 65
r3 vccaux_io n102 5.07e3
r31 n101 n103 62
r5 vccaux_io n101 5.07e3
r8 out2 vss_io 3.393e3 m=6
r11 n108 n102 750 m=4
r33 n106 n102 65
r2 n101 out2 11.03e3
r4 n102 out1 11.03e3
r19 n114 n102 511
r20 n101 n115 574
r22 n116 n102 574
r21 n115 n116 574
r16 n101 n109 574 m=2
r17 n101 n111 701 m=2
r9 out1 vss_io 3.393e3 m=6
r10 n101 n113 511
r18 n112 n102 701 m=2
i5 vccaux_io n102 dc=573e-6
i0 vccaux_io n101 dc=573e-6
i2 n101 out2 dc=576e-6
i4 n102 out1 dc=576e-6
c11 n106 n105 330e-15
c22 n106 vss_io 30e-15
c23 n105 vss_io 30e-15
c19 n103 n104 530e-15
c18 n104 n103 530e-15
c10 n105 n106 330e-15
c17 out1 vss_io 70e-15
c16 out2 vss_io 70e-15
c12 n101 out2 40e-15
c13 n102 out1 40e-15
c20 n103 vss_io 30e-15
c21 n104 vss_io 30e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9975 min=0
.ends
*********************************************************************

********** SUBCKT for AC gain of 6.0db ******************************

.subckt hp_lvds_ac_coupled_ctle_6p0db_typ in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5689e-12
cio2 in2 vss_io 3.5689e-12
r151 in1 n150 43
r152 in2 n150 43
r153 vccaux_io in1 1240
r154 in1 vss_io 1435
r155 vccaux_io in2 1240
r156 in2 vss_io 1435
c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=400e-6
i0 vccaux_io n101 dc=400e-6
i2 n101 out2 dc=400e-6
i4 n102 out1 dc=400e-6
e3 n119 vss_io vcvs n102 n101 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e0 n118 vss_io vcvs in1 in2 500e-3
r28 n111 n112 49
r24 n104 n102 80
r20 out2 vss_io 4.08e3 m=6
r22 n101 n105 90
r25 n101 n103 80
r23 n106 n102 90
r4 n102 out1 19.85e3
r8 vccaux_io n102 6.14e3
r5 vccaux_io n101 6.14e3
r2 n101 out2 19.85e3
r9 n112 n102 896 m=2
r12 n101 n115 734
r17 n110 n102 734 m=2
r18 n108 n102 961 m=4
r15 n101 n111 896 m=2
r16 n101 n109 734 m=2
r19 n101 n107 961 m=4
r10 n101 n113 653
r11 n114 n102 653
r13 n115 n116 734
r14 n116 n102 734
r21 out1 vss_io 4.08e3 m=6
g2 n102 out1 vccs n119 n120 4.25e-3 max=400e-6 min=-400e-6
g0 n101 out2 vccs n117 n118 4.25e-3 max=400e-6 min=-400e-6
c19 out2 vss_io 40e-15
c18 out1 vss_io 40e-15
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 50e-15
c12 n101 out2 50e-15
c15 n104 vss_io 50e-15
c8 n103 n104 580e-15
c11 n106 n105 200e-15
c10 n105 n106 200e-15
c9 n104 n103 580e-15
c14 n103 vss_io 50e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.95 min=0
.ends

.subckt hp_lvds_ac_coupled_ctle_6p0db_min in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5627e-12
cio2 in2 vss_io 3.5627e-12
r151 in1 n150 53
r152 in2 n150 53
r153 vccaux_io in1 1240
r154 in1 vss_io 1435
r155 vccaux_io in2 1240
r156 in2 vss_io 1435
c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i7 n102 out1 dc=296e-6
i2 n101 out2 dc=296e-6
i5 vccaux_io n102 dc=295e-6
i0 vccaux_io n101 dc=295e-6
e0 n118 vss_io vcvs in1 in2 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r34 n102 out1 29.53e3
r2 n101 out2 29.53e3
r3 vccaux_io n102 7.55e3
r5 vccaux_io n101 7.55e3
r28 n111 n112 51
r24 n104 n102 80
r20 out2 vss_io 4.765e3 m=6
r22 n101 n105 90
r25 n101 n103 80
r23 n106 n102 90
r9 n112 n102 1.09e3 m=2
r12 n101 n115 893
r17 n110 n102 893 m=2
r18 n108 n102 1.1691e3 m=4
r15 n101 n111 1.09e3 m=2
r16 n101 n109 893 m=2
r19 n101 n107 1.1691e3 m=4
r10 n101 n113 794.5
r11 n114 n102 794.5
r13 n115 n116 893
r14 n116 n102 893
r21 out1 vss_io 4.765e3 m=6
g2 n102 out1 vccs n119 n120 2.98e-3 max=296e-6 min=-296e-6
g0 n101 out2 vccs n117 n118 2.98e-3 max=296e-6 min=-296e-6
c17 n105 vss_io 100e-15
c16 n106 vss_io 100e-15
c13 n102 out1 40e-15
c12 n101 out2 40e-15
c21 out1 vss_io 70e-15
c20 out2 vss_io 70e-15
c15 n104 vss_io 235e-15
c8 n103 n104 544e-15
c11 n106 n105 196e-15
c10 n105 n106 196e-15
c9 n104 n103 544e-15
c14 n103 vss_io 235e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9025 min=0

.ends

.subckt hp_lvds_ac_coupled_ctle_6p0db_max in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 36
r152 in2 n150 36
r153 vccaux_io in1 1240
r154 in1 vss_io 1435
r155 vccaux_io in2 1240
r156 in2 vss_io 1435
c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
e3 n119 vss_io vcvs n102 n101 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
e0 n118 vss_io vcvs in1 in2 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
g2 n102 out1 vccs n119 n120 5.62e-3 max=576e-6 min=-576e-6
g0 n101 out2 vccs n117 n118 5.62e-3 max=576e-6 min=-576e-6
r37 n111 n112 34
r15 n110 n102 574 m=2
r12 n101 n107 750 m=4
r34 n104 n102 62
r32 n101 n105 65
r3 vccaux_io n102 5.07e3
r31 n101 n103 62
r5 vccaux_io n101 5.07e3
r8 out2 vss_io 3.393e3 m=6
r11 n108 n102 750 m=4
r33 n106 n102 65
r2 n101 out2 11.03e3
r4 n102 out1 11.03e3
r19 n114 n102 511
r20 n101 n115 574
r22 n116 n102 574
r21 n115 n116 574
r16 n101 n109 574 m=2
r17 n101 n111 701 m=2
r9 out1 vss_io 3.393e3 m=6
r10 n101 n113 511
r18 n112 n102 701 m=2
i5 vccaux_io n102 dc=573e-6
i0 vccaux_io n101 dc=573e-6
i2 n101 out2 dc=576e-6
i4 n102 out1 dc=576e-6
c11 n106 n105 330e-15
c22 n106 vss_io 30e-15
c23 n105 vss_io 30e-15
c19 n103 n104 530e-15
c18 n104 n103 530e-15
c10 n105 n106 330e-15
c17 out1 vss_io 70e-15
c16 out2 vss_io 70e-15
c12 n101 out2 40e-15
c13 n102 out1 40e-15
c20 n103 vss_io 30e-15
c21 n104 vss_io 30e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9975 min=0
.ends
*********************************************************************

************End of subcircuits**************************************
