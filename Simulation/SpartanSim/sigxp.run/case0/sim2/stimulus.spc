
*** Printing Custom Stimuli ***

.subckt PMOD2BNCSIMPLE_V1_04.IOP2.1_stim 5 4 3
v_5 5 3 1
v_4 4 3 PULSE (0 1 0 2.40983e-09 1.399e-09 0.5 1)

.ends PMOD2BNCSIMPLE_V1_04.IOP2.1_stim

*** Printing Custom Stimuli ***

.subckt PMOD2BNCSIMPLE_V1_04.U1.1_stim 5 4 3
v_5 5 3 0
v_4 4 3 1
.ends PMOD2BNCSIMPLE_V1_04.U1.1_stim

.subckt PMOD2BNCSIMPLE_V1_04.IN2.1_stim 5 4 3
v_enable_off 5 3 0
v_input_inactive 4 3 1
.ends PMOD2BNCSIMPLE_V1_04.IN2.1_stim
