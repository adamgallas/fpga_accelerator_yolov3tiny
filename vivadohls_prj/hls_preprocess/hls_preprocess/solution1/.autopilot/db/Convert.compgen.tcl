# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 21
set hasByteEnable 0
set MemName Convert_quant_table
set CoreName ap_simcore_mem
set PortList { 1 1 1 }
set DataWd 7
set AddrRange 256
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "0000000" "0000000" "0000001" "0000001" "0000010" "0000010" "0000011" "0000011" "0000100" "0000100" "0000101" "0000101" "0000110" "0000110" "0000111" "0000111" "0001000" "0001000" "0001001" "0001001" "0001010" "0001010" "0001011" "0001011" "0001100" "0001100" "0001101" "0001101" "0001110" "0001110" "0001111" "0001111" "0010000" "0010000" "0010001" "0010001" "0010010" "0010010" "0010011" "0010011" "0010100" "0010100" "0010101" "0010101" "0010110" "0010110" "0010111" "0010111" "0011000" "0011000" "0011001" "0011001" "0011010" "0011010" "0011011" "0011011" "0011100" "0011100" "0011101" "0011101" "0011110" "0011110" "0011111" "0011111" "0100000" "0100000" "0100001" "0100001" "0100010" "0100010" "0100011" "0100011" "0100100" "0100100" "0100101" "0100101" "0100110" "0100110" "0100111" "0100111" "0101000" "0101000" "0101001" "0101001" "0101010" "0101010" "0101011" "0101011" "0101100" "0101100" "0101101" "0101101" "0101110" "0101110" "0101111" "0101111" "0110000" "0110000" "0110001" "0110001" "0110010" "0110010" "0110011" "0110011" "0110100" "0110100" "0110101" "0110101" "0110110" "0110110" "0110111" "0110111" "0111000" "0111000" "0111001" "0111001" "0111010" "0111010" "0111011" "0111011" "0111100" "0111100" "0111101" "0111101" "0111110" "0111110" "0111111" "0111111" "1000000" "1000000" "1000001" "1000001" "1000010" "1000010" "1000011" "1000011" "1000100" "1000100" "1000101" "1000101" "1000110" "1000110" "1000111" "1000111" "1001000" "1001000" "1001001" "1001001" "1001010" "1001010" "1001011" "1001011" "1001100" "1001100" "1001101" "1001101" "1001110" "1001110" "1001111" "1001111" "1010000" "1010000" "1010001" "1010001" "1010010" "1010010" "1010011" "1010011" "1010100" "1010100" "1010101" "1010101" "1010110" "1010110" "1010111" "1010111" "1011000" "1011000" "1011001" "1011001" "1011010" "1011010" "1011011" "1011011" "1011100" "1011100" "1011101" "1011101" "1011110" "1011110" "1011111" "1011111" "1100000" "1100000" "1100001" "1100001" "1100010" "1100010" "1100011" "1100011" "1100100" "1100100" "1100101" "1100101" "1100110" "1100110" "1100111" "1100111" "1101000" "1101000" "1101001" "1101001" "1101010" "1101010" "1101011" "1101011" "1101100" "1101100" "1101101" "1101101" "1101110" "1101110" "1101111" "1101111" "1110000" "1110000" "1110001" "1110001" "1110010" "1110010" "1110011" "1110011" "1110100" "1110100" "1110101" "1110101" "1110110" "1110110" "1110111" "1110111" "1111000" "1111000" "1111001" "1111001" "1111010" "1111010" "1111011" "1111011" "1111100" "1111100" "1111101" "1111101" "1111110" "1111110" "1111111" "1111111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 3 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 3 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
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
    id 23 \
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
    id 24 \
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
    id 25 \
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
    id 26 \
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
    id 27 \
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
    id 28 \
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
    id 29 \
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


