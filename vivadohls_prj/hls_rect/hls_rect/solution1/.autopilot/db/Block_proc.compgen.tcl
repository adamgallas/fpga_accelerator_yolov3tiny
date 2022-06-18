# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name xleft_s \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xleft_s \
    op interface \
    ports { xleft_s_dout { I 16 vector } xleft_s_empty_n { I 1 bit } xleft_s_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name ch2x_out_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ch2x_out_out \
    op interface \
    ports { ch2x_out_out_din { O 16 vector } ch2x_out_out_full_n { I 1 bit } ch2x_out_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name ch3x_out_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ch3x_out_out \
    op interface \
    ports { ch3x_out_out_din { O 16 vector } ch3x_out_out_full_n { I 1 bit } ch3x_out_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name ch4x_out_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ch4x_out_out \
    op interface \
    ports { ch4x_out_out_din { O 16 vector } ch4x_out_out_full_n { I 1 bit } ch4x_out_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name ch5x_out_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ch5x_out_out \
    op interface \
    ports { ch5x_out_out_din { O 16 vector } ch5x_out_out_full_n { I 1 bit } ch5x_out_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name ch6x_out_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ch6x_out_out \
    op interface \
    ports { ch6x_out_out_din { O 16 vector } ch6x_out_out_full_n { I 1 bit } ch6x_out_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


