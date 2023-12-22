*************************************************************************
* IBIS-ISS file for CTLE for use in HPIO DDR4 interface 
*
* [File name] hp_pod12_ctle.sp
* [File Rev] 0.1
* [Date]  Wed Aug 19 14:29:38 IST 2015
* [Source] Hspice simulations (ox16-1.0-2p4.lib: TT, SS, FF)
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
*                          Component UltraScale Plus HPIO
*************************************************************************
*
*
* UltraScale HPIO DDR4 CTLE provides 6 options for AC Gain: NONE; LEVEL0; LEVEL1; LEVEL2; LEVEL3; LEVEL4;
*
* Sub-circuits are provided for each AC gain option for each of the following corners 
*
*                           TYP         MIN        MAX
* [Temperature Range]       25C        100C        0.0C
* [Voltage Range]           1.8V       1.71V       1.89V
*
* Sub-circuit port descriptions
* in1: The IO pad (positive input for DIFF DDR4) (not including package parasitics)
* in2: negative input on IO pad for DIFF DDR4 (not including package parasitics)
* vref: Input reference voltage (Set to common mode value of input signal at IO pad)
* out1: The negative sense output of CTLE
* out2: The positive sense output og CTLE
* out3: The output of the CTLE+Rx
* vccaux_io: IO receiver power (Typ:1.8V; Min:1.71V; Max:1.89V)
* vss_io: IO Ground
*
* Sub-circuit names for SE are in the format "hp_pod12_ctle_LEVELX_BBB_CCCC_input_DDD"
* Sub-circuit names for DIFF are in the format "hp_diff_pod12_ctle_levelX_BBB_CCCC_input_DDD"
* 
* LEVELX: NONE or LEVEL0 or LEVEL1 or LEVEL2 or LEVEL3 or LEVEL4 (Identifies the CTLE gain. Example: LEVEL1)
* BBB:  DCI                          (This field is optional)
* CCCC: in40 or in48 or in60         (Identifies the input termination value on ctle pad. Example: 40Ohms of input termination)
* DDD:  typ or min or max            (Identifies the simulation parameters. Example: typ requires typical temperature and typical voltage)
*
* Model usage: connect in1/in2 ports to the Xilinx FPGA package pin model on receive side of the channel. 
* out1 and out2 are the 180degree phase shifted differential outputs of the CTLE circuit.
* out3 is the output of the receiver circuit. 
*
* Receiver pad capacitance is included in the model.
*
* User is required to include appropriate package model in the simulation. This information is available on www.xilinx.com
*
*
*
********** SUBCKT for POD12 CTLE NONDCI ***************************************
********** SUBCKT for CTLE NONE **********************************

.subckt hp_pod12_ctle_none_in40_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 29.524
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_typ
.ends


.subckt hp_pod12_ctle_none_in48_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 35.428
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_typ
.ends


.subckt hp_pod12_ctle_none_in60_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 44.283
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_typ
.ends


.subckt hp_pod12_ctle_none_in40_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 35.329
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_min
.ends


.subckt hp_pod12_ctle_none_in48_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 42.385
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_min
.ends


.subckt hp_pod12_ctle_none_in60_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 52.967
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_min
.ends


.subckt hp_pod12_ctle_none_in40_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 25.272
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_max
.ends


.subckt hp_pod12_ctle_none_in48_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 30.345
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_max
.ends


.subckt hp_pod12_ctle_none_in60_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 37.918
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL0 ****************************************************

.subckt hp_pod12_ctle_level0_in40_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 29.524
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_typ
.ends


.subckt hp_pod12_ctle_level0_in48_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 35.428
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_typ
.ends


.subckt hp_pod12_ctle_level0_in60_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 44.283
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_typ
.ends


.subckt hp_pod12_ctle_level0_in40_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 35.329
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_min
.ends


.subckt hp_pod12_ctle_level0_in48_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 42.385
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_min
.ends


.subckt hp_pod12_ctle_level0_in60_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 52.967
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_min
.ends


.subckt hp_pod12_ctle_level0_in40_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 25.272
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_max
.ends


.subckt hp_pod12_ctle_level0_in48_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 30.345
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_max
.ends


.subckt hp_pod12_ctle_level0_in60_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 37.918
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL1 ****************************************************


.subckt hp_pod12_ctle_level1_in40_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 29.524
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_typ
.ends


.subckt hp_pod12_ctle_level1_in48_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 35.428
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_typ
.ends


.subckt hp_pod12_ctle_level1_in60_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 44.283
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_typ
.ends


.subckt hp_pod12_ctle_level1_in40_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 35.329
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_min
.ends


.subckt hp_pod12_ctle_level1_in48_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 42.385
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_min
.ends


.subckt hp_pod12_ctle_level1_in60_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 52.967
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_min
.ends


.subckt hp_pod12_ctle_level1_in40_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 25.272
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_max
.ends


.subckt hp_pod12_ctle_level1_in48_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 30.345
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_max
.ends


.subckt hp_pod12_ctle_level1_in60_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 37.918
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL2 ****************************************************


.subckt hp_pod12_ctle_level2_in40_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 29.524
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_typ
.ends


.subckt hp_pod12_ctle_level2_in48_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 35.428
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_typ
.ends


.subckt hp_pod12_ctle_level2_in60_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 44.283
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_typ
.ends


.subckt hp_pod12_ctle_level2_in40_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 35.329
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_min
.ends


.subckt hp_pod12_ctle_level2_in48_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 42.385
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_min
.ends


.subckt hp_pod12_ctle_level2_in60_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 52.967
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_min
.ends


.subckt hp_pod12_ctle_level2_in40_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 25.272
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_max
.ends


.subckt hp_pod12_ctle_level2_in48_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 30.345
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_max
.ends


.subckt hp_pod12_ctle_level2_in60_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 37.918
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL3 ****************************************************


.subckt hp_pod12_ctle_level3_in40_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 29.524
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_typ
.ends


.subckt hp_pod12_ctle_level3_in48_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 35.428
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_typ
.ends


.subckt hp_pod12_ctle_level3_in60_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 44.283
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_typ
.ends


.subckt hp_pod12_ctle_level3_in40_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 35.329
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_min
.ends


.subckt hp_pod12_ctle_level3_in48_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 42.385
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_min
.ends


.subckt hp_pod12_ctle_level3_in60_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 52.967
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_min
.ends


.subckt hp_pod12_ctle_level3_in40_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 25.272
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_max
.ends


.subckt hp_pod12_ctle_level3_in48_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 30.345
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_max
.ends


.subckt hp_pod12_ctle_level3_in60_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 37.918
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL4 ****************************************************


.subckt hp_pod12_ctle_level4_in40_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 29.524
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_typ
.ends


.subckt hp_pod12_ctle_level4_in48_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 35.428
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_typ
.ends


.subckt hp_pod12_ctle_level4_in60_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 44.283
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_typ
.ends


.subckt hp_pod12_ctle_level4_in40_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 35.329
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_min
.ends


.subckt hp_pod12_ctle_level4_in48_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 42.385
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_min
.ends


.subckt hp_pod12_ctle_level4_in60_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 52.967
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_min
.ends


.subckt hp_pod12_ctle_level4_in40_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 25.272
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_max
.ends


.subckt hp_pod12_ctle_level4_in48_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 30.345
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_max
.ends


.subckt hp_pod12_ctle_level4_in60_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 37.918
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_max
.ends

********** SUBCKT for POD12 CTLE DCI ***************************************
********** SUBCKT for CTLE NONE **********************************


.subckt hp_pod12_ctle_none_dci_in40_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 40.354
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_typ
.ends


.subckt hp_pod12_ctle_none_dci_in48_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 48.236
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_typ
.ends


.subckt hp_pod12_ctle_none_dci_in60_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 59.778
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_typ
.ends


.subckt hp_pod12_ctle_none_dci_in40_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 41.734
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_min
.ends


.subckt hp_pod12_ctle_none_dci_in48_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 49.598
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_min
.ends


.subckt hp_pod12_ctle_none_dci_in60_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 61.171
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_min
.ends


.subckt hp_pod12_ctle_none_dci_in40_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 40.354
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_max
.ends


.subckt hp_pod12_ctle_none_dci_in48_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 48.236
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_max
.ends


.subckt hp_pod12_ctle_none_dci_in60_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 59.778
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL0 ****************************************************

.subckt hp_pod12_ctle_level0_dci_in40_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 40.354
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_typ
.ends


.subckt hp_pod12_ctle_level0_dci_in48_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 48.236
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_typ
.ends


.subckt hp_pod12_ctle_level0_dci_in60_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 59.778
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_typ
.ends


.subckt hp_pod12_ctle_level0_dci_in40_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 41.734
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_min
.ends


.subckt hp_pod12_ctle_level0_dci_in48_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 49.598
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_min
.ends


.subckt hp_pod12_ctle_level0_dci_in60_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 61.171
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_min
.ends


.subckt hp_pod12_ctle_level0_dci_in40_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 40.354
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_max
.ends


.subckt hp_pod12_ctle_level0_dci_in48_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 48.236
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_max
.ends


.subckt hp_pod12_ctle_level0_dci_in60_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 59.778
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL1 ****************************************************

.subckt hp_pod12_ctle_level1_dci_in40_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 40.354
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_typ
.ends


.subckt hp_pod12_ctle_level1_dci_in48_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 48.236
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_typ
.ends


.subckt hp_pod12_ctle_level1_dci_in60_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 59.778
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_typ
.ends


.subckt hp_pod12_ctle_level1_dci_in40_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 41.734
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_min
.ends


.subckt hp_pod12_ctle_level1_dci_in48_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 49.598
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_min
.ends


.subckt hp_pod12_ctle_level1_dci_in60_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 61.171
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_min
.ends


.subckt hp_pod12_ctle_level1_dci_in40_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 40.354
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_max
.ends


.subckt hp_pod12_ctle_level1_dci_in48_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 48.236
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_max
.ends


.subckt hp_pod12_ctle_level1_dci_in60_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 59.778
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL2 ****************************************************

.subckt hp_pod12_ctle_level2_dci_in40_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 40.354
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_typ
.ends


.subckt hp_pod12_ctle_level2_dci_in48_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 48.236
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_typ
.ends


.subckt hp_pod12_ctle_level2_dci_in60_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 59.778
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_typ
.ends


.subckt hp_pod12_ctle_level2_dci_in40_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 41.734
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_min
.ends


.subckt hp_pod12_ctle_level2_dci_in48_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 49.598
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_min
.ends


.subckt hp_pod12_ctle_level2_dci_in60_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 61.171
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_min
.ends


.subckt hp_pod12_ctle_level2_dci_in40_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 40.354
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_max
.ends


.subckt hp_pod12_ctle_level2_dci_in48_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 48.236
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_max
.ends


.subckt hp_pod12_ctle_level2_dci_in60_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 59.778
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL3 ****************************************************

.subckt hp_pod12_ctle_level3_dci_in40_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 40.354
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_typ
.ends


.subckt hp_pod12_ctle_level3_dci_in48_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 48.236
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_typ
.ends


.subckt hp_pod12_ctle_level3_dci_in60_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 59.778
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_typ
.ends


.subckt hp_pod12_ctle_level3_dci_in40_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 41.734
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_min
.ends


.subckt hp_pod12_ctle_level3_dci_in48_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 49.598
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_min
.ends


.subckt hp_pod12_ctle_level3_dci_in60_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 61.171
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_min
.ends


.subckt hp_pod12_ctle_level3_dci_in40_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 40.354
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_max
.ends


.subckt hp_pod12_ctle_level3_dci_in48_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 48.236
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_max
.ends


.subckt hp_pod12_ctle_level3_dci_in60_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 59.778
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL4 ****************************************************

.subckt hp_pod12_ctle_level4_dci_in40_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 40.354
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_typ
.ends


.subckt hp_pod12_ctle_level4_dci_in48_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 48.236
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_typ
.ends


.subckt hp_pod12_ctle_level4_dci_in60_input_typ in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 59.778
v150 n150 vss_io 1.2
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_typ
.ends


.subckt hp_pod12_ctle_level4_dci_in40_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 41.734
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_min
.ends


.subckt hp_pod12_ctle_level4_dci_in48_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 49.598
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_min
.ends


.subckt hp_pod12_ctle_level4_dci_in60_input_min in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 61.171
v150 n150 vss_io 1.14
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_min
.ends


.subckt hp_pod12_ctle_level4_dci_in40_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 40.354
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_max
.ends


.subckt hp_pod12_ctle_level4_dci_in48_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 48.236
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_max
.ends


.subckt hp_pod12_ctle_level4_dci_in60_input_max in1 vref out1 out2 out3 vccaux_io vss_io
r101 in1 n150 59.778
v150 n150 vss_io 1.26
cio  in1 vss_io 2.6978e-12
XI0 in1 vref out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_max
.ends

********** SUBCKT for DIFF_POD12 CTLE NONDCI ***************************************
********** SUBCKT for CTLE NONE **********************************

.subckt hp_diff_pod12_ctle_none_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 29.524
v151 n151 vss_io 1.2
r102 in2 n152 29.524
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_typ
.ends


.subckt hp_diff_pod12_ctle_none_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 35.428
v151 n151 vss_io 1.2
r102 in2 n152 35.428
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_typ
.ends


.subckt hp_diff_pod12_ctle_none_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 44.283
v151 n151 vss_io 1.2
r102 in2 n152 44.283
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_typ
.ends


.subckt hp_diff_pod12_ctle_none_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 35.329
v151 n151 vss_io 1.14
r102 in2 n152 35.329
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_min
.ends


.subckt hp_diff_pod12_ctle_none_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 42.385
v151 n151 vss_io 1.14
r102 in2 n152 42.385
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_min
.ends


.subckt hp_diff_pod12_ctle_none_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 52.967
v151 n151 vss_io 1.14
r102 in2 n152 52.967
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_min
.ends


.subckt hp_diff_pod12_ctle_none_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 25.272
v151 n151 vss_io 1.26
r102 in2 n152 25.272
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_max
.ends


.subckt hp_diff_pod12_ctle_none_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 30.345
v151 n151 vss_io 1.26
r102 in2 n152 30.345
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_max
.ends


.subckt hp_diff_pod12_ctle_none_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 37.918
v151 n151 vss_io 1.26
r102 in2 n152 37.918
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL0 ****************************************************

.subckt hp_diff_pod12_ctle_level0_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 29.524
v151 n151 vss_io 1.2
r102 in2 n152 29.524
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_typ
.ends


.subckt hp_diff_pod12_ctle_level0_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 35.428
v151 n151 vss_io 1.2
r102 in2 n152 35.428
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_typ
.ends


.subckt hp_diff_pod12_ctle_level0_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 44.283
v151 n151 vss_io 1.2
r102 in2 n152 44.283
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_typ
.ends


.subckt hp_diff_pod12_ctle_level0_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 35.329
v151 n151 vss_io 1.14
r102 in2 n152 35.329
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_min
.ends


.subckt hp_diff_pod12_ctle_level0_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 42.385
v151 n151 vss_io 1.14
r102 in2 n152 42.385
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_min
.ends


.subckt hp_diff_pod12_ctle_level0_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 52.967
v151 n151 vss_io 1.14
r102 in2 n152 52.967
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_min
.ends


.subckt hp_diff_pod12_ctle_level0_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 25.272
v151 n151 vss_io 1.26
r102 in2 n152 25.272
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_max
.ends


.subckt hp_diff_pod12_ctle_level0_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 30.345
v151 n151 vss_io 1.26
r102 in2 n152 30.345
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_max
.ends


.subckt hp_diff_pod12_ctle_level0_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 37.918
v151 n151 vss_io 1.26
r102 in2 n152 37.918
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL1 ****************************************************

.subckt hp_diff_pod12_ctle_level1_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 29.524
v151 n151 vss_io 1.2
r102 in2 n152 29.524
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_typ
.ends


.subckt hp_diff_pod12_ctle_level1_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 35.428
v151 n151 vss_io 1.2
r102 in2 n152 35.428
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_typ
.ends


.subckt hp_diff_pod12_ctle_level1_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 44.283
v151 n151 vss_io 1.2
r102 in2 n152 44.283
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_typ
.ends


.subckt hp_diff_pod12_ctle_level1_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 35.329
v151 n151 vss_io 1.14
r102 in2 n152 35.329
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_min
.ends


.subckt hp_diff_pod12_ctle_level1_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 42.385
v151 n151 vss_io 1.14
r102 in2 n152 42.385
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_min
.ends


.subckt hp_diff_pod12_ctle_level1_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 52.967
v151 n151 vss_io 1.14
r102 in2 n152 52.967
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_min
.ends


.subckt hp_diff_pod12_ctle_level1_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 25.272
v151 n151 vss_io 1.26
r102 in2 n152 25.272
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_max
.ends


.subckt hp_diff_pod12_ctle_level1_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 30.345
v151 n151 vss_io 1.26
r102 in2 n152 30.345
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_max
.ends


.subckt hp_diff_pod12_ctle_level1_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 37.918
v151 n151 vss_io 1.26
r102 in2 n152 37.918
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL2 ****************************************************

.subckt hp_diff_pod12_ctle_level2_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 29.524
v151 n151 vss_io 1.2
r102 in2 n152 29.524
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_typ
.ends


.subckt hp_diff_pod12_ctle_level2_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 35.428
v151 n151 vss_io 1.2
r102 in2 n152 35.428
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_typ
.ends


.subckt hp_diff_pod12_ctle_level2_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 44.283
v151 n151 vss_io 1.2
r102 in2 n152 44.283
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_typ
.ends


.subckt hp_diff_pod12_ctle_level2_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 35.329
v151 n151 vss_io 1.14
r102 in2 n152 35.329
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_min
.ends


.subckt hp_diff_pod12_ctle_level2_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 42.385
v151 n151 vss_io 1.14
r102 in2 n152 42.385
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_min
.ends


.subckt hp_diff_pod12_ctle_level2_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 52.967
v151 n151 vss_io 1.14
r102 in2 n152 52.967
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_min
.ends


.subckt hp_diff_pod12_ctle_level2_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 25.272
v151 n151 vss_io 1.26
r102 in2 n152 25.272
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_max
.ends


.subckt hp_diff_pod12_ctle_level2_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 30.345
v151 n151 vss_io 1.26
r102 in2 n152 30.345
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_max
.ends


.subckt hp_diff_pod12_ctle_level2_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 37.918
v151 n151 vss_io 1.26
r102 in2 n152 37.918
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL3 ****************************************************

.subckt hp_diff_pod12_ctle_level3_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 29.524
v151 n151 vss_io 1.2
r102 in2 n152 29.524
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_typ
.ends


.subckt hp_diff_pod12_ctle_level3_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 35.428
v151 n151 vss_io 1.2
r102 in2 n152 35.428
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_typ
.ends


.subckt hp_diff_pod12_ctle_level3_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 44.283
v151 n151 vss_io 1.2
r102 in2 n152 44.283
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_typ
.ends


.subckt hp_diff_pod12_ctle_level3_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 35.329
v151 n151 vss_io 1.14
r102 in2 n152 35.329
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_min
.ends


.subckt hp_diff_pod12_ctle_level3_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 42.385
v151 n151 vss_io 1.14
r102 in2 n152 42.385
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_min
.ends


.subckt hp_diff_pod12_ctle_level3_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 52.967
v151 n151 vss_io 1.14
r102 in2 n152 52.967
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_min
.ends


.subckt hp_diff_pod12_ctle_level3_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 25.272
v151 n151 vss_io 1.26
r102 in2 n152 25.272
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_max
.ends


.subckt hp_diff_pod12_ctle_level3_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 30.345
v151 n151 vss_io 1.26
r102 in2 n152 30.345
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_max
.ends


.subckt hp_diff_pod12_ctle_level3_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 37.918
v151 n151 vss_io 1.26
r102 in2 n152 37.918
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL4 ****************************************************

.subckt hp_diff_pod12_ctle_level4_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 29.524
v151 n151 vss_io 1.2
r102 in2 n152 29.524
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_typ
.ends


.subckt hp_diff_pod12_ctle_level4_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 35.428
v151 n151 vss_io 1.2
r102 in2 n152 35.428
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_typ
.ends


.subckt hp_diff_pod12_ctle_level4_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 44.283
v151 n151 vss_io 1.2
r102 in2 n152 44.283
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_typ
.ends


.subckt hp_diff_pod12_ctle_level4_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 35.329
v151 n151 vss_io 1.14
r102 in2 n152 35.329
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_min
.ends


.subckt hp_diff_pod12_ctle_level4_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 42.385
v151 n151 vss_io 1.14
r102 in2 n152 42.385
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_min
.ends


.subckt hp_diff_pod12_ctle_level4_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 52.967
v151 n151 vss_io 1.14
r102 in2 n152 52.967
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_min
.ends


.subckt hp_diff_pod12_ctle_level4_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 25.272
v151 n151 vss_io 1.26
r102 in2 n152 25.272
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_max
.ends


.subckt hp_diff_pod12_ctle_level4_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 30.345
v151 n151 vss_io 1.26
r102 in2 n152 30.345
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_max
.ends


.subckt hp_diff_pod12_ctle_level4_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 37.918
v151 n151 vss_io 1.26
r102 in2 n152 37.918
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_max
.ends

********** SUBCKT for DIFF_POD12 CTLE DCI ***************************************
********** SUBCKT for CTLE NONE **********************************

.subckt hp_diff_pod12_ctle_none_dci_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 40.354
v151 n151 vss_io 1.2
r102 in2 n152 40.354
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_typ
.ends


.subckt hp_diff_pod12_ctle_none_dci_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 48.236
v151 n151 vss_io 1.2
r102 in2 n152 48.236
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_typ
.ends


.subckt hp_diff_pod12_ctle_none_dci_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 59.778
v151 n151 vss_io 1.2
r102 in2 n152 59.778
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_typ
.ends


.subckt hp_diff_pod12_ctle_none_dci_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 41.734
v151 n151 vss_io 1.14
r102 in2 n152 41.734
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_min
.ends


.subckt hp_diff_pod12_ctle_none_dci_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 49.598
v151 n151 vss_io 1.14
r102 in2 n152 49.598
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_min
.ends


.subckt hp_diff_pod12_ctle_none_dci_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 61.171
v151 n151 vss_io 1.14
r102 in2 n152 61.171
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_min
.ends


.subckt hp_diff_pod12_ctle_none_dci_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 40.354
v151 n151 vss_io 1.26
r102 in2 n152 40.354
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_max
.ends


.subckt hp_diff_pod12_ctle_none_dci_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 48.236
v151 n151 vss_io 1.26
r102 in2 n152 48.236
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_max
.ends


.subckt hp_diff_pod12_ctle_none_dci_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 59.778
v151 n151 vss_io 1.26
r102 in2 n152 59.778
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_none_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL0 ****************************************************

.subckt hp_diff_pod12_ctle_level0_dci_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 40.354
v151 n151 vss_io 1.2
r102 in2 n152 40.354
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_typ
.ends


.subckt hp_diff_pod12_ctle_level0_dci_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 48.236
v151 n151 vss_io 1.2
r102 in2 n152 48.236
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_typ
.ends


.subckt hp_diff_pod12_ctle_level0_dci_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 59.778
v151 n151 vss_io 1.2
r102 in2 n152 59.778
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_typ
.ends


.subckt hp_diff_pod12_ctle_level0_dci_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 41.734
v151 n151 vss_io 1.14
r102 in2 n152 41.734
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_min
.ends


.subckt hp_diff_pod12_ctle_level0_dci_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 49.598
v151 n151 vss_io 1.14
r102 in2 n152 49.598
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_min
.ends


.subckt hp_diff_pod12_ctle_level0_dci_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 61.171
v151 n151 vss_io 1.14
r102 in2 n152 61.171
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_min
.ends


.subckt hp_diff_pod12_ctle_level0_dci_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 40.354
v151 n151 vss_io 1.26
r102 in2 n152 40.354
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_max
.ends


.subckt hp_diff_pod12_ctle_level0_dci_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 48.236
v151 n151 vss_io 1.26
r102 in2 n152 48.236
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_max
.ends


.subckt hp_diff_pod12_ctle_level0_dci_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 59.778
v151 n151 vss_io 1.26
r102 in2 n152 59.778
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level0_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL1 ****************************************************

.subckt hp_diff_pod12_ctle_level1_dci_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 40.354
v151 n151 vss_io 1.2
r102 in2 n152 40.354
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_typ
.ends


.subckt hp_diff_pod12_ctle_level1_dci_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 48.236
v151 n151 vss_io 1.2
r102 in2 n152 48.236
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_typ
.ends


.subckt hp_diff_pod12_ctle_level1_dci_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 59.778
v151 n151 vss_io 1.2
r102 in2 n152 59.778
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_typ
.ends


.subckt hp_diff_pod12_ctle_level1_dci_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 41.734
v151 n151 vss_io 1.14
r102 in2 n152 41.734
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_min
.ends


.subckt hp_diff_pod12_ctle_level1_dci_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 49.598
v151 n151 vss_io 1.14
r102 in2 n152 49.598
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_min
.ends


.subckt hp_diff_pod12_ctle_level1_dci_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 61.171
v151 n151 vss_io 1.14
r102 in2 n152 61.171
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_min
.ends


.subckt hp_diff_pod12_ctle_level1_dci_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 40.354
v151 n151 vss_io 1.26
r102 in2 n152 40.354
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_max
.ends


.subckt hp_diff_pod12_ctle_level1_dci_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 48.236
v151 n151 vss_io 1.26
r102 in2 n152 48.236
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_max
.ends


.subckt hp_diff_pod12_ctle_level1_dci_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 59.778
v151 n151 vss_io 1.26
r102 in2 n152 59.778
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level1_input_max
.ends


.subckt hp_diff_pod12_ctle_level2_dci_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 40.354
v151 n151 vss_io 1.2
r102 in2 n152 40.354
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_typ
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL2 ****************************************************

.subckt hp_diff_pod12_ctle_level2_dci_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 48.236
v151 n151 vss_io 1.2
r102 in2 n152 48.236
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_typ
.ends


.subckt hp_diff_pod12_ctle_level2_dci_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 59.778
v151 n151 vss_io 1.2
r102 in2 n152 59.778
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_typ
.ends


.subckt hp_diff_pod12_ctle_level2_dci_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 41.734
v151 n151 vss_io 1.14
r102 in2 n152 41.734
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_min
.ends


.subckt hp_diff_pod12_ctle_level2_dci_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 49.598
v151 n151 vss_io 1.14
r102 in2 n152 49.598
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_min
.ends


.subckt hp_diff_pod12_ctle_level2_dci_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 61.171
v151 n151 vss_io 1.14
r102 in2 n152 61.171
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_min
.ends


.subckt hp_diff_pod12_ctle_level2_dci_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 40.354
v151 n151 vss_io 1.26
r102 in2 n152 40.354
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_max
.ends


.subckt hp_diff_pod12_ctle_level2_dci_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 48.236
v151 n151 vss_io 1.26
r102 in2 n152 48.236
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_max
.ends


.subckt hp_diff_pod12_ctle_level2_dci_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 59.778
v151 n151 vss_io 1.26
r102 in2 n152 59.778
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level2_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL3 ****************************************************

.subckt hp_diff_pod12_ctle_level3_dci_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 40.354
v151 n151 vss_io 1.2
r102 in2 n152 40.354
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_typ
.ends


.subckt hp_diff_pod12_ctle_level3_dci_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 48.236
v151 n151 vss_io 1.2
r102 in2 n152 48.236
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_typ
.ends


.subckt hp_diff_pod12_ctle_level3_dci_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 59.778
v151 n151 vss_io 1.2
r102 in2 n152 59.778
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_typ
.ends


.subckt hp_diff_pod12_ctle_level3_dci_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 41.734
v151 n151 vss_io 1.14
r102 in2 n152 41.734
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_min
.ends


.subckt hp_diff_pod12_ctle_level3_dci_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 49.598
v151 n151 vss_io 1.14
r102 in2 n152 49.598
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_min
.ends


.subckt hp_diff_pod12_ctle_level3_dci_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 61.171
v151 n151 vss_io 1.14
r102 in2 n152 61.171
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_min
.ends


.subckt hp_diff_pod12_ctle_level3_dci_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 40.354
v151 n151 vss_io 1.26
r102 in2 n152 40.354
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_max
.ends


.subckt hp_diff_pod12_ctle_level3_dci_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 48.236
v151 n151 vss_io 1.26
r102 in2 n152 48.236
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_max
.ends


.subckt hp_diff_pod12_ctle_level3_dci_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 59.778
v151 n151 vss_io 1.26
r102 in2 n152 59.778
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level3_input_max
.ends

**************************************************************************************
********** SUBCKT for CTLE LEVEL4 ****************************************************

.subckt hp_diff_pod12_ctle_level4_dci_in40_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 40.354
v151 n151 vss_io 1.2
r102 in2 n152 40.354
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_typ
.ends


.subckt hp_diff_pod12_ctle_level4_dci_in48_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 48.236
v151 n151 vss_io 1.2
r102 in2 n152 48.236
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_typ
.ends


.subckt hp_diff_pod12_ctle_level4_dci_in60_input_typ in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 59.778
v151 n151 vss_io 1.2
r102 in2 n152 59.778
v152 n152 vss_io 1.2
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_typ
.ends


.subckt hp_diff_pod12_ctle_level4_dci_in40_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 41.734
v151 n151 vss_io 1.14
r102 in2 n152 41.734
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_min
.ends


.subckt hp_diff_pod12_ctle_level4_dci_in48_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 49.598
v151 n151 vss_io 1.14
r102 in2 n152 49.598
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_min
.ends


.subckt hp_diff_pod12_ctle_level4_dci_in60_input_min in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 61.171
v151 n151 vss_io 1.14
r102 in2 n152 61.171
v152 n152 vss_io 1.14
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_min
.ends


.subckt hp_diff_pod12_ctle_level4_dci_in40_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 40.354
v151 n151 vss_io 1.26
r102 in2 n152 40.354
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_max
.ends


.subckt hp_diff_pod12_ctle_level4_dci_in48_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 48.236
v151 n151 vss_io 1.26
r102 in2 n152 48.236
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_max
.ends


.subckt hp_diff_pod12_ctle_level4_dci_in60_input_max in1 in2 out1 out2 out3 vccaux_io vss_io
r101 in1 n151 59.778
v151 n151 vss_io 1.26
r102 in2 n152 59.778
v152 n152 vss_io 1.26
cio1  in1 vss_io 2.6978e-12
cio2  in2 vss_io 2.6978e-12
XI0 in1 in2 out1 out2 out3 vccaux_io vss_io hp_diff_pod12_ctle_level4_input_max
.ends
***********************************************************************************************

**************************************************************************************
********** SUBCKT for CTLE NONE ****************************************************

.subckt hp_diff_pod12_ctle_none_input_typ in_p vref outp_ctle outn_ctle out_rx vccaux_io vss_io
C2 outn_ctle vss_io 105e-15
C3 outp_ctle vss_io 105e-15
I4 vccaux_io n102 DC=745e-6
I1 n102 outn_ctle DC=752.6e-6
I5 vccaux_io n101 DC=745e-6
I0 n101 outp_ctle DC=752.6e-6
I2 vccaux_io outn_ctle DC=40e-6
I3 vccaux_io outp_ctle DC=40e-6
C4 n102 vss_io 20e-15
C0 n101 outp_ctle 50e-15
C6 n103 n104 361e-15
C1 n102 outn_ctle 50e-15
C5 n101 vss_io 20e-15
G0 n101 outp_ctle VCCS n106 n108 6.806e-3 MAX=800e-6 MIN=-800e-6 M=1
G1 n102 outn_ctle VCCS n107 n105 6.806e-3 MAX=800e-6 MIN=-800e-6 M=1
E5 out_rx vss_io VCVS outp_ctle outn_ctle 1e3 MAX=850e-3 MIN=0
E1 n105 vss_io VCVS in_p vref 500e-3
E2 n106 vss_io VCVS n101 n102 500e-3
E3 n107 vss_io VCVS n102 n101 500e-3
E0 n108 vss_io VCVS vref in_p 500e-3
R4 n102 n101 160
R6 n104 n101 40.96
R0 n101 outp_ctle 44.7e3
R5 n102 n103 40.96
R2 outn_ctle vss_io 402
R1 n102 outn_ctle 44.7e3
R7 vccaux_io n102 11.9e3
R8 vccaux_io n101 11.9e3
R3 outp_ctle vss_io 402
.ends hp_diff_pod12_ctle_none_input_typ

.subckt hp_diff_pod12_ctle_none_input_min in_p vref outp_ctle outn_ctle out_rx vccaux_io vss_io
C2 outn_ctle vss_io 135e-15
C3 outp_ctle vss_io 135e-15
I4 vccaux_io n102 DC=574e-6
I1 n102 outn_ctle DC=602e-6
I5 vccaux_io n101 DC=574e-6
I0 n101 outp_ctle DC=602e-6
I2 vccaux_io outn_ctle DC=30.8e-6
I3 vccaux_io outp_ctle DC=30.8e-6
C6 n102 vss_io 20e-15
C7 n101 vss_io 20e-15
C0 n101 outp_ctle 50e-15
C4 n103 n104 357e-15
C1 n102 outn_ctle 50e-15
G0 n101 outp_ctle VCCS n106 n108 5.085e-3 MAX=650e-6 MIN=-650e-6 M=1
G1 n102 outn_ctle VCCS n107 n105 5.085e-3 MAX=650e-6 MIN=-650e-6 M=1
E1 n105 vss_io VCVS in_p vref 500e-3
E2 n106 vss_io VCVS n101 n102 500e-3
E5 out_rx vss_io VCVS outp_ctle outn_ctle 1e3 MAX=807.5e-3 MIN=0
E3 n107 vss_io VCVS n102 n101 500e-3
E0 n108 vss_io VCVS vref in_p 500e-3
R4 n102 n101 185
R6 n104 n101 57.98
R0 n101 outp_ctle 59.2e3
R5 n102 n103 57.98
R2 outn_ctle vss_io 457
R1 n102 outn_ctle 59.2e3
R9 vccaux_io n102 5.83e3
R10 vccaux_io n101 5.83e3
R3 outp_ctle vss_io 457
.ends hp_diff_pod12_ctle_none_input_min

.subckt hp_diff_pod12_ctle_none_input_max in_p vref outp_ctle outn_ctle out_rx vccaux_io vss_io
C2 outn_ctle vss_io 148e-15
C3 outp_ctle vss_io 148e-15
I4 vccaux_io n102 DC=952e-6
I1 n102 outp_ctle DC=957.9e-6
I5 vccaux_io n101 DC=952e-6
I0 n101 outp_ctle DC=957.9e-6
I2 vccaux_io outn_ctle DC=54.8e-6
I3 vccaux_io outp_ctle DC=54.8e-6
C6 n102 vss_io 20e-15
C7 n101 vss_io 20e-15
C0 n101 outp_ctle 50e-15
C4 n103 n104 347e-15
C1 n102 outp_ctle 50e-15
G0 n101 outp_ctle VCCS n106 n108 8.314e-3 MAX=1e-3 MIN=-1e-3 M=1
G1 n102 outp_ctle VCCS n107 n105 8.314e-3 MAX=1e-3 MIN=-1e-3 M=1
E5 out_rx vss_io VCVS outp_ctle outn_ctle 1e3 MAX=892.5e-3 MIN=0
E1 n105 vss_io VCVS in_p vref 500e-3
E2 n106 vss_io VCVS n101 n102 500e-3
E3 n107 vss_io VCVS n102 n101 500e-3
E0 n108 vss_io VCVS vref in_p 500e-3
R4 n102 n101 143
R6 n104 n101 33.89
R0 n101 outp_ctle 31.9e3
R5 n102 n103 33.89
R2 outn_ctle vss_io 350
R1 n102 outp_ctle 31.9e3
R9 vccaux_io n102 13.6e3
R10 vccaux_io n101 13.6e3
R3 outp_ctle vss_io 350
.ends hp_diff_pod12_ctle_none_input_max

**************************************************************************************
********** SUBCKT for CTLE LEVEL0 ****************************************************

.subckt hp_diff_pod12_ctle_level0_input_typ in_p vref outp_ctle outn_ctle out_rx vccaux_io vss_io
C2 outn_ctle vss_io 105e-15
C3 outp_ctle vss_io 105e-15
I4 vccaux_io n102 DC=745e-6
I1 n102 outn_ctle DC=752.6e-6
I5 vccaux_io n101 DC=745e-6
I0 n101 outp_ctle DC=752.6e-6
I2 vccaux_io outn_ctle DC=40e-6
I3 vccaux_io outp_ctle DC=40e-6
C4 n102 vss_io 20e-15
C0 n101 outp_ctle 50e-15
C6 n103 n104 361e-15
C1 n102 outn_ctle 50e-15
C5 n101 vss_io 20e-15
G0 n101 outp_ctle VCCS n106 n108 6.806e-3 MAX=800e-6 MIN=-800e-6 M=1
G1 n102 outn_ctle VCCS n107 n105 6.806e-3 MAX=800e-6 MIN=-800e-6 M=1
E5 out_rx vss_io VCVS outp_ctle outn_ctle 1e3 MAX=850e-3 MIN=0
E1 n105 vss_io VCVS in_p vref 500e-3
E2 n106 vss_io VCVS n101 n102 500e-3
E3 n107 vss_io VCVS n102 n101 500e-3
E0 n108 vss_io VCVS vref in_p 500e-3
R4 n102 n101 160
R6 n104 n101 40.96
R0 n101 outp_ctle 44.7e3
R5 n102 n103 40.96
R2 outn_ctle vss_io 402
R1 n102 outn_ctle 44.7e3
R7 vccaux_io n102 11.9e3
R8 vccaux_io n101 11.9e3
R3 outp_ctle vss_io 402
.ends hp_diff_pod12_ctle_level0_input_typ

.subckt hp_diff_pod12_ctle_level0_input_min in_p vref outp_ctle outn_ctle out_rx vccaux_io vss_io
C2 outn_ctle vss_io 135e-15
C3 outp_ctle vss_io 135e-15
I4 vccaux_io n102 DC=574e-6
I1 n102 outn_ctle DC=602e-6
I5 vccaux_io n101 DC=574e-6
I0 n101 outp_ctle DC=602e-6
I2 vccaux_io outn_ctle DC=30.8e-6
I3 vccaux_io outp_ctle DC=30.8e-6
C6 n102 vss_io 20e-15
C7 n101 vss_io 20e-15
C0 n101 outp_ctle 50e-15
C4 n103 n104 357e-15
C1 n102 outn_ctle 50e-15
G0 n101 outp_ctle VCCS n106 n108 5.085e-3 MAX=650e-6 MIN=-650e-6 M=1
G1 n102 outn_ctle VCCS n107 n105 5.085e-3 MAX=650e-6 MIN=-650e-6 M=1
E1 n105 vss_io VCVS in_p vref 500e-3
E2 n106 vss_io VCVS n101 n102 500e-3
E5 out_rx vss_io VCVS outp_ctle outn_ctle 1e3 MAX=807.5e-3 MIN=0
E3 n107 vss_io VCVS n102 n101 500e-3
E0 n108 vss_io VCVS vref in_p 500e-3
R4 n102 n101 185
R6 n104 n101 57.98
R0 n101 outp_ctle 59.2e3
R5 n102 n103 57.98
R2 outn_ctle vss_io 457
R1 n102 outn_ctle 59.2e3
R9 vccaux_io n102 5.83e3
R10 vccaux_io n101 5.83e3
R3 outp_ctle vss_io 457
.ends hp_diff_pod12_ctle_level0_input_min

.subckt hp_diff_pod12_ctle_level0_input_max in_p vref outp_ctle outn_ctle out_rx vccaux_io vss_io
C2 outn_ctle vss_io 148e-15
C3 outp_ctle vss_io 148e-15
I4 vccaux_io n102 DC=952e-6
I1 n102 outn_ctle DC=957.9e-6
I5 vccaux_io n101 DC=952e-6
I0 n101 outp_ctle DC=957.9e-6
I2 vccaux_io outn_ctle DC=54.8e-6
I3 vccaux_io outp_ctle DC=54.8e-6
C6 n102 vss_io 20e-15
C7 n101 vss_io 20e-15
C0 n101 outp_ctle 50e-15
C4 n103 n104 347e-15
C1 n102 outn_ctle 50e-15
G0 n101 outp_ctle VCCS n106 n108 8.314e-3 MAX=1e-3 MIN=-1e-3 M=1
G1 n102 outn_ctle VCCS n107 n105 8.314e-3 MAX=1e-3 MIN=-1e-3 M=1
E5 out_rx vss_io VCVS outp_ctle outn_ctle 1e3 MAX=892.5e-3 MIN=0
E1 n105 vss_io VCVS in_p vref 500e-3
E2 n106 vss_io VCVS n101 n102 500e-3
E3 n107 vss_io VCVS n102 n101 500e-3
E0 n108 vss_io VCVS vref in_p 500e-3
R4 n102 n101 143
R6 n104 n101 33.89
R0 n101 outp_ctle 31.9e3
R5 n102 n103 33.89
R2 outn_ctle vss_io 350
R1 n102 outn_ctle 31.9e3
R9 vccaux_io n102 13.6e3
R10 vccaux_io n101 13.6e3
R3 outp_ctle vss_io 350
.ends hp_diff_pod12_ctle_level0_input_max

**************************************************************************************
********** SUBCKT for CTLE LEVEL1 ****************************************************

.subckt hp_diff_pod12_ctle_level1_input_typ in_p vref outp_ctle outn_ctle out_rx vccaux_io vss_io
C2 outn_ctle vss_io 68e-15
C3 outp_ctle vss_io 68e-15
I4 vccaux_io n102 DC=745e-6
I1 n102 outn_ctle DC=752.6e-6
I5 vccaux_io n101 DC=745e-6
I0 n101 outp_ctle DC=752.6e-6
I2 vccaux_io outn_ctle DC=40e-6
I3 vccaux_io outp_ctle DC=40e-6
C4 n102 vss_io 20e-15
C0 n101 outp_ctle 50e-15
C6 n103 n104 361e-15
C1 n102 outn_ctle 50e-15
C5 n101 vss_io 20e-15
G0 n101 outp_ctle VCCS n106 n108 6.806e-3 MAX=800e-6 MIN=-800e-6 M=1
G1 n102 outn_ctle VCCS n107 n105 6.806e-3 MAX=800e-6 MIN=-800e-6 M=1
E5 out_rx vss_io VCVS outp_ctle outn_ctle 1e3 MAX=850e-3 MIN=0
E1 n105 vss_io VCVS in_p vref 500e-3
E2 n106 vss_io VCVS n101 n102 500e-3
E3 n107 vss_io VCVS n102 n101 500e-3
E0 n108 vss_io VCVS vref in_p 500e-3
R4 n102 n101 293
R6 n104 n101 40.96
R0 n101 outp_ctle 44.7e3
R5 n102 n103 40.96
R2 outn_ctle vss_io 402
R1 n102 outn_ctle 44.7e3
R7 vccaux_io n102 11.9e3
R8 vccaux_io n101 11.9e3
R3 outp_ctle vss_io 402
.ends hp_diff_pod12_ctle_level1_input_typ

.subckt hp_diff_pod12_ctle_level1_input_min in_p vref outp_ctle outn_ctle out_rx vccaux_io vss_io
C2 outn_ctle vss_io 67e-15
C3 outp_ctle vss_io 67e-15
I4 vccaux_io n102 DC=574e-6
I1 n102 outn_ctle DC=602e-6
I5 vccaux_io n101 DC=574e-6
I0 n101 outp_ctle DC=602e-6
I2 vccaux_io outn_ctle DC=30.8e-6
I3 vccaux_io outp_ctle DC=30.8e-6
C6 n102 vss_io 20e-15
C7 n101 vss_io 20e-15
C0 n101 outp_ctle 50e-15
C4 n103 n104 357e-15
C1 n102 outn_ctle 50e-15
G0 n101 outp_ctle VCCS n106 n108 5.085e-3 MAX=650e-6 MIN=-650e-6 M=1
G1 n102 outn_ctle VCCS n107 n105 5.085e-3 MAX=650e-6 MIN=-650e-6 M=1
E1 n105 vss_io VCVS in_p vref 500e-3
E2 n106 vss_io VCVS n101 n102 500e-3
E5 out_rx vss_io VCVS outp_ctle outn_ctle 1e3 MAX=807.5e-3 MIN=0
E3 n107 vss_io VCVS n102 n101 500e-3
E0 n108 vss_io VCVS vref in_p 500e-3
R4 n102 n101 336
R6 n104 n101 57.98
R0 n101 outp_ctle 59.2e3
R5 n102 n103 57.98
R2 outn_ctle vss_io 457
R1 n102 outn_ctle 59.2e3
R9 vccaux_io n102 5.83e3
R10 vccaux_io n101 5.83e3
R3 outp_ctle vss_io 457
.ends hp_diff_pod12_ctle_level1_input_min

.subckt hp_diff_pod12_ctle_level1_input_max in_p vref outp_ctle outn_ctle out_rx vccaux_io vss_io
C2 outn_ctle vss_io 65e-15
C3 outp_ctle vss_io 65e-15
I4 vccaux_io n102 DC=952e-6
I1 n102 outn_ctle DC=957.9e-6
I5 vccaux_io n101 DC=952e-6
I0 n101 outp_ctle DC=957.9e-6
I2 vccaux_io outn_ctle DC=54.8e-6
I3 vccaux_io outp_ctle DC=54.8e-6
C6 n102 vss_io 20e-15
C7 n101 vss_io 20e-15
C0 n101 outp_ctle 50e-15
C4 n103 n104 347e-15
C1 n102 outn_ctle 50e-15
G0 n101 outp_ctle VCCS n106 n108 8.314e-3 MAX=1e-3 MIN=-1e-3 M=1
G1 n102 outn_ctle VCCS n107 n105 8.314e-3 MAX=1e-3 MIN=-1e-3 M=1
E5 out_rx vss_io VCVS outp_ctle outn_ctle 1e3 MAX=892.5e-3 MIN=0
E1 n105 vss_io VCVS in_p vref 500e-3
E2 n106 vss_io VCVS n101 n102 500e-3
E3 n107 vss_io VCVS n102 n101 500e-3
E0 n108 vss_io VCVS vref in_p 500e-3
R4 n102 n101 252
R6 n104 n101 33.89
R0 n101 outp_ctle 31.9e3
R5 n102 n103 33.89
R2 outn_ctle vss_io 350
R1 n102 outn_ctle 31.9e3
R9 vccaux_io n102 13.6e3
R10 vccaux_io n101 13.6e3
R3 outp_ctle vss_io 350
.ends hp_diff_pod12_ctle_level1_input_max

**************************************************************************************
********** SUBCKT for CTLE LEVEL2 ****************************************************

.subckt hp_diff_pod12_ctle_level2_input_typ in_p vref outp_ctle outn_ctle out_rx vccaux_io vss_io
C2 outn_ctle vss_io 63e-15
C3 outp_ctle vss_io 63e-15
I4 vccaux_io n102 DC=745e-6
I1 n102 outn_ctle DC=752.6e-6
I5 vccaux_io n101 DC=745e-6
I0 n101 outp_ctle DC=752.6e-6
I2 vccaux_io outn_ctle DC=40e-6
I3 vccaux_io outp_ctle DC=40e-6
C4 n102 vss_io 20e-15
C0 n101 outp_ctle 50e-15
C6 n103 n104 361e-15
C1 n102 outn_ctle 50e-15
C5 n101 vss_io 20e-15
G0 n101 outp_ctle VCCS n106 n108 6.806e-3 MAX=800e-6 MIN=-800e-6 M=1
G1 n102 outn_ctle VCCS n107 n105 6.806e-3 MAX=800e-6 MIN=-800e-6 M=1
E1 n105 vss_io VCVS in_p vref 500e-3
E2 n106 vss_io VCVS n101 n102 500e-3
E5 out_rx vss_io VCVS outp_ctle outn_ctle 1e3 MAX=850e-3 MIN=0
E3 n107 vss_io VCVS n102 n101 500e-3
E0 n108 vss_io VCVS vref in_p 500e-3
R4 n102 n101 336
R6 n104 n101 40.96
R0 n101 outp_ctle 44.7e3
R5 n102 n103 40.96
R2 outn_ctle vss_io 402
R1 n102 outn_ctle 44.7e3
R7 vccaux_io n102 11.9e3
R8 vccaux_io n101 11.9e3
R3 outp_ctle vss_io 402
.ends hp_diff_pod12_ctle_level2_input_typ

.subckt hp_diff_pod12_ctle_level2_input_min in_p vref outp_ctle outn_ctle out_rx vccaux_io vss_io
C2 outn_ctle vss_io 60e-15
C3 outp_ctle vss_io 60e-15
I4 vccaux_io n102 DC=574e-6
I1 n102 outn_ctle DC=602e-6
I5 vccaux_io n101 DC=574e-6
I0 n101 outp_ctle DC=602e-6
I2 vccaux_io outn_ctle DC=30.8e-6
I3 vccaux_io outp_ctle DC=30.8e-6
C6 n102 vss_io 20e-15
C7 n101 vss_io 20e-15
C0 n101 outp_ctle 50e-15
C4 n103 n104 357e-15
C1 n102 outn_ctle 50e-15
G0 n101 outp_ctle VCCS n106 n108 5.085e-3 MAX=650e-6 MIN=-650e-6 M=1
G1 n102 outn_ctle VCCS n107 n105 5.085e-3 MAX=650e-6 MIN=-650e-6 M=1
E1 n105 vss_io VCVS in_p vref 500e-3
E2 n106 vss_io VCVS n101 n102 500e-3
E5 out_rx vss_io VCVS outp_ctle outn_ctle 1e3 MAX=807.5e-3 MIN=0
E3 n107 vss_io VCVS n102 n101 500e-3
E0 n108 vss_io VCVS vref in_p 500e-3
R4 n102 n101 386
R6 n104 n101 57.98
R0 n101 outp_ctle 59.2e3
R5 n102 n103 57.98
R2 outn_ctle vss_io 457
R1 n102 outn_ctle 59.2e3
R9 vccaux_io n102 5.83e3
R10 vccaux_io n101 5.83e3
R3 outp_ctle vss_io 457
.ends hp_diff_pod12_ctle_level2_input_min

.subckt hp_diff_pod12_ctle_level2_input_max in_p vref outp_ctle outn_ctle out_rx vccaux_io vss_io
C2 outn_ctle vss_io 60e-15
C3 outp_ctle vss_io 60e-15
I4 vccaux_io n102 DC=952e-6
I1 n102 outn_ctle DC=957.9e-6
I5 vccaux_io n101 DC=952e-6
I0 n101 outp_ctle DC=957.9e-6
I2 vccaux_io outn_ctle DC=54.8e-6
I3 vccaux_io outp_ctle DC=54.8e-6
C6 n102 vss_io 20e-15
C7 n101 vss_io 20e-15
C0 n101 outp_ctle 50e-15
C4 n103 n104 347e-15
C1 n102 outn_ctle 50e-15
G0 n101 outp_ctle VCCS n106 n108 8.314e-3 MAX=1e-3 MIN=-1e-3 M=1
G1 n102 outn_ctle VCCS n107 n105 8.314e-3 MAX=1e-3 MIN=-1e-3 M=1
E1 n105 vss_io VCVS in_p vref 500e-3
E2 n106 vss_io VCVS n101 n102 500e-3
E5 out_rx vss_io VCVS outp_ctle outn_ctle 1e3 MAX=892.5e-3 MIN=0
E3 n107 vss_io VCVS n102 n101 500e-3
E0 n108 vss_io VCVS vref in_p 500e-3
R4 n102 n101 290
R6 n104 n101 33.89
R0 n101 outp_ctle 31.9e3
R5 n102 n103 33.89
R2 outn_ctle vss_io 350
R1 n102 outn_ctle 31.9e3
R9 vccaux_io n102 13.6e3
R10 vccaux_io n101 13.6e3
R3 outp_ctle vss_io 350
.ends hp_diff_pod12_ctle_level2_input_max

**************************************************************************************
********** SUBCKT for CTLE LEVEL3 ****************************************************

.subckt hp_diff_pod12_ctle_level3_input_typ in_p vref outp_ctle outn_ctle out_rx vccaux_io vss_io
C2 outn_ctle vss_io 61e-15
C3 outp_ctle vss_io 61e-15
I4 vccaux_io n102 DC=745e-6
I1 n102 outn_ctle DC=752.6e-6
I5 vccaux_io n101 DC=745e-6
I0 n101 outp_ctle DC=752.6e-6
I2 vccaux_io outn_ctle DC=40e-6
I3 vccaux_io outp_ctle DC=40e-6
C4 n102 vss_io 20e-15
C0 n101 outp_ctle 50e-15
C6 n103 n104 420e-15
C1 n102 outn_ctle 50e-15
C5 n101 vss_io 20e-15
G0 n101 outp_ctle VCCS n106 n108 6.806e-3 MAX=800e-6 MIN=-800e-6 M=1
G1 n102 outn_ctle VCCS n107 n105 6.806e-3 MAX=800e-6 MIN=-800e-6 M=1
E1 n105 vss_io VCVS in_p vref 500e-3
E2 n106 vss_io VCVS n101 n102 500e-3
E5 out_rx vss_io VCVS outp_ctle outn_ctle 1e3 MAX=850e-3 MIN=0
E3 n107 vss_io VCVS n102 n101 500e-3
E0 n108 vss_io VCVS vref in_p 500e-3
R4 n102 n101 564
R6 n104 n101 40.96
R0 n101 outp_ctle 44.7e3
R5 n102 n103 40.96
R2 outn_ctle vss_io 402
R1 n102 outn_ctle 44.7e3
R7 vccaux_io n102 11.9e3
R8 vccaux_io n101 11.9e3
R3 outp_ctle vss_io 402
.ends hp_diff_pod12_ctle_level3_input_typ

.subckt hp_diff_pod12_ctle_level3_input_min in_p vref outp_ctle outn_ctle out_rx vccaux_io vss_io
C2 outn_ctle vss_io 65e-15
C3 outp_ctle vss_io 65e-15
I4 vccaux_io n102 DC=574e-6
I1 n102 outn_ctle DC=602e-6
I5 vccaux_io n101 DC=574e-6
I0 n101 outp_ctle DC=602e-6
I2 vccaux_io outn_ctle DC=30.8e-6
I3 vccaux_io outp_ctle DC=30.8e-6
C6 n102 vss_io 20e-15
C7 n101 vss_io 20e-15
C0 n101 outp_ctle 50e-15
C4 n103 n104 467e-15
C1 n102 outn_ctle 50e-15
G0 n101 outp_ctle VCCS n106 n108 5.085e-3 MAX=650e-6 MIN=-650e-6 M=1
G1 n102 outn_ctle VCCS n107 n105 5.085e-3 MAX=650e-6 MIN=-650e-6 M=1
E1 n105 vss_io VCVS in_p vref 500e-3
E2 n106 vss_io VCVS n101 n102 500e-3
E5 out_rx vss_io VCVS outp_ctle outn_ctle 1e3 MAX=807.5e-3 MIN=0
E3 n107 vss_io VCVS n102 n101 500e-3
E0 n108 vss_io VCVS vref in_p 500e-3
R4 n102 n101 652
R6 n104 n101 57.98
R0 n101 outp_ctle 59.2e3
R5 n102 n103 57.98
R2 outn_ctle vss_io 459
R1 n102 outn_ctle 59.2e3
R9 vccaux_io n102 5.83e3
R10 vccaux_io n101 5.83e3
R3 outp_ctle vss_io 459
.ends hp_diff_pod12_ctle_level3_input_min

.subckt hp_diff_pod12_ctle_level3_input_max in_p vref outp_ctle outn_ctle out_rx vccaux_io vss_io
C2 outn_ctle vss_io 62e-15
C3 outp_ctle vss_io 62e-15
I4 vccaux_io n102 DC=952e-6
I1 n102 outn_ctle DC=957.9e-6
I5 vccaux_io n101 DC=952e-6
I0 n101 outp_ctle DC=957.9e-6
I2 vccaux_io outn_ctle DC=54.8e-6
I3 vccaux_io outp_ctle DC=54.8e-6
C6 n102 vss_io 20e-15
C7 n101 vss_io 20e-15
C0 n101 outp_ctle 50e-15
C4 n103 n104 407e-15
C1 n102 outn_ctle 50e-15
G0 n101 outp_ctle VCCS n106 n108 8.314e-3 MAX=1e-3 MIN=-1e-3 M=1
G1 n102 outn_ctle VCCS n107 n105 8.314e-3 MAX=1e-3 MIN=-1e-3 M=1
E1 n105 vss_io VCVS in_p vref 500e-3
E2 n106 vss_io VCVS n101 n102 500e-3
E5 out_rx vss_io VCVS outp_ctle outn_ctle 1e3 MAX=892.5e-3 MIN=0
E3 n107 vss_io VCVS n102 n101 500e-3
E0 n108 vss_io VCVS vref in_p 500e-3
R4 n102 n101 492
R6 n104 n101 33.89
R0 n101 outp_ctle 31.9e3
R5 n102 n103 33.89
R2 outn_ctle vss_io 352
R1 n102 outn_ctle 31.9e3
R9 vccaux_io n102 13.6e3
R10 vccaux_io n101 13.6e3
R3 outp_ctle vss_io 352
.ends hp_diff_pod12_ctle_level3_input_max

**************************************************************************************
********** SUBCKT for CTLE LEVEL4 ****************************************************

.subckt hp_diff_pod12_ctle_level4_input_typ in_p vref outp_ctle outn_ctle out_rx vccaux_io vss_io
C2 outn_ctle vss_io 65e-15
C3 outp_ctle vss_io 65e-15
I4 vccaux_io n102 DC=745e-6
I1 n102 outn_ctle DC=752.6e-6
I5 vccaux_io n101 DC=745e-6
I0 n101 outp_ctle DC=752.6e-6
I2 vccaux_io outn_ctle DC=40e-6
I3 vccaux_io outp_ctle DC=40e-6
C4 n102 vss_io 20e-15
C0 n101 outp_ctle 50e-15
C6 n103 n104 480e-15
C1 n102 outn_ctle 50e-15
C5 n101 vss_io 20e-15
G0 n101 outp_ctle VCCS n106 n108 6.806e-3 MAX=800e-6 MIN=-800e-6 M=1
G1 n102 outn_ctle VCCS n107 n105 6.806e-3 MAX=800e-6 MIN=-800e-6 M=1
E1 n105 vss_io VCVS in_p vref 500e-3
E2 n106 vss_io VCVS n101 n102 500e-3
E5 out_rx vss_io VCVS outp_ctle outn_ctle 1e3 MAX=850e-3 MIN=0
E3 n107 vss_io VCVS n102 n101 500e-3
E0 n108 vss_io VCVS vref in_p 500e-3
R4 n102 n101 900
R6 n104 n101 40.96
R0 n101 outp_ctle 44.7e3
R5 n102 n103 40.96
R2 outn_ctle vss_io 402
R1 n102 outn_ctle 44.7e3
R7 vccaux_io n102 11.9e3
R8 vccaux_io n101 11.9e3
R3 outp_ctle vss_io 402
.ends hp_diff_pod12_ctle_level4_input_typ

.subckt hp_diff_pod12_ctle_level4_input_min in_p vref outp_ctle outn_ctle out_rx vccaux_io vss_io
C2 outn_ctle vss_io 65e-15
C3 outp_ctle vss_io 65e-15
I4 vccaux_io n102 DC=574e-6
I1 n102 outn_ctle DC=602e-6
I5 vccaux_io n101 DC=574e-6
I0 n101 outp_ctle DC=602e-6
I2 vccaux_io outn_ctle DC=30.8e-6
I3 vccaux_io outp_ctle DC=30.8e-6
C6 n102 vss_io 20e-15
C7 n101 vss_io 20e-15
C0 n101 outp_ctle 50e-15
C4 n103 n104 527e-15
C1 n102 outn_ctle 50e-15
G0 n101 outp_ctle VCCS n106 n108 5.085e-3 MAX=650e-6 MIN=-650e-6 M=1
G1 n102 outn_ctle VCCS n107 n105 5.085e-3 MAX=650e-6 MIN=-650e-6 M=1
E1 n105 vss_io VCVS in_p vref 500e-3
E2 n106 vss_io VCVS n101 n102 500e-3
E5 out_rx vss_io VCVS outp_ctle outn_ctle 1e3 MAX=807.5e-3 MIN=0
E3 n107 vss_io VCVS n102 n101 500e-3
E0 n108 vss_io VCVS vref in_p 500e-3
R4 n102 n101 1.038e3
R6 n104 n101 57.98
R0 n101 outp_ctle 59.2e3
R5 n102 n103 57.98
R2 outn_ctle vss_io 459
R1 n102 outn_ctle 59.2e3
R9 vccaux_io n102 5.83e3
R10 vccaux_io n101 5.83e3
R3 outp_ctle vss_io 459
.ends hp_diff_pod12_ctle_level4_input_min

.subckt hp_diff_pod12_ctle_level4_input_max in_p vref outp_ctle outn_ctle out_rx vccaux_io vss_io
C2 outn_ctle vss_io 74e-15
C3 outp_ctle vss_io 74e-15
I4 vccaux_io n102 DC=952e-6
I1 n102 outn_ctle DC=957.9e-6
I5 vccaux_io n101 DC=952e-6
I0 n101 outp_ctle DC=957.9e-6
I2 vccaux_io outn_ctle DC=54.8e-6
I3 vccaux_io outp_ctle DC=54.8e-6
C6 n102 vss_io 20e-15
C7 n101 vss_io 20e-15
C0 n101 outp_ctle 50e-15
C4 n103 n104 407e-15
C1 n102 outn_ctle 50e-15
G0 n101 outp_ctle VCCS n106 n108 8.314e-3 MAX=1e-3 MIN=-1e-3 M=1
G1 n102 outn_ctle VCCS n107 n105 8.314e-3 MAX=1e-3 MIN=-1e-3 M=1
E1 n105 vss_io VCVS in_p vref 500e-3
E2 n106 vss_io VCVS n101 n102 500e-3
E5 out_rx vss_io VCVS outp_ctle outn_ctle 1e3 MAX=892.5e-3 MIN=0
E3 n107 vss_io VCVS n102 n101 500e-3
E0 n108 vss_io VCVS vref in_p 500e-3
R4 n102 n101 785
R6 n104 n101 33.89
R0 n101 outp_ctle 31.9e3
R5 n102 n103 33.89
R2 outn_ctle vss_io 354
R1 n102 outn_ctle 31.9e3
R9 vccaux_io n102 13.6e3
R10 vccaux_io n101 13.6e3
R3 outp_ctle vss_io 354
.ends hp_diff_pod12_ctle_level4_input_max

************End of subcircuits**************************************

