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
    id 13 \
    name src_data_stream_0_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_data_stream_0_V \
    op interface \
    ports { src_data_stream_0_V_dout { I 8 vector } src_data_stream_0_V_empty_n { I 1 bit } src_data_stream_0_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name src_data_stream_1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_data_stream_1_V \
    op interface \
    ports { src_data_stream_1_V_dout { I 8 vector } src_data_stream_1_V_empty_n { I 1 bit } src_data_stream_1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name src_data_stream_2_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_data_stream_2_V \
    op interface \
    ports { src_data_stream_2_V_dout { I 8 vector } src_data_stream_2_V_empty_n { I 1 bit } src_data_stream_2_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name src_data_stream_3_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_data_stream_3_V \
    op interface \
    ports { src_data_stream_3_V_dout { I 8 vector } src_data_stream_3_V_empty_n { I 1 bit } src_data_stream_3_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name dst_data_stream_0_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dst_data_stream_0_V \
    op interface \
    ports { dst_data_stream_0_V_din { O 8 vector } dst_data_stream_0_V_full_n { I 1 bit } dst_data_stream_0_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name dst_data_stream_1_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dst_data_stream_1_V \
    op interface \
    ports { dst_data_stream_1_V_din { O 8 vector } dst_data_stream_1_V_full_n { I 1 bit } dst_data_stream_1_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name dst_data_stream_2_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dst_data_stream_2_V \
    op interface \
    ports { dst_data_stream_2_V_din { O 8 vector } dst_data_stream_2_V_full_n { I 1 bit } dst_data_stream_2_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name dst_data_stream_3_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dst_data_stream_3_V \
    op interface \
    ports { dst_data_stream_3_V_din { O 8 vector } dst_data_stream_3_V_full_n { I 1 bit } dst_data_stream_3_V_write { O 1 bit } } \
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
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


