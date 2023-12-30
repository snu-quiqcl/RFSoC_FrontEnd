.subckt DESIGN.DOUT1 5 6 

*** Printing nodes ****
.node_param_diff 5 6 name=DESIGN.DOUT1.1_DESIGN.DOUT1.2_diff print refnode vhi_min=0 vlo_max=0
e DESIGNDOUT11_DESIGNDOUT12_comm 0 v='v(5)/2+v(6)/2' 
.node_param DESIGNDOUT11_DESIGNDOUT12_comm name=DESIGN.DOUT1.1_DESIGN.DOUT1.2_comm print 
.node_param 5 name=DESIGN.DOUT1.1  print 
.node_param 6 name=DESIGN.DOUT1.2  print 
*** End of node printing ***

*** Pin Iocells Section ***
* This component has no signal model
v_short_DESIGN.DOUT1.1 3 5 0.0
v_short_DESIGN.DOUT1.2 4 6 0.0

bdrvr 27 5 28 32 31 29 30 Model=SPARTAN7_LVDS_25_HR_O_Typ_27degC File=ibis_models.inc
* stimulus for pin DESIGN.DOUT1.1
x_stimulus 31 32 28 DESIGN.DOUT1.1_stim

*** No signal model: Guessing Dc Voltages from iocell ***

*** Guessing Dc power_bus Voltage ***
v_power_bus_DESIGN.DOUT1.1_27 27 0 2.5

*** Guessing Dc ground_bus Voltage ***
v_ground_bus_DESIGN.DOUT1.1_28 28 0 0

*** Guessing Dc power_clamp_bus Voltage ***
v_power_clamp_bus_DESIGN.DOUT1.1_29 29 0 2.5

*** Guessing Dc ground_clamp_bus Voltage ***
v_ground_clamp_bus_DESIGN.DOUT1.1_30 30 0 0

bdrvr 33 6 34 38 37 35 36 Model=SPARTAN7_LVDS_25_HR_O_Typ_27degC File=ibis_models.inc
* stimulus for pin DESIGN.DOUT1.2
x_stimulus 37 38 34 DESIGN.DOUT1.2_stim

*** No signal model: Guessing Dc Voltages from iocell ***

*** Guessing Dc power_bus Voltage ***
v_power_bus_DESIGN.DOUT1.2_33 33 0 2.5

*** Guessing Dc ground_bus Voltage ***
v_ground_bus_DESIGN.DOUT1.2_34 34 0 0

*** Guessing Dc power_clamp_bus Voltage ***
v_power_clamp_bus_DESIGN.DOUT1.2_35 35 0 2.5

*** Guessing Dc ground_clamp_bus Voltage ***
v_ground_clamp_bus_DESIGN.DOUT1.2_36 36 0 0
.ends DESIGN.DOUT1
.subckt DESIGN.DIN1 5 6 

*** Printing nodes ****
.node_param_diff 5 6 name=DESIGN.DIN1.1_DESIGN.DIN1.2_diff print cycles=(1 )  vhi_min=1.7 vlo_max=0.7
e DESIGNDIN11_DESIGNDIN12_comm 0 v='v(5)/2+v(6)/2' 
.node_param DESIGNDIN11_DESIGNDIN12_comm name=DESIGN.DIN1.1_DESIGN.DIN1.2_comm print 
.node_param 5 name=DESIGN.DIN1.1  vlo_max=1.15 vhi_min=1.25 print  cycles=(1 ) 
.node_param 6 name=DESIGN.DIN1.2  vlo_max=1.15 vhi_min=1.25 print  cycles=(1 ) 
*** End of node printing ***

*** Pin Iocells Section ***
* This component has no signal model
v_short_DESIGN.DIN1.1 3 5 0.0
v_short_DESIGN.DIN1.2 4 6 0.0

bdrvr 27 5 28 32 31 29 30 Model=SPARTAN7_LVDS_25_HR_I_Typ_27degC File=ibis_models.inc
* stimulus for pin DESIGN.DIN1.1
x_stimulus 31 32 28 DESIGN.DIN1.1_stim

*** No signal model: Guessing Dc Voltages from iocell ***

*** Guessing Dc power_bus Voltage ***
v_power_bus_DESIGN.DIN1.1_27 27 0 2.5

*** Guessing Dc ground_bus Voltage ***
v_ground_bus_DESIGN.DIN1.1_28 28 0 0

*** Guessing Dc power_clamp_bus Voltage ***
v_power_clamp_bus_DESIGN.DIN1.1_29 29 0 2.5

*** Guessing Dc ground_clamp_bus Voltage ***
v_ground_clamp_bus_DESIGN.DIN1.1_30 30 0 0

bdrvr 33 6 34 38 37 35 36 Model=SPARTAN7_LVDS_25_HR_I_Typ_27degC File=ibis_models.inc
* stimulus for pin DESIGN.DIN1.2
x_stimulus 37 38 34 DESIGN.DIN1.2_stim

*** No signal model: Guessing Dc Voltages from iocell ***

*** Guessing Dc power_bus Voltage ***
v_power_bus_DESIGN.DIN1.2_33 33 0 2.5

*** Guessing Dc ground_bus Voltage ***
v_ground_bus_DESIGN.DIN1.2_34 34 0 0

*** Guessing Dc power_clamp_bus Voltage ***
v_power_clamp_bus_DESIGN.DIN1.2_35 35 0 2.5

*** Guessing Dc ground_clamp_bus Voltage ***
v_ground_clamp_bus_DESIGN.DIN1.2_36 36 0 0
.ends DESIGN.DIN1
