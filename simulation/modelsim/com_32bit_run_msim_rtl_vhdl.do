transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/proyectosQuartus/UART/32bits_com_fullduplex/com_32bit.vhd}
vcom -93 -work work {D:/proyectosQuartus/UART/32bits_com_fullduplex/rx_32bit.vhd}
vcom -93 -work work {D:/proyectosQuartus/UART/32bits_com_fullduplex/tx_32bit.vhd}
vcom -93 -work work {D:/proyectosQuartus/UART/32bits_com_fullduplex/out_disp32.vhd}
vcom -93 -work work {D:/proyectosQuartus/UART/32bits_com_fullduplex/clk_div.vhd}

vcom -93 -work work {D:/proyectosQuartus/UART/32bits_com_fullduplex/tb_com_32bit.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_com_32bit

add wave *
view structure
view signals
run -all
