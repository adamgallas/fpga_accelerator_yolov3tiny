
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:062default:default2
00:00:182default:default2
1044.9142default:default2
0.0002default:defaultZ17-268h px? 
>
Refreshing IP repositories
234*coregenZ19-234h px? 
b
 Loaded user IP repository '%s'.
1135*coregen2
d:/base2default:defaultZ19-1700h px? 
?
?If you move the project, the path for repository '%s' may become invalid. A better location for the repostory would be in a path adjacent to the project. (Current project location is '%s'.)1680*coregen2
d:/base2default:default2:
&d:/base/base.runs/bd_91b0_rx_0_synth_12default:defaultZ19-3656h px? 
?
"Loaded Vivado IP repository '%s'.
1332*coregen2<
(D:/Programs/Xilinx/Vivado/2020.1/data/ip2default:defaultZ19-2313h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2'
update_ip_catalog: 2default:default2
00:00:052default:default2
00:00:072default:default2
1044.9142default:default2
0.0002default:defaultZ17-268h px? 
?
Command: %s
53*	vivadotcl2a
Msynth_design -top bd_91b0_rx_0 -part xczu3eg-sfvc784-1-e -mode out_of_context2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xczu3eg2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xczu3eg2default:defaultZ17-349h px? 
Z
Loading part %s157*device2'
xczu3eg-sfvc784-1-e2default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
_
#Helper process launched with PID %s4824*oasys2
42842default:defaultZ8-7075h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:12 ; elapsed = 00:00:26 . Memory (MB): peak = 1536.020 ; gain = 73.988
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2 
bd_91b0_rx_02default:default2
 2default:default2z
dd:/base/base.srcs/sources_1/bd/cam/ip/cam_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_1/synth/bd_91b0_rx_0.v2default:default2
582default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2!
xpm_fifo_sync2default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
18432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2!
xpm_fifo_base2default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
562default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter COMMON_CLOCK bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter RELATED_CLOCKS bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter FIFO_MEMORY_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter ECC_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CASCADE_HEIGHT bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter FIFO_WRITE_DEPTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter WRITE_DATA_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter WR_DATA_COUNT_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter PROG_FULL_THRESH bound to: 11 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter USE_ADV_FEATURES bound to: 0707 - type: string 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter READ_MODE bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter FIFO_READ_LATENCY bound to: 1 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter READ_DATA_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter RD_DATA_COUNT_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter PROG_EMPTY_THRESH bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter DOUT_RESET_VALUE bound to: 0 - type: string 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter CDC_DEST_SYNC_FF bound to: 2 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter FULL_RESET_VALUE bound to: 0 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter REMOVE_WR_RD_PROT_LOGIC bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter WAKEUP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter VERSION bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter invalid bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter stage1_valid bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter stage2_valid bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter both_stages_valid bound to: 3 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter FIFO_MEM_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter RD_MODE bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter ENABLE_ECC bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter FIFO_READ_DEPTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter FIFO_SIZE bound to: 192 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter WR_WIDTH_LOG bound to: 4 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter WR_DEPTH_LOG bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter WR_PNTR_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter RD_PNTR_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter FULL_RST_VAL bound to: 1'b0 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter WR_RD_RATIO bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter PF_THRESH_ADJ bound to: 9 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter PE_THRESH_ADJ bound to: 3 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter PF_THRESH_MIN bound to: 5 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter PF_THRESH_MAX bound to: 11 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter PE_THRESH_MIN bound to: 5 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter PE_THRESH_MAX bound to: 11 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter WR_DC_WIDTH_EXT bound to: 5 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter RD_DC_WIDTH_EXT bound to: 5 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter RD_LATENCY bound to: 2 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter WIDTH_RATIO bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter EN_ADV_FEATURE bound to: 16'b0000011100000111 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_OF bound to: 1'b1 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_PF bound to: 1'b1 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter EN_WDC bound to: 1'b1 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_AF bound to: 1'b0 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter EN_WACK bound to: 1'b0 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter FG_EQ_ASYM_DOUT bound to: 1'b0 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_UF bound to: 1'b1 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_PE bound to: 1'b1 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter EN_RDC bound to: 1'b1 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_AE bound to: 1'b0 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter EN_DVLD bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2#
xpm_memory_base2default:default2
 2default:default2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2default:default2
572default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter MEMORY_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter MEMORY_SIZE bound to: 192 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter MEMORY_PRIMITIVE bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter CLOCKING_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter ECC_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter MEMORY_INIT_FILE bound to: none - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter MEMORY_INIT_PARAM bound to: (null) - type: string 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter USE_MEM_INIT_MMI bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter USE_MEM_INIT bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter MEMORY_OPTIMIZATION bound to: true - type: string 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter WAKEUP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter AUTO_SLEEP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter MESSAGE_CONTROL bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter VERSION bound to: 0 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter USE_EMBEDDED_CONSTRAINT bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CASCADE_HEIGHT bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter WRITE_PROTECT bound to: 1 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter WRITE_DATA_WIDTH_A bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter READ_DATA_WIDTH_A bound to: 12 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter BYTE_WRITE_WIDTH_A bound to: 12 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter ADDR_WIDTH_A bound to: 4 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter READ_RESET_VALUE_A bound to: 0 - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter READ_LATENCY_A bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter WRITE_MODE_A bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter RST_MODE_A bound to: SYNC - type: string 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter WRITE_DATA_WIDTH_B bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter READ_DATA_WIDTH_B bound to: 12 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter BYTE_WRITE_WIDTH_B bound to: 12 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter ADDR_WIDTH_B bound to: 4 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter READ_RESET_VALUE_B bound to: 0 - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter READ_LATENCY_B bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter WRITE_MODE_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter RST_MODE_B bound to: SYNC - type: string 
2default:defaulth p
x
? 
p
%s
*synth2X
D	Parameter P_MEMORY_PRIMITIVE bound to: distributed - type: string 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter P_MIN_WIDTH_DATA_A bound to: 12 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter P_MIN_WIDTH_DATA_B bound to: 12 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_MIN_WIDTH_DATA bound to: 12 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_MIN_WIDTH_DATA_ECC bound to: 12 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_MAX_DEPTH_DATA bound to: 16 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter P_ECC_MODE bound to: no_ecc - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_MEMORY_OPT bound to: yes - type: string 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_WIDTH_COL_WRITE_A bound to: 12 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_WIDTH_COL_WRITE_B bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter P_NUM_COLS_WRITE_A bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter P_NUM_COLS_WRITE_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter P_NUM_ROWS_WRITE_A bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter P_NUM_ROWS_WRITE_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_NUM_ROWS_READ_A bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_NUM_ROWS_READ_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_WIDTH_ADDR_WRITE_A bound to: 4 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_WIDTH_ADDR_WRITE_B bound to: 4 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter P_WIDTH_ADDR_READ_A bound to: 4 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter P_WIDTH_ADDR_READ_B bound to: 4 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter P_WIDTH_ADDR_LSB_WRITE_A bound to: 0 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter P_WIDTH_ADDR_LSB_WRITE_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter P_WIDTH_ADDR_LSB_READ_A bound to: 0 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter P_WIDTH_ADDR_LSB_READ_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_ENABLE_BYTE_WRITE_A bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_ENABLE_BYTE_WRITE_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_SDP_WRITE_MODE bound to: yes - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter rsta_loop_iter bound to: 12 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter rstb_loop_iter bound to: 12 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter NUM_CHAR_LOC bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter MAX_NUM_CHAR bound to: 0 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter P_MIN_WIDTH_DATA_SHFT bound to: 12 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_MIN_WIDTH_DATA_LDW bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
xpm_memory_base2default:default2
 2default:default2
22default:default2
12default:default2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2$
xpm_fifo_reg_bit2default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17982default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter RST_VALUE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
xpm_fifo_reg_bit2default:default2
 2default:default2
32default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17982default:default8@Z8-6155h px? 
?
default block is never used226*oasys2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
11892default:default8@Z8-226h px? 
?
default block is never used226*oasys2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
12352default:default8@Z8-226h px? 
?
default block is never used226*oasys2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
12462default:default8@Z8-226h px? 
?
synthesizing module '%s'%s4497*oasys2$
xpm_counter_updn2default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter COUNTER_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_VALUE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
xpm_counter_updn2default:default2
 2default:default2
42default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
xpm_fifo_rst2default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
15142default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter COMMON_CLOCK bound to: 1 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter CDC_DEST_SYNC_FF bound to: 2 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
xpm_fifo_rst2default:default2
 2default:default2
52default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
15142default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys24
 xpm_counter_updn__parameterized02default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter COUNTER_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_VALUE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 xpm_counter_updn__parameterized02default:default2
 2default:default2
52default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys24
 xpm_counter_updn__parameterized12default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter COUNTER_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_VALUE bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 xpm_counter_updn__parameterized12default:default2
 2default:default2
52default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys24
 xpm_counter_updn__parameterized22default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter COUNTER_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_VALUE bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 xpm_counter_updn__parameterized22default:default2
 2default:default2
52default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
xpm_fifo_base2default:default2
 2default:default2
62default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
562default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
xpm_fifo_sync2default:default2
 2default:default2
72default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
18432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
xpm_fifo_sync__parameterized02default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
18432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys21
xpm_fifo_base__parameterized02default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
562default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter COMMON_CLOCK bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter RELATED_CLOCKS bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter FIFO_MEMORY_TYPE bound to: 2 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter ECC_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CASCADE_HEIGHT bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter FIFO_WRITE_DEPTH bound to: 2048 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter WRITE_DATA_WIDTH bound to: 68 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter WR_DATA_COUNT_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter PROG_FULL_THRESH bound to: 2043 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter USE_ADV_FEATURES bound to: 0f0f - type: string 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter READ_MODE bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter FIFO_READ_LATENCY bound to: 1 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter READ_DATA_WIDTH bound to: 68 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter RD_DATA_COUNT_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter PROG_EMPTY_THRESH bound to: 10 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter DOUT_RESET_VALUE bound to: 0 - type: string 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter CDC_DEST_SYNC_FF bound to: 2 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter FULL_RESET_VALUE bound to: 0 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter REMOVE_WR_RD_PROT_LOGIC bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter WAKEUP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter VERSION bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter invalid bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter stage1_valid bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter stage2_valid bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter both_stages_valid bound to: 3 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter FIFO_MEM_TYPE bound to: 2 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter RD_MODE bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter ENABLE_ECC bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter FIFO_READ_DEPTH bound to: 2048 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter FIFO_SIZE bound to: 139264 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter WR_WIDTH_LOG bound to: 7 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter WR_DEPTH_LOG bound to: 11 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter WR_PNTR_WIDTH bound to: 11 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter RD_PNTR_WIDTH bound to: 11 - type: integer 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter FULL_RST_VAL bound to: 1'b0 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter WR_RD_RATIO bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter PF_THRESH_ADJ bound to: 2041 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter PE_THRESH_ADJ bound to: 8 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter PF_THRESH_MIN bound to: 5 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter PF_THRESH_MAX bound to: 2043 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter PE_THRESH_MIN bound to: 5 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter PE_THRESH_MAX bound to: 2043 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter WR_DC_WIDTH_EXT bound to: 12 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter RD_DC_WIDTH_EXT bound to: 12 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter RD_LATENCY bound to: 2 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter WIDTH_RATIO bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter EN_ADV_FEATURE bound to: 16'b0000111100001111 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_OF bound to: 1'b1 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_PF bound to: 1'b1 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter EN_WDC bound to: 1'b1 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_AF bound to: 1'b1 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter EN_WACK bound to: 1'b0 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter FG_EQ_ASYM_DOUT bound to: 1'b0 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_UF bound to: 1'b1 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_PE bound to: 1'b1 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter EN_RDC bound to: 1'b1 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_AE bound to: 1'b1 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter EN_DVLD bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys24
 xpm_counter_updn__parameterized32default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter COUNTER_WIDTH bound to: 11 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_VALUE bound to: 3 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 xpm_counter_updn__parameterized32default:default2
 2default:default2
82default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys24
 xpm_counter_updn__parameterized42default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter COUNTER_WIDTH bound to: 11 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_VALUE bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 xpm_counter_updn__parameterized42default:default2
 2default:default2
82default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys23
xpm_memory_base__parameterized02default:default2
 2default:default2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2default:default2
572default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter MEMORY_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter MEMORY_SIZE bound to: 139264 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter MEMORY_PRIMITIVE bound to: 2 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter CLOCKING_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter ECC_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter MEMORY_INIT_FILE bound to: none - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter MEMORY_INIT_PARAM bound to: (null) - type: string 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter USE_MEM_INIT_MMI bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter USE_MEM_INIT bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter MEMORY_OPTIMIZATION bound to: true - type: string 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter WAKEUP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter AUTO_SLEEP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter MESSAGE_CONTROL bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter VERSION bound to: 0 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter USE_EMBEDDED_CONSTRAINT bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CASCADE_HEIGHT bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter WRITE_PROTECT bound to: 1 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter WRITE_DATA_WIDTH_A bound to: 68 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter READ_DATA_WIDTH_A bound to: 68 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter BYTE_WRITE_WIDTH_A bound to: 68 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter ADDR_WIDTH_A bound to: 11 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter READ_RESET_VALUE_A bound to: 0 - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter READ_LATENCY_A bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter WRITE_MODE_A bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter RST_MODE_A bound to: SYNC - type: string 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter WRITE_DATA_WIDTH_B bound to: 68 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter READ_DATA_WIDTH_B bound to: 68 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter BYTE_WRITE_WIDTH_B bound to: 68 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter ADDR_WIDTH_B bound to: 11 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter READ_RESET_VALUE_B bound to: 0 - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter READ_LATENCY_B bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter WRITE_MODE_B bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter RST_MODE_B bound to: SYNC - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_MEMORY_PRIMITIVE bound to: block - type: string 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter P_MIN_WIDTH_DATA_A bound to: 68 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter P_MIN_WIDTH_DATA_B bound to: 68 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_MIN_WIDTH_DATA bound to: 68 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_MIN_WIDTH_DATA_ECC bound to: 68 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter P_MAX_DEPTH_DATA bound to: 2048 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter P_ECC_MODE bound to: no_ecc - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_MEMORY_OPT bound to: yes - type: string 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_WIDTH_COL_WRITE_A bound to: 68 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_WIDTH_COL_WRITE_B bound to: 68 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter P_NUM_COLS_WRITE_A bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter P_NUM_COLS_WRITE_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter P_NUM_ROWS_WRITE_A bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter P_NUM_ROWS_WRITE_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_NUM_ROWS_READ_A bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_NUM_ROWS_READ_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_WIDTH_ADDR_WRITE_A bound to: 11 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_WIDTH_ADDR_WRITE_B bound to: 11 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_WIDTH_ADDR_READ_A bound to: 11 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_WIDTH_ADDR_READ_B bound to: 11 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter P_WIDTH_ADDR_LSB_WRITE_A bound to: 0 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter P_WIDTH_ADDR_LSB_WRITE_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter P_WIDTH_ADDR_LSB_READ_A bound to: 0 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter P_WIDTH_ADDR_LSB_READ_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_ENABLE_BYTE_WRITE_A bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_ENABLE_BYTE_WRITE_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter P_SDP_WRITE_MODE bound to: no - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter rsta_loop_iter bound to: 68 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter rstb_loop_iter bound to: 68 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter NUM_CHAR_LOC bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter MAX_NUM_CHAR bound to: 0 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter P_MIN_WIDTH_DATA_SHFT bound to: 68 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_MIN_WIDTH_DATA_LDW bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
xpm_memory_base__parameterized02default:default2
 2default:default2
82default:default2
12default:default2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2default:default2
572default:default8@Z8-6155h px? 
?
default block is never used226*oasys2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
11892default:default8@Z8-226h px? 
?
default block is never used226*oasys2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
12352default:default8@Z8-226h px? 
?
default block is never used226*oasys2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
12462default:default8@Z8-226h px? 
?
synthesizing module '%s'%s4497*oasys24
 xpm_counter_updn__parameterized52default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter COUNTER_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_VALUE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 xpm_counter_updn__parameterized52default:default2
 2default:default2
82default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys24
 xpm_counter_updn__parameterized62default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter COUNTER_WIDTH bound to: 11 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_VALUE bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 xpm_counter_updn__parameterized62default:default2
 2default:default2
82default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
xpm_fifo_base__parameterized02default:default2
 2default:default2
82default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
562default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
xpm_fifo_sync__parameterized02default:default2
 2default:default2
82default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
18432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
xpm_cdc_single2default:default2
 2default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
1532default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
xpm_cdc_single2default:default2
 2default:default2
102default:default2
12default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
1532default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
xpm_cdc_handshake2default:default2
 2default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
4692default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
xpm_cdc_handshake2default:default2
 2default:default2
112default:default2
12default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
4692default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
xpm_cdc_array_single2default:default2
 2default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
9032default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
xpm_cdc_array_single2default:default2
 2default:default2
122default:default2
12default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
9032default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys25
!xpm_cdc_handshake__parameterized02default:default2
 2default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
4692default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!xpm_cdc_handshake__parameterized02default:default2
 2default:default2
122default:default2
12default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
4692default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
xpm_cdc_pulse2default:default2
 2default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
7152default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
xpm_cdc_pulse2default:default2
 2default:default2
132default:default2
12default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
7152default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys28
$xpm_cdc_array_single__parameterized02default:default2
 2default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
9032default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$xpm_cdc_array_single__parameterized02default:default2
 2default:default2
142default:default2
12default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
9032default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys22
xpm_cdc_single__parameterized02default:default2
 2default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
1532default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
xpm_cdc_single__parameterized02default:default2
 2default:default2
142default:default2
12default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
1532default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys25
!xpm_cdc_handshake__parameterized12default:default2
 2default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
4692default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!xpm_cdc_handshake__parameterized12default:default2
 2default:default2
142default:default2
12default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
4692default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
xpm_cdc_async_rst2default:default2
 2default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
11752default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
xpm_cdc_async_rst2default:default2
 2default:default2
152default:default2
12default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
11752default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
xpm_fifo_async2default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
20372default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys21
xpm_fifo_base__parameterized12default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
562default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter COMMON_CLOCK bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter RELATED_CLOCKS bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter FIFO_MEMORY_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter ECC_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CASCADE_HEIGHT bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter FIFO_WRITE_DEPTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter WRITE_DATA_WIDTH bound to: 26 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter WR_DATA_COUNT_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter PROG_FULL_THRESH bound to: 29 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter USE_ADV_FEATURES bound to: 0707 - type: string 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter READ_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter FIFO_READ_LATENCY bound to: 1 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter READ_DATA_WIDTH bound to: 26 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter RD_DATA_COUNT_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter PROG_EMPTY_THRESH bound to: 10 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter DOUT_RESET_VALUE bound to: 0 - type: string 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter CDC_DEST_SYNC_FF bound to: 2 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter FULL_RESET_VALUE bound to: 0 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter REMOVE_WR_RD_PROT_LOGIC bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter WAKEUP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter VERSION bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter invalid bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter stage1_valid bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter stage2_valid bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter both_stages_valid bound to: 3 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter FIFO_MEM_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter RD_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter ENABLE_ECC bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter FIFO_READ_DEPTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter FIFO_SIZE bound to: 832 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter WR_WIDTH_LOG bound to: 5 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter WR_DEPTH_LOG bound to: 5 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter WR_PNTR_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter RD_PNTR_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter FULL_RST_VAL bound to: 1'b0 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter WR_RD_RATIO bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter PF_THRESH_ADJ bound to: 29 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter PE_THRESH_ADJ bound to: 10 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter PF_THRESH_MIN bound to: 5 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter PF_THRESH_MAX bound to: 29 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter PE_THRESH_MIN bound to: 3 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter PE_THRESH_MAX bound to: 29 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter WR_DC_WIDTH_EXT bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter RD_DC_WIDTH_EXT bound to: 6 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter RD_LATENCY bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter WIDTH_RATIO bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter EN_ADV_FEATURE bound to: 16'b0000011100000111 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_OF bound to: 1'b1 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_PF bound to: 1'b1 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter EN_WDC bound to: 1'b1 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_AF bound to: 1'b0 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter EN_WACK bound to: 1'b0 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter FG_EQ_ASYM_DOUT bound to: 1'b0 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_UF bound to: 1'b1 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_PE bound to: 1'b1 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter EN_RDC bound to: 1'b1 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_AE bound to: 1'b0 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter EN_DVLD bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys23
xpm_memory_base__parameterized12default:default2
 2default:default2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2default:default2
572default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter MEMORY_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter MEMORY_SIZE bound to: 832 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter MEMORY_PRIMITIVE bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter CLOCKING_MODE bound to: 1 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter ECC_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter MEMORY_INIT_FILE bound to: none - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter MEMORY_INIT_PARAM bound to: (null) - type: string 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter USE_MEM_INIT_MMI bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter USE_MEM_INIT bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter MEMORY_OPTIMIZATION bound to: true - type: string 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter WAKEUP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter AUTO_SLEEP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter MESSAGE_CONTROL bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter VERSION bound to: 0 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter USE_EMBEDDED_CONSTRAINT bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CASCADE_HEIGHT bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter WRITE_PROTECT bound to: 1 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter WRITE_DATA_WIDTH_A bound to: 26 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter READ_DATA_WIDTH_A bound to: 26 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter BYTE_WRITE_WIDTH_A bound to: 26 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter ADDR_WIDTH_A bound to: 5 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter READ_RESET_VALUE_A bound to: 0 - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter READ_LATENCY_A bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter WRITE_MODE_A bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter RST_MODE_A bound to: SYNC - type: string 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter WRITE_DATA_WIDTH_B bound to: 26 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter READ_DATA_WIDTH_B bound to: 26 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter BYTE_WRITE_WIDTH_B bound to: 26 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter ADDR_WIDTH_B bound to: 5 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter READ_RESET_VALUE_B bound to: 0 - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter READ_LATENCY_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter WRITE_MODE_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter RST_MODE_B bound to: SYNC - type: string 
2default:defaulth p
x
? 
p
%s
*synth2X
D	Parameter P_MEMORY_PRIMITIVE bound to: distributed - type: string 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter P_MIN_WIDTH_DATA_A bound to: 26 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter P_MIN_WIDTH_DATA_B bound to: 26 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_MIN_WIDTH_DATA bound to: 26 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_MIN_WIDTH_DATA_ECC bound to: 26 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_MAX_DEPTH_DATA bound to: 32 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter P_ECC_MODE bound to: no_ecc - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_MEMORY_OPT bound to: yes - type: string 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_WIDTH_COL_WRITE_A bound to: 26 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_WIDTH_COL_WRITE_B bound to: 26 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter P_NUM_COLS_WRITE_A bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter P_NUM_COLS_WRITE_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter P_NUM_ROWS_WRITE_A bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter P_NUM_ROWS_WRITE_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_NUM_ROWS_READ_A bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_NUM_ROWS_READ_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_WIDTH_ADDR_WRITE_A bound to: 5 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_WIDTH_ADDR_WRITE_B bound to: 5 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter P_WIDTH_ADDR_READ_A bound to: 5 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter P_WIDTH_ADDR_READ_B bound to: 5 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter P_WIDTH_ADDR_LSB_WRITE_A bound to: 0 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter P_WIDTH_ADDR_LSB_WRITE_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter P_WIDTH_ADDR_LSB_READ_A bound to: 0 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter P_WIDTH_ADDR_LSB_READ_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_ENABLE_BYTE_WRITE_A bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_ENABLE_BYTE_WRITE_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_SDP_WRITE_MODE bound to: yes - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter rsta_loop_iter bound to: 28 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter rstb_loop_iter bound to: 28 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter NUM_CHAR_LOC bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter MAX_NUM_CHAR bound to: 0 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter P_MIN_WIDTH_DATA_SHFT bound to: 26 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_MIN_WIDTH_DATA_LDW bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
xpm_memory_base__parameterized12default:default2
 2default:default2
152default:default2
12default:default2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
xpm_cdc_gray2default:default2
 2default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
2842default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter DEST_SYNC_FF bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter INIT_SYNC_FF bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter REG_OUTPUT bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter SIM_LOSSLESS_GRAY_CHK bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter VERSION bound to: 0 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
xpm_cdc_gray2default:default2
 2default:default2
162default:default2
12default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
2842default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2$
xpm_fifo_reg_vec2default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17762default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter REG_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
xpm_fifo_reg_vec2default:default2
 2default:default2
172default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17762default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys20
xpm_cdc_gray__parameterized02default:default2
 2default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
2842default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter DEST_SYNC_FF bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter INIT_SYNC_FF bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter REG_OUTPUT bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter SIM_LOSSLESS_GRAY_CHK bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter VERSION bound to: 0 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
xpm_cdc_gray__parameterized02default:default2
 2default:default2
172default:default2
12default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
2842default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys24
 xpm_fifo_reg_vec__parameterized02default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17762default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter REG_WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 xpm_fifo_reg_vec__parameterized02default:default2
 2default:default2
172default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17762default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys20
xpm_fifo_rst__parameterized02default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
15142default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter COMMON_CLOCK bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter CDC_DEST_SYNC_FF bound to: 2 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2$
xpm_cdc_sync_rst2default:default2
 2default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
10592default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter DEST_SYNC_FF bound to: 2 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter INIT bound to: 32'sb00000000000000000000000000000000 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter INIT_SYNC_FF bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter VERSION bound to: 0 - type: integer 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter DEF_VAL bound to: 1'b0 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
xpm_cdc_sync_rst2default:default2
 2default:default2
182default:default2
12default:default2Y
CD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2default:default2
10592default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
xpm_fifo_rst__parameterized02default:default2
 2default:default2
182default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
15142default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys24
 xpm_counter_updn__parameterized72default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter COUNTER_WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_VALUE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 xpm_counter_updn__parameterized72default:default2
 2default:default2
182default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys24
 xpm_counter_updn__parameterized82default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter COUNTER_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_VALUE bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 xpm_counter_updn__parameterized82default:default2
 2default:default2
182default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys24
 xpm_counter_updn__parameterized92default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter COUNTER_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter RESET_VALUE bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 xpm_counter_updn__parameterized92default:default2
 2default:default2
182default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
17502default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
xpm_fifo_base__parameterized12default:default2
 2default:default2
182default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
562default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
xpm_fifo_async2default:default2
 2default:default2
192default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
20372default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys22
xpm_fifo_async__parameterized02default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
20372default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys21
xpm_fifo_base__parameterized22default:default2
 2default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
562default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter COMMON_CLOCK bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter RELATED_CLOCKS bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter FIFO_MEMORY_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter ECC_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CASCADE_HEIGHT bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter FIFO_WRITE_DEPTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter WRITE_DATA_WIDTH bound to: 42 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter WR_DATA_COUNT_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter PROG_FULL_THRESH bound to: 10 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter USE_ADV_FEATURES bound to: 0707 - type: string 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter READ_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter FIFO_READ_LATENCY bound to: 1 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter READ_DATA_WIDTH bound to: 42 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter RD_DATA_COUNT_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter PROG_EMPTY_THRESH bound to: 10 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter DOUT_RESET_VALUE bound to: 0 - type: string 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter CDC_DEST_SYNC_FF bound to: 2 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter FULL_RESET_VALUE bound to: 0 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter REMOVE_WR_RD_PROT_LOGIC bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter WAKEUP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter VERSION bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter invalid bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter stage1_valid bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter stage2_valid bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter both_stages_valid bound to: 3 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter FIFO_MEM_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter RD_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter ENABLE_ECC bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter FIFO_READ_DEPTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter FIFO_SIZE bound to: 1344 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter WR_WIDTH_LOG bound to: 6 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter WR_DEPTH_LOG bound to: 5 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter WR_PNTR_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter RD_PNTR_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter FULL_RST_VAL bound to: 1'b0 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter WR_RD_RATIO bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter PF_THRESH_ADJ bound to: 10 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter PE_THRESH_ADJ bound to: 10 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter PF_THRESH_MIN bound to: 5 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter PF_THRESH_MAX bound to: 29 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter PE_THRESH_MIN bound to: 3 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter PE_THRESH_MAX bound to: 29 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter WR_DC_WIDTH_EXT bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter RD_DC_WIDTH_EXT bound to: 6 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter RD_LATENCY bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter WIDTH_RATIO bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter EN_ADV_FEATURE bound to: 16'b0000011100000111 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_OF bound to: 1'b1 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_PF bound to: 1'b1 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter EN_WDC bound to: 1'b1 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_AF bound to: 1'b0 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter EN_WACK bound to: 1'b0 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter FG_EQ_ASYM_DOUT bound to: 1'b0 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_UF bound to: 1'b1 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_PE bound to: 1'b1 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter EN_RDC bound to: 1'b1 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter EN_AE bound to: 1'b0 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter EN_DVLD bound to: 1'b0 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys23
xpm_memory_base__parameterized22default:default2
 2default:default2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2default:default2
572default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter MEMORY_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter MEMORY_SIZE bound to: 1344 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter MEMORY_PRIMITIVE bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter CLOCKING_MODE bound to: 1 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter ECC_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter MEMORY_INIT_FILE bound to: none - type: string 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter MEMORY_INIT_PARAM bound to: (null) - type: string 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter USE_MEM_INIT_MMI bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter USE_MEM_INIT bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter MEMORY_OPTIMIZATION bound to: true - type: string 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter WAKEUP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter AUTO_SLEEP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter MESSAGE_CONTROL bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter VERSION bound to: 0 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter USE_EMBEDDED_CONSTRAINT bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CASCADE_HEIGHT bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter WRITE_PROTECT bound to: 1 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter WRITE_DATA_WIDTH_A bound to: 42 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter READ_DATA_WIDTH_A bound to: 42 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter BYTE_WRITE_WIDTH_A bound to: 42 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter ADDR_WIDTH_A bound to: 5 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter READ_RESET_VALUE_A bound to: 0 - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter READ_LATENCY_A bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter WRITE_MODE_A bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter RST_MODE_A bound to: SYNC - type: string 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter WRITE_DATA_WIDTH_B bound to: 42 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter READ_DATA_WIDTH_B bound to: 42 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter BYTE_WRITE_WIDTH_B bound to: 42 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter ADDR_WIDTH_B bound to: 5 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter READ_RESET_VALUE_B bound to: 0 - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter READ_LATENCY_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter WRITE_MODE_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter RST_MODE_B bound to: SYNC - type: string 
2default:defaulth p
x
? 
p
%s
*synth2X
D	Parameter P_MEMORY_PRIMITIVE bound to: distributed - type: string 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter P_MIN_WIDTH_DATA_A bound to: 42 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter P_MIN_WIDTH_DATA_B bound to: 42 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_MIN_WIDTH_DATA bound to: 42 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_MIN_WIDTH_DATA_ECC bound to: 42 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_MAX_DEPTH_DATA bound to: 32 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter P_ECC_MODE bound to: no_ecc - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_MEMORY_OPT bound to: yes - type: string 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_WIDTH_COL_WRITE_A bound to: 42 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_WIDTH_COL_WRITE_B bound to: 42 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter P_NUM_COLS_WRITE_A bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter P_NUM_COLS_WRITE_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter P_NUM_ROWS_WRITE_A bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter P_NUM_ROWS_WRITE_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_NUM_ROWS_READ_A bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_NUM_ROWS_READ_B bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_WIDTH_ADDR_WRITE_A bound to: 5 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_WIDTH_ADDR_WRITE_B bound to: 5 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter P_WIDTH_ADDR_READ_A bound to: 5 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter P_WIDTH_ADDR_READ_B bound to: 5 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter P_WIDTH_ADDR_LSB_WRITE_A bound to: 0 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter P_WIDTH_ADDR_LSB_WRITE_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter P_WIDTH_ADDR_LSB_READ_A bound to: 0 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter P_WIDTH_ADDR_LSB_READ_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_ENABLE_BYTE_WRITE_A bound to: 0 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_ENABLE_BYTE_WRITE_B bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_SDP_WRITE_MODE bound to: yes - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter rsta_loop_iter bound to: 44 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter rstb_loop_iter bound to: 44 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter NUM_CHAR_LOC bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter MAX_NUM_CHAR bound to: 0 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter P_MIN_WIDTH_DATA_SHFT bound to: 42 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter P_MIN_WIDTH_DATA_LDW bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
xpm_memory_base__parameterized22default:default2
 2default:default2
222default:default2
12default:default2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2default:default2
572default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
xpm_fifo_base__parameterized22default:default2
 2default:default2
222default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
562default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
xpm_fifo_async__parameterized02default:default2
 2default:default2
222default:default2
12default:default2[
ED:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2default:default2
20372default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
bd_91b0_rx_02default:default2
 2default:default2
312default:default2
12default:default2z
dd:/base/base.srcs/sources_1/bd/cam/ip/cam_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_1/synth/bd_91b0_rx_0.v2default:default2
582default:default8@Z8-6155h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:22 ; elapsed = 00:00:46 . Memory (MB): peak = 1668.309 ; gain = 206.277
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:26 ; elapsed = 00:00:49 . Memory (MB): peak = 1686.238 ; gain = 224.207
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:26 ; elapsed = 00:00:49 . Memory (MB): peak = 1686.238 ; gain = 224.207
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.4662default:default2
1698.2502default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
jd:/base/base.srcs/sources_1/bd/cam/ip/cam_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_1/bd_91b0_rx_0_fixed_ooc.xdc2default:default2
inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
jd:/base/base.srcs/sources_1/bd/cam/ip/cam_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_1/bd_91b0_rx_0_fixed_ooc.xdc2default:default2
inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2z
dd:/base/base.srcs/sources_1/bd/cam/ip/cam_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_1/bd_91b0_rx_0_ooc.xdc2default:default2
inst	2default:default8Z20-848h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
create_clock: 2default:default2
00:00:102default:default2
00:00:122default:default2
1808.7702default:default2
4.0272default:defaultZ17-268h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2z
dd:/base/base.srcs/sources_1/bd/cam/ip/cam_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_1/bd_91b0_rx_0_ooc.xdc2default:default2
inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2v
`d:/base/base.srcs/sources_1/bd/cam/ip/cam_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_1/bd_91b0_rx_0.xdc2default:default2
inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2v
`d:/base/base.srcs/sources_1/bd/cam/ip/cam_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_1/bd_91b0_rx_0.xdc2default:default2
inst	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2K
5D:/base/base.runs/bd_91b0_rx_0_synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2K
5D:/base/base.runs/bd_91b0_rx_0_synth_1/dont_touch.xdc2default:default8Z20-178h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2g
QD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_array_single.tcl2default:default2?
)inst/AXI_LITE.isr_cdc/xpm_array_single_05	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2g
QD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_array_single.tcl2default:default2?
)inst/AXI_LITE.isr_cdc/xpm_array_single_05	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2g
QD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_array_single.tcl2default:default2?
)inst/AXI_LITE.reg_inf/xpm_array_single_02	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2g
QD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_array_single.tcl2default:default2?
)inst/AXI_LITE.reg_inf/xpm_array_single_02	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2g
QD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_array_single.tcl2default:default2?
)inst/AXI_LITE.reg_inf/xpm_array_single_03	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2g
QD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_array_single.tcl2default:default2?
)inst/AXI_LITE.reg_inf/xpm_array_single_03	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2g
QD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_array_single.tcl2default:default2?
)inst/AXI_LITE.reg_inf/xpm_array_single_04	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2g
QD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_array_single.tcl2default:default2?
)inst/AXI_LITE.reg_inf/xpm_array_single_04	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2g
QD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_array_single.tcl2default:default2?
)inst/AXI_LITE.reg_inf/xpm_array_single_01	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2g
QD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_array_single.tcl2default:default2?
)inst/AXI_LITE.reg_inf/xpm_array_single_01	2default:default8Z20-1687h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2e
QD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_array_single.tcl2default:default22
.Xil/bd_91b0_rx_0_propImpl.xdc2default:defaultZ1-236h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2E
/inst/AXI_LITE.reg_inf/gen_spkt_fifo/xpm_arst_03	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2E
/inst/AXI_LITE.reg_inf/gen_spkt_fifo/xpm_arst_03	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2&
inst/xpm_arst_01	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2&
inst/xpm_arst_01	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2&
inst/xpm_arst_04	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2&
inst/xpm_arst_04	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2&
inst/xpm_arst_05	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_async_rst.tcl2default:default2&
inst/xpm_arst_05	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
rinst/AXI_LITE.reg_inf/gen_spkt_fifo/generic_pkt/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
rinst/AXI_LITE.reg_inf/gen_spkt_fifo/generic_pkt/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
rinst/AXI_LITE.reg_inf/gen_spkt_fifo/generic_pkt/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
rinst/AXI_LITE.reg_inf/gen_spkt_fifo/generic_pkt/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2s
]inst/gen_pkt_fifo/pkt_fifo/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2s
]inst/gen_pkt_fifo/pkt_fifo/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2s
]inst/gen_pkt_fifo/pkt_fifo/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2s
]inst/gen_pkt_fifo/pkt_fifo/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
uinst/AXI_LITE.reg_inf/gen_spkt_fifo/generic_pkt/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_dc_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
uinst/AXI_LITE.reg_inf/gen_spkt_fifo/generic_pkt/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_dc_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
uinst/AXI_LITE.reg_inf/gen_spkt_fifo/generic_pkt/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_dc_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2?
uinst/AXI_LITE.reg_inf/gen_spkt_fifo/generic_pkt/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_dc_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2v
`inst/gen_pkt_fifo/pkt_fifo/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_dc_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2v
`inst/gen_pkt_fifo/pkt_fifo/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_dc_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2v
`inst/gen_pkt_fifo/pkt_fifo/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_dc_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2_
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default2v
`inst/gen_pkt_fifo/pkt_fifo/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_dc_inst	2default:default8Z20-1687h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2]
ID:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2default:default22
.Xil/bd_91b0_rx_0_propImpl.xdc2default:defaultZ1-236h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[0].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[0].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[10].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[10].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[11].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[11].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[12].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[12].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[13].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[13].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[14].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[14].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[15].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[15].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[16].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[16].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[17].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[17].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[18].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[18].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[19].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[19].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[1].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[1].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[20].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[20].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[21].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[21].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[22].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[22].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[23].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[23].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[24].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[24].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[25].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[25].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[26].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[26].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[27].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[27].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[28].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[28].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[29].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[29].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[2].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[2].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[30].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[30].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[31].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[31].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[32].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[32].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[33].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[33].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[34].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[34].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[35].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[35].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[36].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[36].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[37].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[37].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[38].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[38].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[39].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[39].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[3].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[3].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[40].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[40].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[41].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[41].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[42].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[42].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[43].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[43].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[44].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2G
1inst/AXI_LITE.isr_cdc/HSC2R_CDC[44].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[4].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[4].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[5].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[5].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[6].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[6].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[7].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[7].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[8].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[8].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[9].hsc2r_bus_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default2F
0inst/AXI_LITE.isr_cdc/HSC2R_CDC[9].hsc2r_bus_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default23
inst/AXI_LITE.isr_cdc/ecc_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default23
inst/AXI_LITE.isr_cdc/ecc_cdc	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default28
"inst/AXI_LITE.reg_inf/img_info_cdc	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2d
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default28
"inst/AXI_LITE.reg_inf/img_info_cdc	2default:default8Z20-1687h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2b
ND:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl2default:default22
.Xil/bd_91b0_rx_0_propImpl.xdc2default:defaultZ1-236h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[0].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[0].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[0].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[0].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[10].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[10].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[10].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[10].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[11].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[11].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[11].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[11].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[12].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[12].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[12].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[12].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[13].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[13].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[13].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[13].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[14].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[14].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[14].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[14].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[15].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[15].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[15].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[15].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[16].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[16].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[16].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[16].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[17].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[17].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[17].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[17].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[18].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[18].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[18].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[18].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[19].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[19].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[19].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[19].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[1].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[1].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[1].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[1].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[20].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[20].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[20].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[20].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[21].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[21].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[21].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[21].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[22].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[22].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[22].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[22].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[23].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[23].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[23].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[23].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[24].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[24].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[24].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[24].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[25].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[25].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[25].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[25].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[26].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[26].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[26].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[26].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[27].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[27].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[27].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[27].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[28].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[28].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[28].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[28].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[29].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[29].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[29].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[29].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[2].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[2].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[2].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[2].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[30].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[30].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[30].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[30].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[31].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[31].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[31].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[31].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[32].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[32].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[32].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[32].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[33].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[33].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[33].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[33].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[34].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[34].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[34].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[34].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[35].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[35].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[35].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[35].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[36].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[36].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[36].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[36].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[37].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[37].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[37].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[37].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[38].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[38].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[38].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[38].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[39].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[39].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[39].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[39].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[3].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[3].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[3].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[3].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[40].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[40].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[40].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[40].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[41].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[41].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[41].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[41].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[42].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[42].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[42].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[42].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[43].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[43].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[43].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[43].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[44].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[44].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[44].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2d
Ninst/AXI_LITE.isr_cdc/HSC2R_CDC[44].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[4].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[4].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[4].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[4].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[5].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[5].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[5].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[5].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[6].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[6].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[6].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[6].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[7].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[7].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[7].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[7].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[8].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[8].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[8].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[8].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[9].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[9].hsc2r_bus_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[9].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2c
Minst/AXI_LITE.isr_cdc/HSC2R_CDC[9].hsc2r_bus_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_CL_ASYNC[0].xpm_single_cl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_CL_ASYNC[0].xpm_single_cl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_CL_ASYNC[1].xpm_single_cl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_CL_ASYNC[1].xpm_single_cl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[0].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[0].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[10].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[10].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[11].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[11].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[12].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[12].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[13].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[13].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[14].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[14].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[15].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[15].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[16].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[16].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[17].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[17].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[18].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[18].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[19].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2M
7inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[19].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[1].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[1].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[2].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[2].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[3].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[3].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[4].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[4].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[5].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[5].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[6].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[6].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[7].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[7].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[8].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[8].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[9].xpm_single_dl_sb	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/PPI_DL_ASYNC[9].xpm_single_dl_sb	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2P
:inst/AXI_LITE.isr_cdc/ecc_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2P
:inst/AXI_LITE.isr_cdc/ecc_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2P
:inst/AXI_LITE.isr_cdc/ecc_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2P
:inst/AXI_LITE.isr_cdc/ecc_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/xpm_pulse_02/xpm_cdc_single_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2L
6inst/AXI_LITE.isr_cdc/xpm_pulse_02/xpm_cdc_single_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2Z
Dinst/AXI_LITE.reg_inf/LP_CNT_C2R[0].xpm_pulse_01/xpm_cdc_single_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2Z
Dinst/AXI_LITE.reg_inf/LP_CNT_C2R[0].xpm_pulse_01/xpm_cdc_single_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2Z
Dinst/AXI_LITE.reg_inf/LP_CNT_C2R[1].xpm_pulse_01/xpm_cdc_single_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2Z
Dinst/AXI_LITE.reg_inf/LP_CNT_C2R[1].xpm_pulse_01/xpm_cdc_single_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2Z
Dinst/AXI_LITE.reg_inf/LP_CNT_C2R[2].xpm_pulse_01/xpm_cdc_single_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2Z
Dinst/AXI_LITE.reg_inf/LP_CNT_C2R[2].xpm_pulse_01/xpm_cdc_single_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2Z
Dinst/AXI_LITE.reg_inf/LP_CNT_C2R[3].xpm_pulse_01/xpm_cdc_single_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2Z
Dinst/AXI_LITE.reg_inf/LP_CNT_C2R[3].xpm_pulse_01/xpm_cdc_single_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2U
?inst/AXI_LITE.reg_inf/img_info_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2U
?inst/AXI_LITE.reg_inf/img_info_cdc/xpm_cdc_single_dest2src_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2U
?inst/AXI_LITE.reg_inf/img_info_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2U
?inst/AXI_LITE.reg_inf/img_info_cdc/xpm_cdc_single_src2dest_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default29
#inst/AXI_LITE.reg_inf/xpm_single_01	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default29
#inst/AXI_LITE.reg_inf/xpm_single_01	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default29
#inst/AXI_LITE.reg_inf/xpm_single_07	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default29
#inst/AXI_LITE.reg_inf/xpm_single_07	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default29
#inst/AXI_LITE.reg_inf/xpm_single_08	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default29
#inst/AXI_LITE.reg_inf/xpm_single_08	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default29
#inst/AXI_LITE.reg_inf/xpm_single_17	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default29
#inst/AXI_LITE.reg_inf/xpm_single_17	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default29
#inst/AXI_LITE.reg_inf/xpm_single_18	2default:default8Z20-1689h px? 
?
;Current instance is the top level cell '%s' of design '%s'
1953*	planAhead27
#inst/AXI_LITE.reg_inf/xpm_single_182default:default2"
preSynthElab_12default:default2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2
52default:default8@Z12-3272h px? 
?
%s1000*XPM_CDC_SINGLE: TCL2?
?The source and destination clocks are the same. 
     Instance: inst/AXI_LITE.reg_inf/xpm_single_18 
  This will add unnecessary latency to the design. Please check the design for the following: 
 1) Manually instantiated XPM_CDC modules: Xilinx recommends that you remove these modules. 
 2) Xilinx IP that contains XPM_CDC modules: Verify the connections to the IP to determine whether you can safely ignore this message.
2default:default2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2
52default:default8@h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default29
#inst/AXI_LITE.reg_inf/xpm_single_18	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default29
#inst/AXI_LITE.reg_inf/xpm_single_19	2default:default8Z20-1689h px? 
?
;Current instance is the top level cell '%s' of design '%s'
1953*	planAhead27
#inst/AXI_LITE.reg_inf/xpm_single_192default:default2"
preSynthElab_12default:default2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2
52default:default8@Z12-3272h px? 
?
%s1000*XPM_CDC_SINGLE: TCL2?
?The source and destination clocks are the same. 
     Instance: inst/AXI_LITE.reg_inf/xpm_single_19 
  This will add unnecessary latency to the design. Please check the design for the following: 
 1) Manually instantiated XPM_CDC modules: Xilinx recommends that you remove these modules. 
 2) Xilinx IP that contains XPM_CDC modules: Verify the connections to the IP to determine whether you can safely ignore this message.
2default:default2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2
52default:default8@h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default29
#inst/AXI_LITE.reg_inf/xpm_single_19	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default29
#inst/AXI_LITE.reg_inf/xpm_single_20	2default:default8Z20-1689h px? 
?
;Current instance is the top level cell '%s' of design '%s'
1953*	planAhead27
#inst/AXI_LITE.reg_inf/xpm_single_202default:default2"
preSynthElab_12default:default2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2
52default:default8@Z12-3272h px? 
?
%s1000*XPM_CDC_SINGLE: TCL2?
?The source and destination clocks are the same. 
     Instance: inst/AXI_LITE.reg_inf/xpm_single_20 
  This will add unnecessary latency to the design. Please check the design for the following: 
 1) Manually instantiated XPM_CDC modules: Xilinx recommends that you remove these modules. 
 2) Xilinx IP that contains XPM_CDC modules: Verify the connections to the IP to determine whether you can safely ignore this message.
2default:default2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2
52default:default8@h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default29
#inst/AXI_LITE.reg_inf/xpm_single_20	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default27
!inst/AXI_LITE.xpm_single_fifo_rst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default27
!inst/AXI_LITE.xpm_single_fifo_rst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2.
inst/xpm_single_frst_c2p	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2.
inst/xpm_single_frst_c2p	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2.
inst/xpm_single_frst_p2c	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default2.
inst/xpm_single_frst_p2c	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default29
#inst/AXI_LITE.reg_inf/xpm_single_02	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default29
#inst/AXI_LITE.reg_inf/xpm_single_02	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default29
#inst/AXI_LITE.reg_inf/xpm_single_05	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2a
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default29
#inst/AXI_LITE.reg_inf/xpm_single_05	2default:default8Z20-1687h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2_
KD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_single.tcl2default:default22
.Xil/bd_91b0_rx_0_propImpl.xdc2default:defaultZ1-236h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2c
MD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_sync_rst.tcl2default:default2?
~inst/AXI_LITE.reg_inf/gen_spkt_fifo/generic_pkt/gnuram_async_fifo.xpm_fifo_base_inst/xpm_fifo_rst_inst/gen_rst_ic.rrst_wr_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2c
MD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_sync_rst.tcl2default:default2?
~inst/AXI_LITE.reg_inf/gen_spkt_fifo/generic_pkt/gnuram_async_fifo.xpm_fifo_base_inst/xpm_fifo_rst_inst/gen_rst_ic.rrst_wr_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2c
MD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_sync_rst.tcl2default:default2?
~inst/AXI_LITE.reg_inf/gen_spkt_fifo/generic_pkt/gnuram_async_fifo.xpm_fifo_base_inst/xpm_fifo_rst_inst/gen_rst_ic.wrst_rd_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2c
MD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_sync_rst.tcl2default:default2?
~inst/AXI_LITE.reg_inf/gen_spkt_fifo/generic_pkt/gnuram_async_fifo.xpm_fifo_base_inst/xpm_fifo_rst_inst/gen_rst_ic.wrst_rd_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2c
MD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_sync_rst.tcl2default:default2
iinst/gen_pkt_fifo/pkt_fifo/gnuram_async_fifo.xpm_fifo_base_inst/xpm_fifo_rst_inst/gen_rst_ic.rrst_wr_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2c
MD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_sync_rst.tcl2default:default2
iinst/gen_pkt_fifo/pkt_fifo/gnuram_async_fifo.xpm_fifo_base_inst/xpm_fifo_rst_inst/gen_rst_ic.rrst_wr_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2c
MD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_sync_rst.tcl2default:default2
iinst/gen_pkt_fifo/pkt_fifo/gnuram_async_fifo.xpm_fifo_base_inst/xpm_fifo_rst_inst/gen_rst_ic.wrst_rd_inst	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2c
MD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_sync_rst.tcl2default:default2
iinst/gen_pkt_fifo/pkt_fifo/gnuram_async_fifo.xpm_fifo_base_inst/xpm_fifo_rst_inst/gen_rst_ic.wrst_rd_inst	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2`
JD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst.tcl2default:default2E
/inst/AXI_LITE.reg_inf/gen_spkt_fifo/generic_pkt	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2`
JD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst.tcl2default:default2E
/inst/AXI_LITE.reg_inf/gen_spkt_fifo/generic_pkt	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2`
JD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst.tcl2default:default20
inst/gen_pkt_fifo/pkt_fifo	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2`
JD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst.tcl2default:default20
inst/gen_pkt_fifo/pkt_fifo	2default:default8Z20-1687h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2^
JD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst.tcl2default:default22
.Xil/bd_91b0_rx_0_propImpl.xdc2default:defaultZ1-236h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2`
JD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst.tcl2default:default2A
+inst/LANE_1.ppi_fifo0/CSI_OPT3_OFF.ppi_fifo	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2`
JD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst.tcl2default:default2A
+inst/LANE_1.ppi_fifo0/CSI_OPT3_OFF.ppi_fifo	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2`
JD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst.tcl2default:default2A
+inst/LANE_2.ppi_fifo1/CSI_OPT3_OFF.ppi_fifo	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2`
JD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst.tcl2default:default2A
+inst/LANE_2.ppi_fifo1/CSI_OPT3_OFF.ppi_fifo	2default:default8Z20-1687h px? 
?
%Sourcing Tcl File [%s] for cell '%s'
1448*designutils2`
JD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst.tcl2default:default28
"inst/RX_1500M.line_buffer/line_buf	2default:default8Z20-1689h px? 
?
.Finished Sourcing Tcl File [%s] for cell '%s'
1446*designutils2`
JD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst.tcl2default:default28
"inst/RX_1500M.line_buffer/line_buf	2default:default8Z20-1687h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2^
JD:/Programs/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst.tcl2default:default22
.Xil/bd_91b0_rx_0_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0212default:default2
1808.7702default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:012default:default2 
00:00:00.6012default:default2
1809.7662default:default2
0.9962default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:01:02 ; elapsed = 00:01:33 . Memory (MB): peak = 1809.766 ; gain = 347.734
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
N
%s
*synth26
"Loading part: xczu3eg-sfvc784-1-e
2default:defaulth p
x
? 
B
 Reading net delay rules and data4578*oasysZ8-6742h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:01:02 ; elapsed = 00:01:33 . Memory (MB): peak = 1809.766 ; gain = 347.734
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:01:05 ; elapsed = 00:01:36 . Memory (MB): peak = 1809.766 ; gain = 347.734
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys20
gen_fwft.curr_fwft_state_reg2default:default2!
xpm_fifo_base2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys20
gen_fwft.curr_fwft_state_reg2default:default21
xpm_fifo_base__parameterized02default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys22
gen_rst_ic.curr_wrst_state_reg2default:default2;
'xpm_fifo_rst__parameterized0__xdcDup__12default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys22
gen_rst_ic.curr_rrst_state_reg2default:default2;
'xpm_fifo_rst__parameterized0__xdcDup__12default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys22
gen_rst_ic.curr_wrst_state_reg2default:default20
xpm_fifo_rst__parameterized02default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys22
gen_rst_ic.curr_rrst_state_reg2default:default20
xpm_fifo_rst__parameterized02default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2!
cur_state_reg2default:default24
 mipi_csi2_rx_ctrl_v1_0_8_control2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 invalid |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_            stage1_valid |                               01 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_       both_stages_valid |                               10 |                               11
2default:defaulth p
x
? 
?
%s
*synth2s
_            stage2_valid |                               11 |                               01
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys20
gen_fwft.curr_fwft_state_reg2default:default2

sequential2default:default2!
xpm_fifo_base2default:defaultZ8-3354h px? 
?
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys24
 gen_wr_a.gen_word_narrow.mem_reg2default:defaultZ8-5775h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2W
C"xpm_memory_base__parameterized0:/gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
362default:default2W
C"xpm_memory_base__parameterized0:/gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-5555h px? 
?
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
182default:default2W
C"xpm_memory_base__parameterized0:/gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-7030h px? 
?
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
142default:default2W
C"xpm_memory_base__parameterized0:/gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-7030h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 invalid |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_            stage1_valid |                               01 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_       both_stages_valid |                               10 |                               11
2default:defaulth p
x
? 
?
%s
*synth2s
_            stage2_valid |                               11 |                               01
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys20
gen_fwft.curr_fwft_state_reg2default:default2

sequential2default:default21
xpm_fifo_base__parameterized02default:defaultZ8-3354h px? 
?
BImplemented safe state '%s' for state register '%s' in module '%s'4006*oasys2!
default_state2default:default22
gen_rst_ic.curr_wrst_state_reg2default:default2;
'xpm_fifo_rst__parameterized0__xdcDup__12default:defaultZ8-5552h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_               WRST_IDLE |                            00001 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                 WRST_IN |                            00010 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                WRST_OUT |                            00100 |                              111
2default:defaulth p
x
? 
?
%s
*synth2s
_               WRST_EXIT |                            01000 |                              110
2default:defaulth p
x
? 
?
%s
*synth2s
_            WRST_GO2IDLE |                            10000 |                              100
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys22
gen_rst_ic.curr_wrst_state_reg2default:default2
one-hot2default:default2;
'xpm_fifo_rst__parameterized0__xdcDup__12default:defaultZ8-3354h px? 
?
BImplemented safe state '%s' for state register '%s' in module '%s'4006*oasys2!
default_state2default:default22
gen_rst_ic.curr_rrst_state_reg2default:default2;
'xpm_fifo_rst__parameterized0__xdcDup__12default:defaultZ8-5552h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                               01 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                               10 |                               11
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE2 |                               11 |                               01
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys22
gen_rst_ic.curr_rrst_state_reg2default:default2

sequential2default:default2;
'xpm_fifo_rst__parameterized0__xdcDup__12default:defaultZ8-3354h px? 
?
BImplemented safe state '%s' for state register '%s' in module '%s'4006*oasys2!
default_state2default:default22
gen_rst_ic.curr_wrst_state_reg2default:default20
xpm_fifo_rst__parameterized02default:defaultZ8-5552h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_               WRST_IDLE |                            00001 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                 WRST_IN |                            00010 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                WRST_OUT |                            00100 |                              111
2default:defaulth p
x
? 
?
%s
*synth2s
_               WRST_EXIT |                            01000 |                              110
2default:defaulth p
x
? 
?
%s
*synth2s
_            WRST_GO2IDLE |                            10000 |                              100
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys22
gen_rst_ic.curr_wrst_state_reg2default:default2
one-hot2default:default20
xpm_fifo_rst__parameterized02default:defaultZ8-3354h px? 
?
BImplemented safe state '%s' for state register '%s' in module '%s'4006*oasys2!
default_state2default:default22
gen_rst_ic.curr_rrst_state_reg2default:default20
xpm_fifo_rst__parameterized02default:defaultZ8-5552h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                               01 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                               10 |                               11
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE2 |                               11 |                               01
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys22
gen_rst_ic.curr_rrst_state_reg2default:default2

sequential2default:default20
xpm_fifo_rst__parameterized02default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE3 |                              000 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                              100 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                              010 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                              011 |                              100
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE2 |                              001 |                              011
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
cur_state_reg2default:default2

sequential2default:default24
 mipi_csi2_rx_ctrl_v1_0_8_control2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:01:17 ; elapsed = 00:01:52 . Memory (MB): peak = 1809.766 ; gain = 347.734
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   17 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit       Adders := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  16 Input   16 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   12 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   11 Bit       Adders := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   11 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    6 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    6 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    5 Bit       Adders := 14    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    5 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit       Adders := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    4 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    4 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     26 Bit         XORs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     24 Bit         XORs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit         XORs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit         XORs := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit         XORs := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 125   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit         XORs := 21    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit         XORs := 13    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      1 Bit         XORs := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  13 Input      1 Bit         XORs := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  12 Input      1 Bit         XORs := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      1 Bit         XORs := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit         XORs := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit         XORs := 11    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit         XORs := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input      1 Bit         XORs := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               68 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               64 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               56 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               46 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               42 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               40 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 27    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               26 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 39    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 11    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 48    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 34    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 15    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 144   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 32    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 711   
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
k
%s
*synth2S
?	             136K Bit	(2048 X 68 bit)          RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   68 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   64 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   56 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   56 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  12 Input   40 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 24    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  28 Input   26 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   24 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   16 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  10 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    5 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 16    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  10 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    3 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  15 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 102   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 25    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 307   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 11    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  16 Input    1 Bit        Muxes := 16    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  12 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  28 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 360 (col length:72)
BRAMs: 432 (col length: RAMB18 72 RAMB36 36)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys24
 gen_wr_a.gen_word_narrow.mem_reg2default:defaultZ8-5775h px? 
?
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys24
 gen_wr_a.gen_word_narrow.mem_reg2default:defaultZ8-5775h px? 
?
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys24
 gen_wr_a.gen_word_narrow.mem_reg2default:defaultZ8-5775h px? 
?
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys24
 gen_wr_a.gen_word_narrow.mem_reg2default:defaultZ8-5775h px? 
?
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys24
 gen_wr_a.gen_word_narrow.mem_reg2default:defaultZ8-5775h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2?
|"inst/\RX_1500M.line_buffer/line_buf /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst /gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
362default:default2?
|"inst/\RX_1500M.line_buffer/line_buf /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst /gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-5555h px? 
?
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
182default:default2?
|"inst/\RX_1500M.line_buffer/line_buf /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst /gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-7030h px? 
?
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
142default:default2?
|"inst/\RX_1500M.line_buffer/line_buf /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst /gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-7030h px? 
?
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys24
 gen_wr_a.gen_word_narrow.mem_reg2default:defaultZ8-5775h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:02:07 ; elapsed = 00:02:49 . Memory (MB): peak = 1809.766 ; gain = 347.734
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys24
 gen_wr_a.gen_word_narrow.mem_reg2default:defaultZ8-5775h px? 
?
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys24
 gen_wr_a.gen_word_narrow.mem_reg2default:defaultZ8-5775h px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
d
%s*synth2L
8
Block RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name                                                                               | RTL Object                       | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | Cascade Heights | 
2default:defaulth px? 
?
%s*synth2?
?+------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth px? 
?
%s*synth2?
?|inst/\RX_1500M.line_buffer/line_buf /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 2 K x 68(NO_CHANGE)    | W |   | 2 K x 68(NO_CHANGE)    |   | R | Port A and B     | 0      | 4      | 2,1,1           | 
2default:defaulth px? 
?
%s*synth2?
?+------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px? 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+-----------------------------------------------------------------------------------------------------------------------------+----------------------------------+----------------+----------------------+---------------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name                                                                                                                  | RTL Object                       | Inference      | Size (Depth x Width) | Primitives    | 
2default:defaulth px? 
?
%s*synth2?
?+-----------------------------------------------------------------------------------------------------------------------------+----------------------------------+----------------+----------------------+---------------+
2default:defaulth px? 
?
%s*synth2?
?|xpm_fifo_sync:/xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst                                                           | gen_wr_a.gen_word_narrow.mem_reg | User Attribute | 16 x 12              | RAM32M16 x 1	 | 
2default:defaulth px? 
?
%s*synth2?
?|xpm_fifo_sync:/xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst                                                           | gen_wr_a.gen_word_narrow.mem_reg | User Attribute | 16 x 12              | RAM32M16 x 1	 | 
2default:defaulth px? 
?
%s*synth2?
?|inst/\AXI_LITE.reg_inf /\gen_spkt_fifo/generic_pkt /\gnuram_async_fifo.xpm_fifo_base_inst /\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | User Attribute | 32 x 26              | RAM32M16 x 2	 | 
2default:defaulth px? 
?
%s*synth2?
?|inst/\gen_pkt_fifo/pkt_fifo /\gnuram_async_fifo.xpm_fifo_base_inst /\gen_sdpram.xpm_memory_base_inst                         | gen_wr_a.gen_word_narrow.mem_reg | User Attribute | 32 x 42              | RAM32M16 x 3	 | 
2default:defaulth px? 
?
%s*synth2?
?+-----------------------------------------------------------------------------------------------------------------------------+----------------------------------+----------------+----------------------+---------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys2L
8inst/AXI_LITE.reg_inf/gen_spkt_fifo/xpm_arst_03/src_arst2default:default2D
0inst/AXI_LITE.reg_inf/i_9/gen_spkt_fifo/rstn_i/O2default:defaultZ8-5578h px? 
?
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys2-
inst/xpm_arst_05/src_arst2default:default2/
inst/rstn_i1_inferred/i_0/O2default:defaultZ8-5578h px? 
?
SMoved %s constraints on hierarchical pins to their respective driving/loading pins
4235*oasys2
22default:defaultZ8-5819h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:02:36 ; elapsed = 00:03:23 . Memory (MB): peak = 2374.609 ; gain = 912.578
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys24
 gen_wr_a.gen_word_narrow.mem_reg2default:defaultZ8-5775h px? 
?
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys24
 gen_wr_a.gen_word_narrow.mem_reg2default:defaultZ8-5775h px? 
?
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys24
 gen_wr_a.gen_word_narrow.mem_reg2default:defaultZ8-5775h px? 
?
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys24
 gen_wr_a.gen_word_narrow.mem_reg2default:defaultZ8-5775h px? 
?
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys24
 gen_wr_a.gen_word_narrow.mem_reg2default:defaultZ8-5775h px? 
?
VThe block RAM %s may be mapped as a cascade chain, because it is not timing critical.
4009*oasys2?
|"inst/\RX_1500M.line_buffer/line_buf /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst /gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-5556h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
362default:default2?
|"inst/\RX_1500M.line_buffer/line_buf /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst /gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-5555h px? 
?
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
182default:default2?
|"inst/\RX_1500M.line_buffer/line_buf /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst /gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-7030h px? 
?
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
142default:default2?
|"inst/\RX_1500M.line_buffer/line_buf /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst /gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-7030h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:02:43 ; elapsed = 00:03:30 . Memory (MB): peak = 2418.594 ; gain = 956.562
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!
Block RAM: Final Mapping	Report
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name                                                                               | RTL Object                       | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | Cascade Heights | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|inst/\RX_1500M.line_buffer/line_buf /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 2 K x 68(NO_CHANGE)    | W |   | 2 K x 68(NO_CHANGE)    |   | R | Port A and B     | 0      | 4      | 2,1,1           | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+

2default:defaulth p
x
? 
S
%s
*synth2;
'
Distributed RAM: Final Mapping	Report
2default:defaulth p
x
? 
?
%s
*synth2?
?+-----------------------------------------------------------------------------------------------------------------------------+----------------------------------+----------------+----------------------+---------------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name                                                                                                                  | RTL Object                       | Inference      | Size (Depth x Width) | Primitives    | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+-----------------------------------------------------------------------------------------------------------------------------+----------------------------------+----------------+----------------------+---------------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|xpm_fifo_sync:/xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst                                                           | gen_wr_a.gen_word_narrow.mem_reg | User Attribute | 16 x 12              | RAM32M16 x 1	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|xpm_fifo_sync:/xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst                                                           | gen_wr_a.gen_word_narrow.mem_reg | User Attribute | 16 x 12              | RAM32M16 x 1	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|inst/\AXI_LITE.reg_inf /\gen_spkt_fifo/generic_pkt /\gnuram_async_fifo.xpm_fifo_base_inst /\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | User Attribute | 32 x 26              | RAM32M16 x 2	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|inst/\gen_pkt_fifo/pkt_fifo /\gnuram_async_fifo.xpm_fifo_base_inst /\gen_sdpram.xpm_memory_base_inst                         | gen_wr_a.gen_word_narrow.mem_reg | User Attribute | 32 x 42              | RAM32M16 x 3	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+-----------------------------------------------------------------------------------------------------------------------------+----------------------------------+----------------+----------------------+---------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:02:52 ; elapsed = 00:03:43 . Memory (MB): peak = 2458.637 ; gain = 996.605
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2:
&LANE_1.ppi_fifo0/CSI_OPT3_OFF.ppi_fifo2default:default2
sleep2default:defaultZ8-3295h px?
?
'tying undriven pin %s:%s to constant 0
3295*oasys2:
&LANE_2.ppi_fifo1/CSI_OPT3_OFF.ppi_fifo2default:default2
sleep2default:defaultZ8-3295h px?
?
'tying undriven pin %s:%s to constant 0
3295*oasys21
RX_1500M.line_buffer/line_buf2default:default2
sleep2default:defaultZ8-3295h px?
?
'tying undriven pin %s:%s to constant 0
3295*oasys2>
*AXI_LITE.reg_inf/gen_spkt_fifo/generic_pkt2default:default2
sleep2default:defaultZ8-3295h px?
?
'tying undriven pin %s:%s to constant 0
3295*oasys2)
gen_pkt_fifo/pkt_fifo2default:default2
sleep2default:defaultZ8-3295h px?
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
wFinished IO Insertion : Time (s): cpu = 00:03:04 ; elapsed = 00:03:57 . Memory (MB): peak = 2462.441 ; gain = 1000.410
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:03:04 ; elapsed = 00:03:57 . Memory (MB): peak = 2462.441 ; gain = 1000.410
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:03:05 ; elapsed = 00:03:58 . Memory (MB): peak = 2462.441 ; gain = 1000.410
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:03:05 ; elapsed = 00:03:58 . Memory (MB): peak = 2462.441 ; gain = 1000.410
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:03:05 ; elapsed = 00:03:59 . Memory (MB): peak = 2462.441 ; gain = 1000.410
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:03:05 ; elapsed = 00:03:59 . Memory (MB): peak = 2462.441 ; gain = 1000.410
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23

Static Shift Register Report:
2default:defaulth p
x
? 
?
%s
*synth2?
?+-----------------------------+-------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name                  | RTL Name    | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+-----------------------------+-------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|mipi_csi2_rx_ctrl_v1_0_8_top | frst_d3_reg | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+-----------------------------+-------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|1     |CARRY8   |    40|
2default:defaulth px? 
F
%s*synth2.
|2     |LUT1     |    71|
2default:defaulth px? 
F
%s*synth2.
|3     |LUT2     |   439|
2default:defaulth px? 
F
%s*synth2.
|4     |LUT3     |   277|
2default:defaulth px? 
F
%s*synth2.
|5     |LUT4     |   447|
2default:defaulth px? 
F
%s*synth2.
|6     |LUT5     |   407|
2default:defaulth px? 
F
%s*synth2.
|7     |LUT6     |   953|
2default:defaulth px? 
F
%s*synth2.
|8     |MUXF7    |    35|
2default:defaulth px? 
F
%s*synth2.
|9     |MUXF8    |    17|
2default:defaulth px? 
F
%s*synth2.
|10    |RAM32M16 |     7|
2default:defaulth px? 
F
%s*synth2.
|11    |RAMB36E2 |     4|
2default:defaulth px? 
F
%s*synth2.
|14    |SRL16E   |     1|
2default:defaulth px? 
F
%s*synth2.
|15    |FDCE     |    35|
2default:defaulth px? 
F
%s*synth2.
|16    |FDPE     |    33|
2default:defaulth px? 
F
%s*synth2.
|17    |FDRE     |  3688|
2default:defaulth px? 
F
%s*synth2.
|18    |FDSE     |    53|
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:03:05 ; elapsed = 00:03:59 . Memory (MB): peak = 2462.441 ; gain = 1000.410
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:02:17 ; elapsed = 00:03:32 . Memory (MB): peak = 2462.441 ; gain = 876.883
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:03:06 ; elapsed = 00:03:59 . Memory (MB): peak = 2462.441 ; gain = 1000.410
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.2002default:default2
2470.5042default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
992default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0062default:default2
2479.6842default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2}
i  A total of 7 instances were transformed.
  RAM32M16 => RAM32M16 (RAMD32(x14), RAMS32(x2)): 7 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1672default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:03:392default:default2
00:05:182default:default2
2479.6842default:default2
1434.7702default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2K
7D:/base/base.runs/bd_91b0_rx_0_synth_1/bd_91b0_rx_0.dcp2default:defaultZ17-1381h px? 
?
'%s' is deprecated. %s
384*common2#
use_project_ipc2default:default2A
-This option is deprecated and no longer used.2default:defaultZ17-576h px? 
?
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2 
bd_91b0_rx_02default:default2$
1d69ffcf95f6da992default:defaultZ2-1648h px? 
R
Renamed %s cell refs.
330*coretcl2
2822default:defaultZ2-1174h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2K
7D:/base/base.runs/bd_91b0_rx_0_synth_1/bd_91b0_rx_0.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
nExecuting : report_utilization -file bd_91b0_rx_0_utilization_synth.rpt -pb bd_91b0_rx_0_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Jul 20 23:21:31 20212default:defaultZ17-206h px? 


End Record