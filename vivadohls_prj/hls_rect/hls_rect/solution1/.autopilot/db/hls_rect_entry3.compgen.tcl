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
    id 1 \
    name xleft_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xleft_s \
    op interface \
    ports { xleft_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name xright_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xright_s \
    op interface \
    ports { xright_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name ytop_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ytop_s \
    op interface \
    ports { ytop_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name ydown_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ydown_s \
    op interface \
    ports { ydown_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name color1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_color1 \
    op interface \
    ports { color1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name color2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_color2 \
    op interface \
    ports { color2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name color3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_color3 \
    op interface \
    ports { color3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name char1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_char1 \
    op interface \
    ports { char1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name char2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_char2 \
    op interface \
    ports { char2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name char3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_char3 \
    op interface \
    ports { char3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name char4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_char4 \
    op interface \
    ports { char4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name char5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_char5 \
    op interface \
    ports { char5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name char6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_char6 \
    op interface \
    ports { char6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name xleft_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xleft_out \
    op interface \
    ports { xleft_out_din { O 16 vector } xleft_out_full_n { I 1 bit } xleft_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name xright_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xright_out \
    op interface \
    ports { xright_out_din { O 16 vector } xright_out_full_n { I 1 bit } xright_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
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
    id 17 \
    name ydown_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ydown_out \
    op interface \
    ports { ydown_out_din { O 16 vector } ydown_out_full_n { I 1 bit } ydown_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
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
    id 19 \
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
    id 20 \
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
    id 21 \
    name char1_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_char1_out \
    op interface \
    ports { char1_out_din { O 8 vector } char1_out_full_n { I 1 bit } char1_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name char2_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_char2_out \
    op interface \
    ports { char2_out_din { O 8 vector } char2_out_full_n { I 1 bit } char2_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name char3_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_char3_out \
    op interface \
    ports { char3_out_din { O 8 vector } char3_out_full_n { I 1 bit } char3_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name char4_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_char4_out \
    op interface \
    ports { char4_out_din { O 8 vector } char4_out_full_n { I 1 bit } char4_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name char5_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_char5_out \
    op interface \
    ports { char5_out_din { O 8 vector } char5_out_full_n { I 1 bit } char5_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name char6_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_char6_out \
    op interface \
    ports { char6_out_din { O 8 vector } char6_out_full_n { I 1 bit } char6_out_write { O 1 bit } } \
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


