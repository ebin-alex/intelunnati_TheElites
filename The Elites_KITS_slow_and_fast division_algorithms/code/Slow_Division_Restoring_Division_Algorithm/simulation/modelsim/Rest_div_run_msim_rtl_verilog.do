transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/ebina/Desktop/GIthub/intelunnati_TheElites/shot/code/Slow_Division_Restoring_Division_Algorithm {C:/Users/ebina/Desktop/GIthub/intelunnati_TheElites/shot/code/Slow_Division_Restoring_Division_Algorithm/Rest_div.v}

vlog -vlog01compat -work work +incdir+C:/Users/ebina/Desktop/GIthub/intelunnati_TheElites/shot/code/Slow_Division_Restoring_Division_Algorithm {C:/Users/ebina/Desktop/GIthub/intelunnati_TheElites/shot/code/Slow_Division_Restoring_Division_Algorithm/Rest_div_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  Rest_div_tb

add wave *
view structure
view signals
run -all
