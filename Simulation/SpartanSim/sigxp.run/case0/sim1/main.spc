*Main Circuit File
* Interconnect subcircuit statements for Board DESIGN
xDESIGN_icn_ckt 1 2 3 4 DESIGN_icn_ckt
* Component subcircuit statements
xDESIGN.DOUT1 1 2 DESIGN.DOUT1
xDESIGN.DIN1 3 4 DESIGN.DIN1
.include ./interconn.spc
.include ./comps.spc
.include ./stimulus.spc
.end
