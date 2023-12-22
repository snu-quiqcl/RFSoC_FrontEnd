*************************************************************************
* IBIS-ISS file for CTLE for use in HPIO DDR4 interface 
* 
* [File name] hp_diff_pod12_ctle.sp
* [File Rev] 1.0
* [Date]  Wed July 15 15:29:38 IST 2015
* [Source] Hspice simulations (ox20-0.5-2p3.lib: TT, SS, FF)
*
* [Notes]  Xilinx IBIS-ISS model for HPIO DDR4 CTLE
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
* UltraScale HPIO DDR4 CTLE provides 4 options for AC Gain: 0.75db; 1.5db; 2.25db; 3.0db
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
* Sub-circuit names are in the format "hp_diff_pod12_ctle_AAAAdb_BBB_CCCC_input_DDD"
* 
* AAAA: 0p75 or 1p50 or 2p25 or 3p00 (Identifies the CTLE gain. Example: 0.75db gain)
* BBB:  DCI                          (This field is optional)
* CCCC: in40 or in48 or in60         (Identifies the input termination value on ctle pad. Example: 40Ohms of input termination)
* DDD:  typ or min or max            (Identifies the simulation parameters. Example: typ requires typical temperature and typical voltage)
*
* Model usage: connect in1, in2 ports to the Xilinx FPGA package pin model on receive side of the channel. 
* out1 and out2 are the 180degree phase shifted differential outputs of the CTLE circuit.
* out3 is the output of the receiver circuit. 
*
* Receiver pad capacitance is included in the model.
*
* User is required to include appropriate package model in the simulation. This information is available on www.xilinx.com
*
* CTLE model mapping to Vivado attributes
* EQ_LEVEL0 : 0.00dB (CTLE Disabled.)
* EQ_LEVEL1 : 0.75dB
* EQ_LEVEL2 : 1.50dB
* EQ_LEVEL3 : 2.25dB
* EQ_LEVEL4 : 3.00dB
*
*
********** SUBCKT for DIFF_POD12 CTLE NONDCI ***************************************
********** SUBCKT for CTLE OFF **********************************

.subckt hp_diff_pod12_ctle_none_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 38.6
r102 in2 n150 38.6
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_typ
.ends

.subckt hp_diff_pod12_ctle_none_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 46.4
r102 in2 n150 46.4
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_typ
.ends

.subckt hp_diff_pod12_ctle_none_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 57.5
r102 in2 n150 57.5
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_typ
.ends

.subckt hp_diff_pod12_ctle_none_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 48.3
r102 in2 n150 48.3
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_min
.ends

.subckt hp_diff_pod12_ctle_none_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 58
r102 in2 n150 58
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_min
.ends

.subckt hp_diff_pod12_ctle_none_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 72.5
r102 in2 n150 72.5
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_min
.ends

.subckt hp_diff_pod12_ctle_none_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 31.4
r102 in2 n150 31.4
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_max
.ends

.subckt hp_diff_pod12_ctle_none_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 37.7
r102 in2 n150 37.7
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_max
.ends

.subckt hp_diff_pod12_ctle_none_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 47.1
r102 in2 n150 47.1
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_max
.ends

*********************************************************************

********** SUBCKT for AC gain of 0.75db **********************************

.subckt hp_diff_pod12_ctle_0p75db_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 38.6
r102 in2 n150 38.6
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_0p75db_input_typ
.ends

.subckt hp_diff_pod12_ctle_0p75db_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 46.4
r102 in2 n150 46.4
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_0p75db_input_typ
.ends

.subckt hp_diff_pod12_ctle_0p75db_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 57.5
r102 in2 n150 57.5
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_0p75db_input_typ
.ends

.subckt hp_diff_pod12_ctle_0p75db_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 48.3
r102 in2 n150 48.3
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_0p75db_input_min
.ends

.subckt hp_diff_pod12_ctle_0p75db_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 58
r102 in2 n150 58
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_0p75db_input_min
.ends

.subckt hp_diff_pod12_ctle_0p75db_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 72.5
r102 in2 n150 72.5
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_0p75db_input_min
.ends

.subckt hp_diff_pod12_ctle_0p75db_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 31.4
r102 in2 n150 31.4
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_0p75db_input_max
.ends

.subckt hp_diff_pod12_ctle_0p75db_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 37.7
r102 in2 n150 37.7
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_0p75db_input_max
.ends

.subckt hp_diff_pod12_ctle_0p75db_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 47.1
r102 in2 n150 47.1
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_0p75db_input_max
.ends

*********************************************************************

********** subckt for ac gain of 1.5db ******************************

.subckt hp_diff_pod12_ctle_1p5db_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 38.6
r102 in2 n150 38.6
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_1p5db_input_typ
.ends

.subckt hp_diff_pod12_ctle_1p5db_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 46.4
r102 in2 n150 46.4
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_1p5db_input_typ
.ends

.subckt hp_diff_pod12_ctle_1p5db_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 57.5
r102 in2 n150 57.5
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_1p5db_input_typ
.ends

.subckt hp_diff_pod12_ctle_1p5db_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 48.3
r102 in2 n150 48.3
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_1p5db_input_min
.ends

.subckt hp_diff_pod12_ctle_1p5db_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 58
r102 in2 n150 58
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_1p5db_input_min
.ends

.subckt hp_diff_pod12_ctle_1p5db_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 72.5
r102 in2 n150 72.5
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_1p5db_input_min
.ends

.subckt hp_diff_pod12_ctle_1p5db_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 31.4
r102 in2 n150 31.4
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_1p5db_input_max
.ends

.subckt hp_diff_pod12_ctle_1p5db_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 37.7
r102 in2 n150 37.7
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_1p5db_input_max
.ends

.subckt hp_diff_pod12_ctle_1p5db_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 47.1
r102 in2 n150 47.1
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_1p5db_input_max
.ends

*********************************************************************

********** subckt for ac gain of 2.25db ******************************

.subckt hp_diff_pod12_ctle_2p25db_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 38.6
r102 in2 n150 38.6
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_2p25db_input_typ
.ends

.subckt hp_diff_pod12_ctle_2p25db_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 46.4
r102 in2 n150 46.4
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_2p25db_input_typ
.ends

.subckt hp_diff_pod12_ctle_2p25db_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 57.5
r102 in2 n150 57.5
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_2p25db_input_typ
.ends


.subckt hp_diff_pod12_ctle_2p25db_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 48.3
r102 in2 n150 48.3
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_2p25db_input_min
.ends

.subckt hp_diff_pod12_ctle_2p25db_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 58
r102 in2 n150 58
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_2p25db_input_min
.ends

.subckt hp_diff_pod12_ctle_2p25db_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 72.5
r102 in2 n150 72.5
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_2p25db_input_min
.ends

.subckt hp_diff_pod12_ctle_2p25db_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 31.4
r102 in2 n150 31.4
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_2p25db_input_max
.ends

.subckt hp_diff_pod12_ctle_2p25db_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 37.7
r102 in2 n150 37.7
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_2p25db_input_max
.ends

.subckt hp_diff_pod12_ctle_2p25db_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 47.1
r102 in2 n150 47.1
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_2p25db_input_max
.ends

*********************************************************************

********** subckt for ac gain of 3.0db ******************************

.subckt hp_diff_pod12_ctle_3p0db_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 38.6
r102 in2 n150 38.6
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_3p0db_input_typ
.ends

.subckt hp_diff_pod12_ctle_3p0db_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 46.4
r102 in2 n150 46.4
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_3p0db_input_typ
.ends

.subckt hp_diff_pod12_ctle_3p0db_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 57.5
r102 in2 n150 57.5
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_3p0db_input_typ
.ends


.subckt hp_diff_pod12_ctle_3p0db_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 48.3
r102 in2 n150 48.3
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_3p0db_input_min
.ends

.subckt hp_diff_pod12_ctle_3p0db_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 58
r102 in2 n150 58
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_3p0db_input_min
.ends

.subckt hp_diff_pod12_ctle_3p0db_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 72.5
r102 in2 n150 72.5
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_3p0db_input_min
.ends


.subckt hp_diff_pod12_ctle_3p0db_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 31.4
r102 in2 n150 31.4
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_3p0db_input_max
.ends

.subckt hp_diff_pod12_ctle_3p0db_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 37.7
r102 in2 n150 37.7
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_3p0db_input_max
.ends

.subckt hp_diff_pod12_ctle_3p0db_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 47.1
r102 in2 n150 47.1
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_3p0db_input_max
.ends
*********************************************************************
********** SUBCKT for DIFF_POD12 CTLE DCI ***************************************
********** SUBCKT for AC gain of 0.75db **********************************

.subckt hp_diff_pod12_ctle_0p75db_dci_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 38.6
r102 in2 n150 38.6
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_0p75db_input_typ
.ends

.subckt hp_diff_pod12_ctle_0p75db_dci_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 46.4
r102 in2 n150 46.4
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_0p75db_input_typ
.ends

.subckt hp_diff_pod12_ctle_0p75db_dci_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 57.5
r102 in2 n150 57.5
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_0p75db_input_typ
.ends

.subckt hp_diff_pod12_ctle_0p75db_dci_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 38.6
r102 in2 n150 38.6
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_0p75db_input_min
.ends

.subckt hp_diff_pod12_ctle_0p75db_dci_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 46.3
r102 in2 n150 46.3
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_0p75db_input_min
.ends

.subckt hp_diff_pod12_ctle_0p75db_dci_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 58
r102 in2 n150 58
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_0p75db_input_min
.ends

.subckt hp_diff_pod12_ctle_0p75db_dci_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 38.3
r102 in2 n150 38.3
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_0p75db_input_max
.ends

.subckt hp_diff_pod12_ctle_0p75db_dci_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 46
r102 in2 n150 46
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_0p75db_input_max
.ends

.subckt hp_diff_pod12_ctle_0p75db_dci_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 57.5
r102 in2 n150 57.5
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_0p75db_input_max
.ends

*********************************************************************

********** subckt for ac gain of 1.5db ******************************

.subckt hp_diff_pod12_ctle_1p5db_dci_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 38.6
r102 in2 n150 38.6
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_1p5db_input_typ
.ends

.subckt hp_diff_pod12_ctle_1p5db_dci_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 46.4
r102 in2 n150 46.4
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_1p5db_input_typ
.ends

.subckt hp_diff_pod12_ctle_1p5db_dci_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 57.5
r102 in2 n150 57.5
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_1p5db_input_typ
.ends

.subckt hp_diff_pod12_ctle_1p5db_dci_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 38.6
r102 in2 n150 38.6
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_1p5db_input_min
.ends

.subckt hp_diff_pod12_ctle_1p5db_dci_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 46.3
r102 in2 n150 46.3
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_1p5db_input_min
.ends

.subckt hp_diff_pod12_ctle_1p5db_dci_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 58
r102 in2 n150 58
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_1p5db_input_min
.ends

.subckt hp_diff_pod12_ctle_1p5db_dci_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 38.3
r102 in2 n150 38.3
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_1p5db_input_max
.ends

.subckt hp_diff_pod12_ctle_1p5db_dci_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 46
r102 in2 n150 46
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_1p5db_input_max
.ends

.subckt hp_diff_pod12_ctle_1p5db_dci_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 57.5
r102 in2 n150 57.5
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_1p5db_input_max
.ends

*********************************************************************

********** subckt for ac gain of 2.25db ******************************

.subckt hp_diff_pod12_ctle_2p25db_dci_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 38.6
r102 in2 n150 38.6
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_2p25db_input_typ
.ends

.subckt hp_diff_pod12_ctle_2p25db_dci_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 46.4
r102 in2 n150 46.4
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_2p25db_input_typ
.ends

.subckt hp_diff_pod12_ctle_2p25db_dci_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 57.5
r102 in2 n150 57.5
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_2p25db_input_typ
.ends


.subckt hp_diff_pod12_ctle_2p25db_dci_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 38.6
r102 in2 n150 38.6
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_2p25db_input_min
.ends

.subckt hp_diff_pod12_ctle_2p25db_dci_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 46.3
r102 in2 n150 46.3
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_2p25db_input_min
.ends

.subckt hp_diff_pod12_ctle_2p25db_dci_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 58
r102 in2 n150 58
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_2p25db_input_min
.ends

.subckt hp_diff_pod12_ctle_2p25db_dci_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 38.3
r102 in2 n150 38.3
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_2p25db_input_max
.ends

.subckt hp_diff_pod12_ctle_2p25db_dci_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 46
r102 in2 n150 46
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_2p25db_input_max
.ends

.subckt hp_diff_pod12_ctle_2p25db_dci_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 57.5
r102 in2 n150 57.5
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_2p25db_input_max
.ends

*********************************************************************

********** subckt for ac gain of 3.0db ******************************

.subckt hp_diff_pod12_ctle_3p0db_dci_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 38.6
r102 in2 n150 38.6
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_3p0db_input_typ
.ends

.subckt hp_diff_pod12_ctle_3p0db_dci_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 46.4
r102 in2 n150 46.4
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_3p0db_input_typ
.ends

.subckt hp_diff_pod12_ctle_3p0db_dci_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 57.5
r102 in2 n150 57.5
v150 n150 vss_io 1.2
cio0 in1 vss_io 3.5806e-12
cio1 in2 vss_io 3.5806e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_3p0db_input_typ
.ends


.subckt hp_diff_pod12_ctle_3p0db_dci_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 38.6
r102 in2 n150 38.6
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_3p0db_input_min
.ends

.subckt hp_diff_pod12_ctle_3p0db_dci_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 46.3
r102 in2 n150 46.3
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_3p0db_input_min
.ends

.subckt hp_diff_pod12_ctle_3p0db_dci_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

r101 in1 n150 58
r102 in2 n150 58
v150 n150 vss_io 1.14
cio0 in1 vss_io 3.5689e-12
cio1 in2 vss_io 3.5689e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_3p0db_input_min
.ends


.subckt hp_diff_pod12_ctle_3p0db_dci_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 38.3
r102 in2 n150 38.3
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_3p0db_input_max
.ends

.subckt hp_diff_pod12_ctle_3p0db_dci_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 46
r102 in2 n150 46
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_3p0db_input_max
.ends

.subckt hp_diff_pod12_ctle_3p0db_dci_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n150 57.5
r102 in2 n150 57.5
v150 n150 vss_io 1.26
cio0 in1 vss_io 3.5961e-12
cio1 in2 vss_io 3.5961e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_3p0db_input_max
.ends
*********************************************************************

*********************************************************************
.subckt hp_diff_pod12_ctle_none_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=750e-6
i0 vccaux_io n101 dc=750e-6
i2 n101 out2 dc=756e-6
i4 n102 out1 dc=756e-6
e0 n118 vss_io vcvs in1 in2 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r29 n113 n114 30
r28 n111 n112 34
r27 n109 n110 47
r20 out2 vss_io 4.1e3 m=6
r4 n102 out1 16.71e3
r8 vccaux_io n102 4.9e3
r5 vccaux_io n101 4.9e3
r2 n101 out2 16.71e3
r9 n112 n102 896 m=2
r12 n101 n115 734
r17 n110 n102 734 m=2
r15 n101 n111 896 m=2
r16 n101 n109 734 m=2
r10 n101 n113 653
r11 n114 n102 653
r13 n115 n116 734
r14 n116 n102 734
r21 out1 vss_io 4.1e3 m=6
g2 n102 out1 vccs n119 n120 5.63e-3 max=756e-6 min=-756e-6
g0 n101 out2 vccs n117 n118 5.63e-3 max=756e-6 min=-756e-6
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 66e-15
c12 n101 out2 66e-15
c19 out2 vss_io 40e-15
c18 out1 vss_io 40e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.95 min=0
.ends

.subckt hp_diff_pod12_ctle_none_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=552e-6
i0 vccaux_io n101 dc=552e-6
i2 n101 out2 dc=556e-6
i4 n102 out1 dc=556e-6
e0 n118 vss_io vcvs in1 in2 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r29 n113 n114 20
r28 n111 n112 20
r27 n109 n110 42
r20 out2 vss_io 4.765e3 m=6
r4 n102 out1 27.56e3
r8 vccaux_io n102 5.66e3
r5 vccaux_io n101 5.66e3
r2 n101 out2 27.56e3
r9 n112 n102 1.0e3 m=2
r12 n101 n115 893
r17 n110 n102 893 m=2
r15 n101 n111 1.0e3 m=2
r16 n101 n109 893 m=2
r10 n101 n113 770
r11 n114 n102 770
r13 n115 n116 893
r14 n116 n102 893
r21 out1 vss_io 4.765e3 m=6
g2 n102 out1 vccs n119 n120 3.98e-3 max=556e-6 min=-556e-6
g0 n101 out2 vccs n117 n118 3.98e-3 max=556e-6 min=-556e-6
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 50e-15
c12 n101 out2 50e-15
c19 out2 vss_io 55e-15
c18 out1 vss_io 55e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9025 min=0
.ends

.subckt hp_diff_pod12_ctle_none_input_max in1 in2 out1 out2 out3 vccaux_io vss_io

c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=1.092e-3
i0 vccaux_io n101 dc=1.092e-3
i2 n101 out2 dc=1.098e-3
i4 n102 out1 dc=1.098e-3
e0 n118 vss_io vcvs in1 in2 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r29 n113 n114 18
r28 n111 n112 24
r27 n109 n110 41
r20 out2 vss_io 3.4e3 m=6
r4 n102 out1 8.807e3
r8 vccaux_io n102 4.09e3
r5 vccaux_io n101 4.09e3
r2 n101 out2 8.807e3
r9 n112 n102 701 m=2
r12 n101 n115 574
r17 n110 n102 574 m=2
r15 n101 n111 701 m=2
r16 n101 n109 574 m=2
r10 n101 n113 511
r11 n114 n102 511
r13 n115 n116 574
r14 n116 n102 574
r21 out1 vss_io 3.4e3 m=6
g2 n102 out1 vccs n119 n120 7.13e-3 max=1098e-6 min=-1098e-6
g0 n101 out2 vccs n117 n118 7.13e-3 max=1098e-6 min=-1098e-6
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 60e-15
c12 n101 out2 60e-15
c19 out2 vss_io 50e-15
c18 out1 vss_io 50e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9975 min=0
.ends
*********************************************************************

*********************************************************************
.subckt hp_diff_pod12_ctle_0p75db_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=750e-6
i0 vccaux_io n101 dc=750e-6
i2 n101 out2 dc=756e-6
i4 n102 out1 dc=756e-6
e0 n118 vss_io vcvs in1 in2 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r29 n113 n114 30
r28 n111 n112 34
r26 n107 n108 85
r20 out2 vss_io 4.1e3 m=6
r22 n101 n105 90
r23 n106 n102 90
r4 n102 out1 16.71e3
r8 vccaux_io n102 4.9e3
r5 vccaux_io n101 4.9e3
r2 n101 out2 16.71e3
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
r21 out1 vss_io 4.1e3 m=6
g2 n102 out1 vccs n119 n120 5.63e-3 max=756e-6 min=-756e-6
g0 n101 out2 vccs n117 n118 5.63e-3 max=756e-6 min=-756e-6
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 66e-15
c12 n101 out2 66e-15
c19 out2 vss_io 40e-15
c18 out1 vss_io 40e-15
c11 n106 n105 157e-15
c10 n105 n106 157e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.95 min=0
.ends

.subckt hp_diff_pod12_ctle_0p75db_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=552e-6
i0 vccaux_io n101 dc=552e-6
i2 n101 out2 dc=556e-6
i4 n102 out1 dc=556e-6
e0 n118 vss_io vcvs in1 in2 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r29 n113 n114 20
r28 n111 n112 20
r26 n107 n108 90
r20 out2 vss_io 4.765e3 m=6
r22 n101 n105 90
r23 n106 n102 90
r4 n102 out1 27.56e3
r8 vccaux_io n102 5.66e3
r5 vccaux_io n101 5.66e3
r2 n101 out2 27.56e3
r9 n112 n102 1.0e3 m=2
r12 n101 n115 893
r17 n110 n102 893 m=2
r18 n108 n102 1.169e3 m=4
r15 n101 n111 1.0e3 m=2
r16 n101 n109 893 m=2
r19 n101 n107 1.169e3 m=4
r10 n101 n113 770
r11 n114 n102 770
r13 n115 n116 893
r14 n116 n102 893
r21 out1 vss_io 4.765e3 m=6
g2 n102 out1 vccs n119 n120 3.98e-3 max=556e-6 min=-556e-6
g0 n101 out2 vccs n117 n118 3.98e-3 max=556e-6 min=-556e-6
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 50e-15
c12 n101 out2 50e-15
c19 out2 vss_io 55e-15
c18 out1 vss_io 55e-15
c11 n106 n105 192e-15
c10 n105 n106 192e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9025 min=0
.ends

.subckt hp_diff_pod12_ctle_0p75db_input_max in1 in2 out1 out2 out3 vccaux_io vss_io

c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=1.092e-3
i0 vccaux_io n101 dc=1.092e-3
i2 n101 out2 dc=1.098e-3
i4 n102 out1 dc=1.098e-3
e0 n118 vss_io vcvs in1 in2 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r29 n113 n114 18
r28 n111 n112 24
r26 n107 n108 65
r20 out2 vss_io 3.4e3 m=6
r22 n101 n105 90
r23 n106 n102 90
r4 n102 out1 8.807e3
r8 vccaux_io n102 4.09e3
r5 vccaux_io n101 4.09e3
r2 n101 out2 8.807e3
r9 n112 n102 701 m=2
r12 n101 n115 574
r17 n110 n102 574 m=2
r18 n108 n102 751 m=4
r15 n101 n111 701 m=2
r16 n101 n109 574 m=2
r19 n101 n107 751 m=4
r10 n101 n113 511
r11 n114 n102 511
r13 n115 n116 574
r14 n116 n102 574
r21 out1 vss_io 3.4e3 m=6
g2 n102 out1 vccs n119 n120 7.13e-3 max=1098e-6 min=-1098e-6
g0 n101 out2 vccs n117 n118 7.13e-3 max=1098e-6 min=-1098e-6
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 60e-15
c12 n101 out2 60e-15
c19 out2 vss_io 50e-15
c18 out1 vss_io 50e-15
c11 n106 n105 166e-15
c10 n105 n106 166e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9975 min=0
.ends
*********************************************************************

********** subckt for ac gain of 1.5db ******************************

.subckt hp_diff_pod12_ctle_1p5db_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=750e-6
i0 vccaux_io n101 dc=750e-6
i2 n101 out2 dc=756e-6
i4 n102 out1 dc=756e-6
e0 n118 vss_io vcvs in1 in2 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r28 n111 n112 34
r26 n107 n108 62
r20 out2 vss_io 4.1e3 m=6
r22 n101 n105 90
r23 n106 n102 90
r4 n102 out1 16.71e3
r8 vccaux_io n102 4.9e3
r5 vccaux_io n101 4.9e3
r2 n101 out2 16.71e3
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
r21 out1 vss_io 4.1e3 m=6
g2 n102 out1 vccs n119 n120 5.63e-3 max=756e-6 min=-756e-6
g0 n101 out2 vccs n117 n118 5.63e-3 max=756e-6 min=-756e-6
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 66e-15
c12 n101 out2 66e-15
c19 out2 vss_io 40e-15
c18 out1 vss_io 40e-15
c11 n106 n105 166e-15
c10 n105 n106 166e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.95 min=0
.ends

.subckt hp_diff_pod12_ctle_1p5db_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=552e-6
i0 vccaux_io n101 dc=552e-6
i2 n101 out2 dc=556e-6
i4 n102 out1 dc=556e-6
e0 n118 vss_io vcvs in1 in2 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r28 n111 n112 20
r26 n107 n108 65
r20 out2 vss_io 4.765e3 m=6
r22 n101 n105 90
r23 n106 n102 90
r4 n102 out1 27.56e3
r8 vccaux_io n102 5.66e3
r5 vccaux_io n101 5.66e3
r2 n101 out2 27.56e3
r9 n112 n102 1.0e3 m=2
r12 n101 n115 893
r17 n110 n102 893 m=2
r18 n108 n102 1.169e3 m=4
r15 n101 n111 1.0e3 m=2
r16 n101 n109 893 m=2
r19 n101 n107 1.169e3 m=4
r10 n101 n113 770
r11 n114 n102 770
r13 n115 n116 893
r14 n116 n102 893
r21 out1 vss_io 4.765e3 m=6
g2 n102 out1 vccs n119 n120 3.98e-3 max=556e-6 min=-556e-6
g0 n101 out2 vccs n117 n118 3.98e-3 max=556e-6 min=-556e-6
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 50e-15
c12 n101 out2 50e-15
c19 out2 vss_io 56e-15
c18 out1 vss_io 56e-15
c11 n106 n105 200e-15
c10 n105 n106 200e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9025 min=0
.ends

.subckt hp_diff_pod12_ctle_1p5db_input_max in1 in2 out1 out2 out3 vccaux_io vss_io

c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=1.092e-3
i0 vccaux_io n101 dc=1.092e-3
i2 n101 out2 dc=1.098e-3
i4 n102 out1 dc=1.098e-3
e0 n118 vss_io vcvs in1 in2 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r28 n111 n112 24
r26 n107 n108 48
r20 out2 vss_io 3.4e3 m=6
r22 n101 n105 90
r23 n106 n102 90
r4 n102 out1 8.807e3
r8 vccaux_io n102 4.09e3
r5 vccaux_io n101 4.09e3
r2 n101 out2 8.807e3
r9 n112 n102 701 m=2
r12 n101 n115 574
r17 n110 n102 574 m=2
r18 n108 n102 751 m=4
r15 n101 n111 701 m=2
r16 n101 n109 574 m=2
r19 n101 n107 751 m=4
r10 n101 n113 511
r11 n114 n102 511
r13 n115 n116 574
r14 n116 n102 574
r21 out1 vss_io 3.4e3 m=6
g2 n102 out1 vccs n119 n120 7.13e-3 max=1098e-6 min=-1098e-6
g0 n101 out2 vccs n117 n118 7.13e-3 max=1098e-6 min=-1098e-6
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 60e-15
c12 n101 out2 60e-15
c19 out2 vss_io 50e-15
c18 out1 vss_io 50e-15
c11 n106 n105 178e-15
c10 n105 n106 178e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9975 min=0
.ends
*********************************************************************

********** subckt for ac gain of 2.25db ******************************

.subckt hp_diff_pod12_ctle_2p25db_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=750e-6
i0 vccaux_io n101 dc=750e-6
i2 n101 out2 dc=756e-6
i4 n102 out1 dc=756e-6
e0 n118 vss_io vcvs in1 in2 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r28 n111 n112 34
r27 n109 n110 47
r20 out2 vss_io 4.1e3 m=6
r22 n101 n105 90
r23 n106 n102 90
r4 n102 out1 16.71e3
r8 vccaux_io n102 4.9e3
r5 vccaux_io n101 4.9e3
r2 n101 out2 16.71e3
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
r21 out1 vss_io 4.1e3 m=6
g2 n102 out1 vccs n119 n120 5.63e-3 max=756e-6 min=-756e-6
g0 n101 out2 vccs n117 n118 5.63e-3 max=756e-6 min=-756e-6
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 66e-15
c12 n101 out2 66e-15
c19 out2 vss_io 40e-15
c18 out1 vss_io 40e-15
c11 n106 n105 170e-15
c10 n105 n106 170e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.95 min=0
.ends

.subckt hp_diff_pod12_ctle_2p25db_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=552e-6
i0 vccaux_io n101 dc=552e-6
i2 n101 out2 dc=556e-6
i4 n102 out1 dc=556e-6
e0 n118 vss_io vcvs in1 in2 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r28 n111 n112 20
r27 n109 n110 42
r20 out2 vss_io 4.765e3 m=6
r22 n101 n105 90
r23 n106 n102 90
r4 n102 out1 27.56e3
r8 vccaux_io n102 5.66e3
r5 vccaux_io n101 5.66e3
r2 n101 out2 27.56e3
r9 n112 n102 1.0e3 m=2
r12 n101 n115 893
r17 n110 n102 893 m=2
r18 n108 n102 1.169e3 m=4
r15 n101 n111 1.0e3 m=2
r16 n101 n109 893 m=2
r19 n101 n107 1.169e3 m=4
r10 n101 n113 770
r11 n114 n102 770
r13 n115 n116 893
r14 n116 n102 893
r21 out1 vss_io 4.765e3 m=6
g2 n102 out1 vccs n119 n120 3.98e-3 max=556e-6 min=-556e-6
g0 n101 out2 vccs n117 n118 3.98e-3 max=556e-6 min=-556e-6
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 50e-15
c12 n101 out2 50e-15
c19 out2 vss_io 56e-15
c18 out1 vss_io 56e-15
c11 n106 n105 200e-15
c10 n105 n106 200e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9025 min=0
.ends

.subckt hp_diff_pod12_ctle_2p25db_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=1.092e-3
i0 vccaux_io n101 dc=1.092e-3
i2 n101 out2 dc=1.098e-3
i4 n102 out1 dc=1.098e-3
e0 n118 vss_io vcvs in1 in2 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r28 n111 n112 24
r27 n109 n110 41
r20 out2 vss_io 3.4e3 m=6
r22 n101 n105 90
r23 n106 n102 90
r4 n102 out1 8.807e3
r8 vccaux_io n102 4.09e3
r5 vccaux_io n101 4.09e3
r2 n101 out2 8.807e3
r9 n112 n102 701 m=2
r12 n101 n115 574
r17 n110 n102 574 m=2
r18 n108 n102 751 m=4
r15 n101 n111 701 m=2
r16 n101 n109 574 m=2
r19 n101 n107 751 m=4
r10 n101 n113 511
r11 n114 n102 511
r13 n115 n116 574
r14 n116 n102 574
r21 out1 vss_io 3.4e3 m=6
g2 n102 out1 vccs n119 n120 7.13e-3 max=1098e-6 min=-1098e-6
g0 n101 out2 vccs n117 n118 7.13e-3 max=1098e-6 min=-1098e-6
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 60e-15
c12 n101 out2 60e-15
c19 out2 vss_io 50e-15
c18 out1 vss_io 50e-15
c11 n106 n105 186e-15
c10 n105 n106 186e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9975 min=0
.ends
*********************************************************************

********** subckt for ac gain of 3.0db ******************************

.subckt hp_diff_pod12_ctle_3p0db_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io

c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=750e-6
i0 vccaux_io n101 dc=750e-6
i2 n101 out2 dc=756e-6
i4 n102 out1 dc=756e-6
e0 n118 vss_io vcvs in1 in2 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r29 n113 n114 20
r28 n111 n112 20
r20 out2 vss_io 4.1e3 m=6
r22 n101 n105 90
r23 n106 n102 90
r4 n102 out1 16.71e3
r8 vccaux_io n102 4.9e3
r5 vccaux_io n101 4.9e3
r2 n101 out2 16.71e3
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
r21 out1 vss_io 4.1e3 m=6
g2 n102 out1 vccs n119 n120 5.63e-3 max=756e-6 min=-756e-6
g0 n101 out2 vccs n117 n118 5.63e-3 max=756e-6 min=-756e-6
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 66e-15
c12 n101 out2 66e-15
c19 out2 vss_io 40e-15
c18 out1 vss_io 40e-15
c11 n106 n105 176e-15
c10 n105 n106 176e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.95 min=0
.ends

.subckt hp_diff_pod12_ctle_3p0db_input_min in1 in2 out1 out2 out3 vccaux_io vss_io

c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=552e-6
i0 vccaux_io n101 dc=552e-6
i2 n101 out2 dc=556e-6
i4 n102 out1 dc=556e-6
e0 n118 vss_io vcvs in1 in2 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r29 n113 n114 20
r28 n111 n112 20
r20 out2 vss_io 4.765e3 m=6
r22 n101 n105 90
r23 n106 n102 90
r4 n102 out1 27.56e3
r8 vccaux_io n102 5.66e3
r5 vccaux_io n101 5.66e3
r2 n101 out2 27.56e3
r9 n112 n102 1.0e3 m=2
r12 n101 n115 893
r17 n110 n102 893 m=2
r18 n108 n102 1.169e3 m=4
r15 n101 n111 1.0e3 m=2
r16 n101 n109 893 m=2
r19 n101 n107 1.169e3 m=4
r10 n101 n113 770
r11 n114 n102 770
r13 n115 n116 893
r14 n116 n102 893
r21 out1 vss_io 4.765e3 m=6
g2 n102 out1 vccs n119 n120 3.98e-3 max=556e-6 min=-556e-6
g0 n101 out2 vccs n117 n118 3.98e-3 max=556e-6 min=-556e-6
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 50e-15
c12 n101 out2 50e-15
c19 out2 vss_io 56e-15
c18 out1 vss_io 56e-15
c11 n106 n105 200e-15
c10 n105 n106 200e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9025 min=0
.ends

.subckt hp_diff_pod12_ctle_3p0db_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
c7 n102 vss_io 40e-15
c0 n101 vss_io 40e-15
i1 vccaux_io n102 dc=1.092e-3
i0 vccaux_io n101 dc=1.092e-3
i2 n101 out2 dc=1.098e-3
i4 n102 out1 dc=1.098e-3
e0 n118 vss_io vcvs in1 in2 500e-3
e3 n119 vss_io vcvs n102 n101 500e-3
e1 n117 vss_io vcvs n101 n102 500e-3
e2 n120 vss_io vcvs in2 in1 500e-3
r29 n113 n114 18
r28 n111 n112 18
r20 out2 vss_io 3.4e3 m=6
r22 n101 n105 90
r23 n106 n102 90
r4 n102 out1 8.807e3
r8 vccaux_io n102 4.09e3
r5 vccaux_io n101 4.09e3
r2 n101 out2 8.807e3
r9 n112 n102 701 m=2
r12 n101 n115 574
r17 n110 n102 574 m=2
r18 n108 n102 751 m=4
r15 n101 n111 701 m=2
r16 n101 n109 574 m=2
r19 n101 n107 751 m=4
r10 n101 n113 511
r11 n114 n102 511
r13 n115 n116 574
r14 n116 n102 574
r21 out1 vss_io 3.4e3 m=6
g2 n102 out1 vccs n119 n120 7.13e-3 max=1098e-6 min=-1098e-6
g0 n101 out2 vccs n117 n118 7.13e-3 max=1098e-6 min=-1098e-6
c17 n105 vss_io 50e-15
c16 n106 vss_io 50e-15
c13 n102 out1 55e-15
c12 n101 out2 55e-15
c19 out2 vss_io 50e-15
c18 out1 vss_io 50e-15
c11 n106 n105 190e-15
c10 n105 n106 190e-15
e5 out3 vss_io vcvs out1 out2 1000 max=0.9975 min=0
.ends

***************************************************************************


************End of subcircuits**************************************
