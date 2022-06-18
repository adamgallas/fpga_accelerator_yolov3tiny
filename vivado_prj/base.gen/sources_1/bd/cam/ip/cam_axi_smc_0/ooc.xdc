# aclk {FREQ_HZ 250000000 CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0 PHASE 0.000} aclk1 {FREQ_HZ 300000000 CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_dp_video_ref_clk PHASE 0.000}
# Clock Domain: cam_zynq_ultra_ps_e_0_0_pl_clk0
create_clock -name aclk -period 4.000 [get_ports aclk]
# Clock Domain: cam_zynq_ultra_ps_e_0_0_dp_video_ref_clk
create_clock -name aclk1 -period 3.333 [get_ports aclk1]
# Generated clocks
