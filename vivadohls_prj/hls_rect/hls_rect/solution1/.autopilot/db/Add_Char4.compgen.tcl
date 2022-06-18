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
    id 147 \
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
    id 148 \
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
    id 149 \
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
    id 150 \
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
    id 151 \
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
    id 152 \
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
    id 153 \
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
    id 154 \
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
    id 155 \
    name ch4x_loc \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ch4x_loc \
    op interface \
    ports { ch4x_loc_dout { I 16 vector } ch4x_loc_empty_n { I 1 bit } ch4x_loc_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name ytop_s \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ytop_s \
    op interface \
    ports { ytop_s_dout { I 16 vector } ytop_s_empty_n { I 1 bit } ytop_s_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name char4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_char4 \
    op interface \
    ports { char4_dout { I 8 vector } char4_empty_n { I 1 bit } char4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name color1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_color1 \
    op interface \
    ports { color1_dout { I 8 vector } color1_empty_n { I 1 bit } color1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name color2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_color2 \
    op interface \
    ports { color2_dout { I 8 vector } color2_empty_n { I 1 bit } color2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name color3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_color3 \
    op interface \
    ports { color3_dout { I 8 vector } color3_empty_n { I 1 bit } color3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name ytop_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ytop_out \
    op interface \
    ports { ytop_out_din { O 16 vector } ytop_out_full_n { I 1 bit } ytop_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name color1_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_color1_out \
    op interface \
    ports { color1_out_din { O 8 vector } color1_out_full_n { I 1 bit } color1_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name color2_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_color2_out \
    op interface \
    ports { color2_out_din { O 8 vector } color2_out_full_n { I 1 bit } color2_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name color3_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_color3_out \
    op interface \
    ports { color3_out_din { O 8 vector } color3_out_full_n { I 1 bit } color3_out_write { O 1 bit } } \
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


