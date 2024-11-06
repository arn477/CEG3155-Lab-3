transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/arnav/Desktop/CEG3155-Lab-3/fsmTopLevel.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG3155-Lab-3/fsmController.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG3155-Lab-3/nBitTimer.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG3155-Lab-3/nbitcomparator.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG3155-Lab-3/oneBitComparator.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG3155-Lab-3/debouncer_2.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG3155-Lab-3/clk_div.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG3155-Lab-3/oneBitAdderSubtractor.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG3155-Lab-3/nBitAdderSubtractor.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG3155-Lab-3/nbitregister.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG3155-Lab-3/nbitmux41.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG3155-Lab-3/nBitIncrementer.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG3155-Lab-3/mux41.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG3155-Lab-3/mux21.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG3155-Lab-3/enardFF_2.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG3155-Lab-3/bcd_7seg.vhd}

