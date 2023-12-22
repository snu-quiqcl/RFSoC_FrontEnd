*************************************************************************
* IBIS-ISS file for CTLE for use in HPIO SGMII interface 
* CTLE SGMII is supported only with AC coupled LVDS_HP
*
* [File name] hp_lvds_ac_coupled_ctle.sp
* [File Rev] 0.2
* [Date]  Mon Nov 02 22:29:38 IST 2015
* [Source] Hspice simulations (ox16-1.0-2p4.lib: TT, SS, FF)
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
*                          Component UltraScale Plus HPIO
*************************************************************************
*
*
* UltraScale HPIO SGMII CTLE provides 5 options for AC Gain: LEVEL0; LEVEL1; LEVEL2; LEVEL3; LEVEL4;
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
* Sub-circuit names are in the format "hp_lvds_ac_coupled_ctle_LEVELX_DDD"
* 
* LEVELX:  level0 or level1 or level2 or level3 or level4 (Identifies the CTLE gain level.)
* DDD:  typ or min or max        (Identifies the simulation parameters. Example: typ requires typical temperature and typical voltage)
*
* Model usage: connect in1, in2 ports to the Xilinx FPGA package pin model on receive side of the channel. 
* out1 and out2 are the 180degree phase shifted differential outputs of the CTLE circuit.
* out3 is the output of the receiver circuit. 
*
* Receiver pad capacitance is included in the model.
*
* User is required to include appropriate package model in the simulation. This information is available on www.xilinx.com
*
*
********** SUBCKT for CTLE LEVEL0**********************************

.subckt hp_lvds_ac_coupled_ctle_level0_typ in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 43.5
r152 in2 n150 43.5
r153 vccaux_io in1 170
r154 in1 vss_io 188
r155 vccaux_io in2 170
r156 in2 vss_io 188
C2 out2 vss_io 132e-15
C3 out1 vss_io 132e-15
I4 vccaux_io n101 DC=366e-6
I1 n101 out2 DC=381e-6
I5 vccaux_io n102 DC=366e-6
I0 n102 out1 DC=381e-6
I2 vccaux_io out2 DC=40e-6
I3 vccaux_io out1 DC=40e-6
C5 n103 n104 745e-15
C0 n102 out1 50e-15
C4 n105 n106 452e-15
C1 n101 out2 50e-15
G0 n102 out1 VCCS n109 n107 4.72e-3 MAX=400e-6 MIN=-400e-6 M=1
G1 n101 out2 VCCS n110 n108 4.72e-3 MAX=400e-6 MIN=-400e-6 M=1
E1 n108 vss_io VCVS in1 in2 500e-3
E2 n109 vss_io VCVS n102 n101 500e-3
E5 out3 vss_io VCVS out1 out2 1e3 MAX=850e-3 MIN=0
E3 n110 vss_io VCVS n101 n102 500e-3
E0 n107 vss_io VCVS in2 in1 500e-3
R7 n101 n103 34.75
R4 n101 n102 160
R6 n106 n102 43.4
R0 n102 out1 87.7e3
R5 n101 n105 43.4
R2 out2 vss_io 402
R1 n101 out2 87.7e3
R9 vccaux_io n101 31.2e3
R8 n104 n102 34.75
R10 vccaux_io n102 31.2e3
R3 out1 vss_io 402
.ends hp_lvds_ac_coupled_ctle_level0_typ

.subckt hp_lvds_ac_coupled_ctle_level0_min in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 52.355
r152 in2 n150 52.355
r153 vccaux_io in1 170
r154 in1 vss_io 188
r155 vccaux_io in2 170
r156 in2 vss_io 188
C2 out2 vss_io 133e-15
C3 out1 vss_io 133e-15
I2 vccaux_io out2 DC=30.8e-6
I3 vccaux_io out1 DC=30.8e-6
I4 vccaux_io n101 DC=295e-6
I1 n101 out2 DC=304.9e-6
I5 vccaux_io n102 DC=295e-6
I0 n102 out1 DC=304.9e-6
C5 n103 n104 871e-15
C0 n102 out1 50e-15
C4 n105 n106 531e-15
C1 n101 out2 50e-15
G0 n102 out1 VCCS _net0 _net1 3.459e-3 MAX=400e-6 MIN=-400e-6 M=1
G1 n101 out2 VCCS n110 n108 3.459e-3 MAX=400e-6 MIN=-400e-6 M=1
E5 out3 vss_io VCVS out1 out2 1e3 MAX=850e-3 MIN=0
E0 _net1 vss_io VCVS in2 in1 500e-3
E1 n108 vss_io VCVS in1 in2 500e-3
E2 _net0 vss_io VCVS n102 n101 500e-3
E3 n110 vss_io VCVS n101 n102 500e-3
R3 out1 vss_io 455
R1 n101 out2 118e3
R7 n101 n103 49.5
R4 n101 n102 180
R9 vccaux_io n101 21.7e3
R0 n102 out1 118e3
R5 n101 n105 61.88
R6 n106 n102 61.88
R8 n104 n102 49.5
R2 out2 vss_io 455
R10 vccaux_io n102 21.7e3
.ends hp_lvds_ac_coupled_ctle_level0_min

.subckt hp_lvds_ac_coupled_ctle_level0_max in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 37.35
r152 in2 n150 37.35
r153 vccaux_io in1 170
r154 in1 vss_io 188
r155 vccaux_io in2 170
r156 in2 vss_io 188
C2 out2 vss_io 102e-15
C3 out1 vss_io 102e-15
I2 vccaux_io out2 DC=54.8e-6
I3 vccaux_io out1 DC=54.8e-6
I4 vccaux_io n101 DC=482e-6
I1 n101 out2 DC=479.3e-6
I5 vccaux_io n102 DC=482e-6
I0 n102 out1 DC=479.3e-6
C5 n103 n104 672e-15
C0 n102 out1 50e-15
C4 n105 n106 410e-15
C1 n101 out2 50e-15
G0 n102 out1 VCCS _net0 _net1 5.888e-3 MAX=500e-6 MIN=-500e-6 M=1
G1 n101 out2 VCCS n110 n108 5.888e-3 MAX=500e-6 MIN=-500e-6 M=1
E5 out3 vss_io VCVS out1 out2 1e3 MAX=892.5e-3 MIN=0
E0 _net1 vss_io VCVS in2 in1 500e-3
E1 n108 vss_io VCVS in1 in2 500e-3
E2 _net0 vss_io VCVS n102 n101 500e-3
E3 n110 vss_io VCVS n101 n102 500e-3
R3 out1 vss_io 349
R1 n101 out2 63.2e3
R7 n101 n103 28.77
R4 n101 n102 138
R9 vccaux_io n101 31.7e3
R0 n102 out1 63.2e3
R5 n101 n105 35.96
R6 n106 n102 35.96
R8 n104 n102 28.77
R2 out2 vss_io 349
R10 vccaux_io n102 31.7e3
.ends hp_lvds_ac_coupled_ctle_level0_max

**************************************************************************************
********** SUBCKT for CTLE LEVEL1 ****************************************************
.subckt hp_lvds_ac_coupled_ctle_level1_typ in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 43.5
r152 in2 n150 43.5
r153 vccaux_io in1 170
r154 in1 vss_io 188
r155 vccaux_io in2 170
r156 in2 vss_io 188
C2 out2 vss_io 132e-15
C3 out1 vss_io 132e-15
I4 vccaux_io n101 DC=366e-6
I1 n101 out2 DC=381e-6
I5 vccaux_io n102 DC=366e-6
I0 n102 out1 DC=381e-6
I2 vccaux_io out2 DC=40e-6
I3 vccaux_io out1 DC=40e-6
C5 n103 n104 745e-15
C0 n102 out1 50e-15
C4 n105 n106 452e-15
C1 n101 out2 50e-15
G0 n102 out1 VCCS n109 n107 4.72e-3 MAX=400e-6 MIN=-400e-6 M=1
G1 n101 out2 VCCS n110 n108 4.72e-3 MAX=400e-6 MIN=-400e-6 M=1
E1 n108 vss_io VCVS in1 in2 500e-3
E2 n109 vss_io VCVS n102 n101 500e-3
E5 out3 vss_io VCVS out1 out2 1e3 MAX=850e-3 MIN=0
E3 n110 vss_io VCVS n101 n102 500e-3
E0 n107 vss_io VCVS in2 in1 500e-3
R7 n101 n103 34.75
R4 n101 n102 160
R6 n106 n102 43.4
R0 n102 out1 87.7e3
R5 n101 n105 43.4
R2 out2 vss_io 402
R1 n101 out2 87.7e3
R9 vccaux_io n101 31.2e3
R8 n104 n102 34.75
R10 vccaux_io n102 31.2e3
R3 out1 vss_io 402
.ends hp_lvds_ac_coupled_ctle_level1_typ

.subckt hp_lvds_ac_coupled_ctle_level1_min in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 52.355
r152 in2 n150 52.355
r153 vccaux_io in1 170
r154 in1 vss_io 188
r155 vccaux_io in2 170
r156 in2 vss_io 188
C2 out2 vss_io 133e-15
C3 out1 vss_io 133e-15
I2 vccaux_io out2 DC=30.8e-6
I3 vccaux_io out1 DC=30.8e-6
I4 vccaux_io n101 DC=295e-6
I1 n101 out2 DC=304.9e-6
I5 vccaux_io n102 DC=295e-6
I0 n102 out1 DC=304.9e-6
C5 n103 n104 871e-15
C0 n102 out1 50e-15
C4 n105 n106 531e-15
C1 n101 out2 50e-15
G0 n102 out1 VCCS _net0 _net1 3.459e-3 MAX=400e-6 MIN=-400e-6 M=1
G1 n101 out2 VCCS n110 n108 3.459e-3 MAX=400e-6 MIN=-400e-6 M=1
E5 out3 vss_io VCVS out1 out2 1e3 MAX=850e-3 MIN=0
E0 _net1 vss_io VCVS in2 in1 500e-3
E1 n108 vss_io VCVS in1 in2 500e-3
E2 _net0 vss_io VCVS n102 n101 500e-3
E3 n110 vss_io VCVS n101 n102 500e-3
R3 out1 vss_io 455
R1 n101 out2 118e3
R7 n101 n103 49.5
R4 n101 n102 180
R9 vccaux_io n101 21.7e3
R0 n102 out1 118e3
R5 n101 n105 61.88
R6 n106 n102 61.88
R8 n104 n102 49.5
R2 out2 vss_io 455
R10 vccaux_io n102 21.7e3
.ends hp_lvds_ac_coupled_ctle_level1_min

.subckt hp_lvds_ac_coupled_ctle_level1_max in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 37.35
r152 in2 n150 37.35
r153 vccaux_io in1 170
r154 in1 vss_io 188
r155 vccaux_io in2 170
r156 in2 vss_io 188
C2 out2 vss_io 102e-15
C3 out1 vss_io 102e-15
I2 vccaux_io out2 DC=54.8e-6
I3 vccaux_io out1 DC=54.8e-6
I4 vccaux_io n101 DC=482e-6
I1 n101 out2 DC=479.3e-6
I5 vccaux_io n102 DC=482e-6
I0 n102 out1 DC=479.3e-6
C5 n103 n104 672e-15
C0 n102 out1 50e-15
C4 n105 n106 410e-15
C1 n101 out2 50e-15
G0 n102 out1 VCCS _net0 _net1 5.888e-3 MAX=500e-6 MIN=-500e-6 M=1
G1 n101 out2 VCCS n110 n108 5.888e-3 MAX=500e-6 MIN=-500e-6 M=1
E5 out3 vss_io VCVS out1 out2 1e3 MAX=892.5e-3 MIN=0
E0 _net1 vss_io VCVS in2 in1 500e-3
E1 n108 vss_io VCVS in1 in2 500e-3
E2 _net0 vss_io VCVS n102 n101 500e-3
E3 n110 vss_io VCVS n101 n102 500e-3
R3 out1 vss_io 349
R1 n101 out2 63.2e3
R7 n101 n103 28.77
R4 n101 n102 138
R9 vccaux_io n101 31.7e3
R0 n102 out1 63.2e3
R5 n101 n105 35.96
R6 n106 n102 35.96
R8 n104 n102 28.77
R2 out2 vss_io 349
R10 vccaux_io n102 31.7e3
.ends hp_lvds_ac_coupled_ctle_level1_max

**************************************************************************************
********** SUBCKT for CTLE LEVEL2 ****************************************************
.subckt hp_lvds_ac_coupled_ctle_level2_typ in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 43.5
r152 in2 n150 43.5
r153 vccaux_io in1 170
r154 in1 vss_io 188
r155 vccaux_io in2 170
r156 in2 vss_io 188
C2 out2 vss_io 114e-15
C3 out1 vss_io 114e-15
I4 vccaux_io n101 DC=366e-6
I1 n101 out2 DC=381e-6
I5 vccaux_io n102 DC=366e-6
I0 n102 out1 DC=381e-6
I2 vccaux_io out2 DC=40e-6
I3 vccaux_io out1 DC=40e-6
C5 n103 n104 745e-15
C0 n102 out1 50e-15
C4 n105 n106 452e-15
C1 n101 out2 50e-15
G0 n102 out1 VCCS n109 n107 4.72e-3 MAX=400e-6 MIN=-400e-6 M=1
G1 n101 out2 VCCS n110 n108 4.72e-3 MAX=400e-6 MIN=-400e-6 M=1
E5 out3 vss_io VCVS out1 out2 1e3 MAX=850e-3 MIN=0
E1 n108 vss_io VCVS in1 in2 500e-3
E2 n109 vss_io VCVS n102 n101 500e-3
E3 n110 vss_io VCVS n101 n102 500e-3
E0 n107 vss_io VCVS in2 in1 500e-3
R7 n101 n103 34.75
R4 n101 n102 329
R6 n106 n102 43.4
R0 n102 out1 87.7e3
R5 n101 n105 43.4
R2 out2 vss_io 398.7
R1 n101 out2 87.7e3
R9 vccaux_io n101 31.2e3
R8 n104 n102 34.75
R10 vccaux_io n102 31.2e3
R3 out1 vss_io 398.7
.ends hp_lvds_ac_coupled_ctle_level2_typ

.subckt hp_lvds_ac_coupled_ctle_level2_min in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 52.355
r152 in2 n150 52.355
r153 vccaux_io in1 170
r154 in1 vss_io 188
r155 vccaux_io in2 170
r156 in2 vss_io 188
C2 out2 vss_io 130e-15
C3 out1 vss_io 130e-15
I2 vccaux_io out2 DC=30.8e-6
I3 vccaux_io out1 DC=30.8e-6
I4 vccaux_io n101 DC=295e-6
I1 n101 out2 DC=304.9e-6
I5 vccaux_io n102 DC=295e-6
I0 n102 out1 DC=304.9e-6
C5 n103 n104 871e-15
C0 n102 out1 50e-15
C4 n105 n106 531e-15
C1 n101 out2 50e-15
G0 n102 out1 VCCS _net0 _net1 3.459e-3 MAX=400e-6 MIN=-400e-6 M=1
G1 n101 out2 VCCS n110 n108 3.459e-3 MAX=400e-6 MIN=-400e-6 M=1
E5 out3 vss_io VCVS out1 out2 1e3 MAX=850e-3 MIN=0
E0 _net1 vss_io VCVS in2 in1 500e-3
E1 n108 vss_io VCVS in1 in2 500e-3
E2 _net0 vss_io VCVS n102 n101 500e-3
E3 n110 vss_io VCVS n101 n102 500e-3
R3 out1 vss_io 455
R1 n101 out2 118e3
R7 n101 n103 49.5
R4 n101 n102 380
R9 vccaux_io n101 21.7e3
R0 n102 out1 118e3
R5 n101 n105 61.88
R6 n106 n102 61.88
R8 n104 n102 49.5
R2 out2 vss_io 455
R10 vccaux_io n102 21.7e3
.ends hp_lvds_ac_coupled_ctle_level2_min

.subckt hp_lvds_ac_coupled_ctle_level2_max in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 37.35
r152 in2 n150 37.35
r153 vccaux_io in1 170
r154 in1 vss_io 188
r155 vccaux_io in2 170
r156 in2 vss_io 188
C2 out2 vss_io 109e-15
C3 out1 vss_io 109e-15
I2 vccaux_io out2 DC=54.8e-6
I3 vccaux_io out1 DC=54.8e-6
I4 vccaux_io n101 DC=482e-6
I1 n101 out2 DC=479.3e-6
I5 vccaux_io n102 DC=482e-6
I0 n102 out1 DC=479.3e-6
C5 n103 n104 672e-15
C0 n102 out1 50e-15
C4 n105 n106 410e-15
C1 n101 out2 50e-15
G0 n102 out1 VCCS _net0 _net1 5.888e-3 MAX=500e-6 MIN=-500e-6 M=1
G1 n101 out2 VCCS n110 n108 5.888e-3 MAX=500e-6 MIN=-500e-6 M=1
E5 out3 vss_io VCVS out1 out2 1e3 MAX=892.5e-3 MIN=0
E0 _net1 vss_io VCVS in2 in1 500e-3
E1 n108 vss_io VCVS in1 in2 500e-3
E2 _net0 vss_io VCVS n102 n101 500e-3
E3 n110 vss_io VCVS n101 n102 500e-3
R3 out1 vss_io 354
R1 n101 out2 63.2e3
R7 n101 n103 28.77
R4 n101 n102 297
R9 vccaux_io n101 31.7e3
R0 n102 out1 63.2e3
R5 n101 n105 35.96
R6 n106 n102 35.96
R8 n104 n102 28.77
R2 out2 vss_io 354
R10 vccaux_io n102 31.7e3
.ends hp_lvds_ac_coupled_ctle_level2_max

**************************************************************************************
********** SUBCKT for CTLE LEVEL3 ****************************************************
.subckt hp_lvds_ac_coupled_ctle_level3_typ in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 43.5
r152 in2 n150 43.5
r153 vccaux_io in1 170
r154 in1 vss_io 188
r155 vccaux_io in2 170
r156 in2 vss_io 188
C2 out2 vss_io 112e-15
C3 out1 vss_io 112e-15
I4 vccaux_io n101 DC=366e-6
I1 n101 out2 DC=381e-6
I5 vccaux_io n102 DC=366e-6
I0 n102 out1 DC=381e-6
I2 vccaux_io out2 DC=40e-6
I3 vccaux_io out1 DC=40e-6
C5 n103 n104 745e-15
C0 n102 out1 50e-15
C4 n105 n106 452e-15
C1 n101 out2 50e-15
G0 n102 out1 VCCS n109 n107 4.72e-3 MAX=400e-6 MIN=-400e-6 M=1
G1 n101 out2 VCCS n110 n108 4.72e-3 MAX=400e-6 MIN=-400e-6 M=1
E5 out3 vss_io VCVS out1 out2 1e3 MAX=850e-3 MIN=0
E1 n108 vss_io VCVS in1 in2 500e-3
E2 n109 vss_io VCVS n102 n101 500e-3
E3 n110 vss_io VCVS n101 n102 500e-3
E0 n107 vss_io VCVS in2 in1 500e-3
R7 n101 n103 34.75
R4 n101 n102 883
R6 n106 n102 43.4
R0 n102 out1 87.7e3
R5 n101 n105 43.4
R2 out2 vss_io 398.7
R1 n101 out2 87.7e3
R9 vccaux_io n101 31.2e3
R8 n104 n102 34.75
R10 vccaux_io n102 31.2e3
R3 out1 vss_io 398.7
.ends hp_lvds_ac_coupled_ctle_level3_typ

.subckt hp_lvds_ac_coupled_ctle_level3_min in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 52.355
r152 in2 n150 52.355
r153 vccaux_io in1 170
r154 in1 vss_io 188
r155 vccaux_io in2 170
r156 in2 vss_io 188
C2 out2 vss_io 122e-15
C3 out1 vss_io 122e-15
I2 vccaux_io out2 DC=30.8e-6
I3 vccaux_io out1 DC=30.8e-6
I4 vccaux_io n101 DC=295e-6
I1 n101 out2 DC=304.9e-6
I5 vccaux_io n102 DC=295e-6
I0 n102 out1 DC=304.9e-6
C5 n103 n104 871e-15
C0 n102 out1 50e-15
C4 n105 n106 531e-15
C1 n101 out2 50e-15
G0 n102 out1 VCCS _net0 _net1 3.459e-3 MAX=400e-6 MIN=-400e-6 M=1
G1 n101 out2 VCCS n110 n108 3.459e-3 MAX=400e-6 MIN=-400e-6 M=1
E0 _net1 vss_io VCVS in2 in1 500e-3
E5 out3 vss_io VCVS out1 out2 1e3 MAX=850e-3 MIN=0
E1 n108 vss_io VCVS in1 in2 500e-3
E2 _net0 vss_io VCVS n102 n101 500e-3
E3 n110 vss_io VCVS n101 n102 500e-3
R3 out1 vss_io 455
R1 n101 out2 118e3
R7 n101 n103 49.5
R4 n101 n102 642
R9 vccaux_io n101 21.7e3
R0 n102 out1 118e3
R5 n101 n105 61.88
R6 n106 n102 61.88
R8 n104 n102 49.5
R2 out2 vss_io 455
R10 vccaux_io n102 21.7e3
.ends hp_lvds_ac_coupled_ctle_level3_min

.subckt hp_lvds_ac_coupled_ctle_level3_max in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 37.35
r152 in2 n150 37.35
r153 vccaux_io in1 170
r154 in1 vss_io 188
r155 vccaux_io in2 170
r156 in2 vss_io 188
C2 out2 vss_io 111e-15
C3 out1 vss_io 111e-15
I2 vccaux_io out2 DC=54.8e-6
I3 vccaux_io out1 DC=54.8e-6
I4 vccaux_io n101 DC=482e-6
I1 n101 out2 DC=479.3e-6
I5 vccaux_io n102 DC=482e-6
I0 n102 out1 DC=479.3e-6
C5 n103 n104 672e-15
C0 n102 out1 50e-15
C4 n105 n106 410e-15
C1 n101 out2 50e-15
G0 n102 out1 VCCS _net0 _net1 5.888e-3 MAX=500e-6 MIN=-500e-6 M=1
G1 n101 out2 VCCS n110 n108 5.888e-3 MAX=500e-6 MIN=-500e-6 M=1
E0 _net1 vss_io VCVS in2 in1 500e-3
E5 out3 vss_io VCVS out1 out2 1e3 MAX=892.5e-3 MIN=0
E1 n108 vss_io VCVS in1 in2 500e-3
E2 _net0 vss_io VCVS n102 n101 500e-3
E3 n110 vss_io VCVS n101 n102 500e-3
R3 out1 vss_io 354
R1 n101 out2 63.2e3
R7 n101 n103 28.77
R4 n101 n102 785
R9 vccaux_io n101 31.7e3
R0 n102 out1 63.2e3
R5 n101 n105 35.96
R6 n106 n102 35.96
R8 n104 n102 28.77
R2 out2 vss_io 354
R10 vccaux_io n102 31.7e3
.ends hp_lvds_ac_coupled_ctle_level3_max
**************************************************************************************
********** SUBCKT for CTLE LEVEL4 ****************************************************
.subckt hp_lvds_ac_coupled_ctle_level4_typ in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 43.5
r152 in2 n150 43.5
r153 vccaux_io in1 170
r154 in1 vss_io 188
r155 vccaux_io in2 170
r156 in2 vss_io 188
C2 out2 vss_io 132e-15
C3 out1 vss_io 132e-15
I4 vccaux_io n101 DC=366e-6
I1 n101 out2 DC=381e-6
I5 vccaux_io n102 DC=366e-6
I0 n102 out1 DC=381e-6
I2 vccaux_io out2 DC=40e-6
I3 vccaux_io out1 DC=40e-6
C5 n103 n104 745e-15
C0 n102 out1 50e-15
C4 n105 n106 452e-15
C1 n101 out2 50e-15
G0 n102 out1 VCCS n109 n107 4.72e-3 MAX=400e-6 MIN=-400e-6 M=1
G1 n101 out2 VCCS n110 n108 4.72e-3 MAX=400e-6 MIN=-400e-6 M=1
E5 out3 vss_io VCVS out1 out2 1e3 MAX=850e-3 MIN=0
E1 n108 vss_io VCVS in1 in2 500e-3
E2 n109 vss_io VCVS n102 n101 500e-3
E3 n110 vss_io VCVS n101 n102 500e-3
E0 n107 vss_io VCVS in2 in1 500e-3
R7 n101 n103 34.75
R4 n101 n102 1.072e3
R6 n106 n102 43.4
R0 n102 out1 87.7e3
R5 n101 n105 43.4
R2 out2 vss_io 406
R1 n101 out2 87.7e3
R9 vccaux_io n101 31.2e3
R8 n104 n102 34.75
R10 vccaux_io n102 31.2e3
R3 out1 vss_io 406
.ends hp_lvds_ac_coupled_ctle_level4_typ

.subckt hp_lvds_ac_coupled_ctle_level4_min in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 52.355
r152 in2 n150 52.355
r153 vccaux_io in1 170
r154 in1 vss_io 188
r155 vccaux_io in2 170
r156 in2 vss_io 188
C2 out2 vss_io 120e-15
C3 out1 vss_io 120e-15
I2 vccaux_io out2 DC=30.8e-6
I3 vccaux_io out1 DC=30.8e-6
I4 vccaux_io n101 DC=295e-6
I1 n101 out2 DC=304.9e-6
I5 vccaux_io n102 DC=295e-6
I0 n102 out1 DC=304.9e-6
C5 n103 n104 871e-15
C0 n102 out1 50e-15
C4 n105 n106 531e-15
C1 n101 out2 50e-15
G0 n102 out1 VCCS _net0 _net1 3.459e-3 MAX=400e-6 MIN=-400e-6 M=1
G1 n101 out2 VCCS n110 n108 3.459e-3 MAX=400e-6 MIN=-400e-6 M=1
E5 out3 vss_io VCVS out1 out2 1e3 MAX=850e-3 MIN=0
E0 _net1 vss_io VCVS in2 in1 500e-3
E1 n108 vss_io VCVS in1 in2 500e-3
E2 _net0 vss_io VCVS n102 n101 500e-3
E3 n110 vss_io VCVS n101 n102 500e-3
R3 out1 vss_io 455
R1 n101 out2 118e3
R7 n101 n103 49.5
R4 n101 n102 1.2e3
R9 vccaux_io n101 21.7e3
R0 n102 out1 118e3
R5 n101 n105 61.88
R6 n106 n102 61.88
R8 n104 n102 49.5
R2 out2 vss_io 455
R10 vccaux_io n102 21.7e3
.ends hp_lvds_ac_coupled_ctle_level4_min

.subckt hp_lvds_ac_coupled_ctle_level4_max in1 in2 out1 out2 out3 vccaux_io vss_io
cio1 in1 vss_io 3.5806e-12
cio2 in2 vss_io 3.5806e-12
r151 in1 n150 37.35
r152 in2 n150 37.35
r153 vccaux_io in1 170
r154 in1 vss_io 188
r155 vccaux_io in2 170
r156 in2 vss_io 188
C2 out2 vss_io 112e-15
C3 out1 vss_io 112e-15
I2 vccaux_io out2 DC=54.8e-6
I3 vccaux_io out1 DC=54.8e-6
I4 vccaux_io n101 DC=482e-6
I1 n101 out2 DC=479.3e-6
I5 vccaux_io n102 DC=482e-6
I0 n102 out1 DC=479.3e-6
C5 n103 n104 672e-15
C0 n102 out1 50e-15
C4 n105 n106 410e-15
C1 n101 out2 50e-15
G0 n102 out1 VCCS _net0 _net1 5.888e-3 MAX=500e-6 MIN=-500e-6 M=1
G1 n101 out2 VCCS n110 n108 5.888e-3 MAX=500e-6 MIN=-500e-6 M=1
E5 out3 vss_io VCVS out1 out2 1e3 MAX=892.5e-3 MIN=0
E0 _net1 vss_io VCVS in2 in1 500e-3
E1 n108 vss_io VCVS in1 in2 500e-3
E2 _net0 vss_io VCVS n102 n101 500e-3
E3 n110 vss_io VCVS n101 n102 500e-3
R3 out1 vss_io 355
R1 n101 out2 63.2e3
R7 n101 n103 28.77
R4 n101 n102 927
R9 vccaux_io n101 31.7e3
R0 n102 out1 63.2e3
R5 n101 n105 35.96
R6 n106 n102 35.96
R8 n104 n102 28.77
R2 out2 vss_io 355
R10 vccaux_io n102 31.7e3
.ends hp_lvds_ac_coupled_ctle_level4_max

************End of subcircuits**************************************


