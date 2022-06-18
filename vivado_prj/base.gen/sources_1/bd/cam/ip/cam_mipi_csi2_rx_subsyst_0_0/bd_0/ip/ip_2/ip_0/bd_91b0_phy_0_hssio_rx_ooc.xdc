#############################################################
# Clock Period Constraints                                 
#############################################################
create_clock -period 5.0 [get_ports  clk]
create_clock -period 5.000 [get_ports  riu_clk]
create_clock -period 5.332 [get_ports fifo_rd_clk_0]
create_clock -period 5.332 [get_ports fifo_rd_clk_1]
create_clock -period 5.332 [get_ports fifo_rd_clk_2]
create_clock -period 5.332 [get_ports fifo_rd_clk_3]
create_clock -period 5.332 [get_ports fifo_rd_clk_4]
create_clock -period 5.332 [get_ports fifo_rd_clk_5]
