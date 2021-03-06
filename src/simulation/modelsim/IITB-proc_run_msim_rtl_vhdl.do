transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/anon/Desktop/IITB-proc/src/controller.vhd}
vcom -93 -work work {/home/anon/Desktop/IITB-proc/src/ALU.vhd}
vcom -93 -work work {/home/anon/Desktop/IITB-proc/src/memory.vhd}
vcom -93 -work work {/home/anon/Desktop/IITB-proc/src/RF.vhd}
vcom -93 -work work {/home/anon/Desktop/IITB-proc/src/datapath.vhd}
vcom -93 -work work {/home/anon/Desktop/IITB-proc/src/iitbproc.vhd}
vcom -93 -work work {/home/anon/Desktop/IITB-proc/src/iitbproc-tb.vhd}

vcom -93 -work work {/home/anon/Desktop/IITB-proc/src/iitbproc-tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclone10lp -L rtl_work -L work -voptargs="+acc"  cputest

add wave *
view structure
view signals
run -all
