
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:082default:default2
00:00:082default:default2
1080.5902default:default2
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
d:/base2default:default2@
,d:/base/base.runs/cam_Accel_Conv_0_0_synth_12default:defaultZ19-3656h px? 
?
"Loaded Vivado IP repository '%s'.
1332*coregen2<
(D:/Programs/Xilinx/Vivado/2020.1/data/ip2default:defaultZ19-2313h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2'
update_ip_catalog: 2default:default2
00:00:052default:default2
00:00:062default:default2
1080.5902default:default2
0.0002default:defaultZ17-268h px? 
?
Command: %s
53*	vivadotcl2g
Ssynth_design -top cam_Accel_Conv_0_0 -part xczu3eg-sfvc784-1-e -mode out_of_context2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
IP '%s' is restricted:
%s
1667*coregen2&
cam_Accel_Conv_0_02default:default2E
1* Module reference is stale and needs refreshing.2default:defaultZ19-3571h px? 
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
37882default:defaultZ8-7075h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:12 ; elapsed = 00:00:19 . Memory (MB): peak = 1534.664 ; gain = 73.605
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2&
cam_Accel_Conv_0_02default:default2
 2default:default2i
Sd:/base/base.srcs/sources_1/bd/cam/ip/cam_Accel_Conv_0_0/synth/cam_Accel_Conv_0_0.v2default:default2
592default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2

Accel_Conv2default:default2
 2default:default21
D:/base/source/Accel_Conv.v2default:default2
12default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter FM_ADDR_BIT bound to: 12 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter WEIGHT_AXI_ADDR_BIT bound to: 14 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter WEIGHTBUF_ADDR_BIT bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter BIASBUF_ADDR_BIT bound to: 7 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter FM_DEPTH bound to: 4096 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter WEIGHTBUF_DEPTH bound to: 128 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter BIASBUF_DEPTH bound to: 128 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter LINEBUFFER_LEN1 bound to: 15 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter LINEBUFFER_LEN2 bound to: 13 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter LINEBUFFER_LEN3 bound to: 26 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter LINEBUFFER_LEN4 bound to: 52 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter LINEBUFFER_LEN5 bound to: 104 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter LINEBUFFER_LEN6 bound to: 208 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter IFM_RAM_STYLE bound to: block - type: string 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter WEIGHT_RAM_STYLE bound to: distributed - type: string 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter BIAS_RAM_STYLE bound to: distributed - type: string 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter OFM_RAM_STYLE bound to: block - type: string 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2#
global_para_gen2default:default2
 2default:default26
 D:/base/source/global_para_gen.v2default:default2
12default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter FM_ADDR_BIT bound to: 12 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter LINEBUFFER_LEN1 bound to: 15 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter LINEBUFFER_LEN2 bound to: 13 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter LINEBUFFER_LEN3 bound to: 26 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter LINEBUFFER_LEN4 bound to: 52 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter LINEBUFFER_LEN5 bound to: 104 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter LINEBUFFER_LEN6 bound to: 208 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter FM_COL_0 bound to: 15 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter FM_COL_1 bound to: 9'b000011100 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter FM_COL_2 bound to: 9'b000110110 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter FM_COL_3 bound to: 9'b001101010 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter FM_COL_4 bound to: 9'b011010010 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter FM_COL_5 bound to: 9'b110100010 
2default:defaulth p
x
? 
?
default block is never used226*oasys26
 D:/base/source/global_para_gen.v2default:default2
842default:default8@Z8-226h px? 
?
default block is never used226*oasys26
 D:/base/source/global_para_gen.v2default:default2
1182default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
global_para_gen2default:default2
 2default:default2
12default:default2
12default:default26
 D:/base/source/global_para_gen.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
interface_axilite_ctrl2default:default2
 2default:default2=
'D:/base/source/interface_axilite_ctrl.v2default:default2
42default:default8@Z8-6157h px? 
h
%s
*synth2P
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_S_AXI_ADDR_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter ADDR_LSB bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter OPT_MEM_ADDR_BITS bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
default block is never used226*oasys2=
'D:/base/source/interface_axilite_ctrl.v2default:default2
2032default:default8@Z8-226h px? 
?
default block is never used226*oasys2=
'D:/base/source/interface_axilite_ctrl.v2default:default2
3202default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
interface_axilite_ctrl2default:default2
 2default:default2
22default:default2
12default:default2=
'D:/base/source/interface_axilite_ctrl.v2default:default2
42default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
52default:default2 
S_AXI_AWADDR2default:default2
42default:default2*
interface_axilite_ctrl2default:default21
D:/base/source/Accel_Conv.v2default:default2
3002default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
52default:default2 
S_AXI_ARADDR2default:default2
42default:default2*
interface_axilite_ctrl2default:default21
D:/base/source/Accel_Conv.v2default:default2
3112default:default8@Z8-689h px? 
?
synthesizing module '%s'%s4497*oasys2(
generate_ctrl_signal2default:default2
 2default:default2;
%D:/base/source/generate_ctrl_signal.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2!
com_ctrl_task2default:default2
 2default:default24
D:/base/source/com_ctrl_task.v2default:default2
12default:default8@Z8-6157h px? 
P
%s
*synth28
$	Parameter POLARITY bound to: 1'b1 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter IDLE bound to: 2'b00 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter RUNNING bound to: 2'b01 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter PENDING bound to: 2'b10 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
com_ctrl_task2default:default2
 2default:default2
32default:default2
12default:default24
D:/base/source/com_ctrl_task.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
com_ctrl_task__parameterized02default:default2
 2default:default24
D:/base/source/com_ctrl_task.v2default:default2
12default:default8@Z8-6157h px? 
P
%s
*synth28
$	Parameter POLARITY bound to: 1'b0 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter IDLE bound to: 2'b00 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter RUNNING bound to: 2'b01 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter PENDING bound to: 2'b10 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
com_ctrl_task__parameterized02default:default2
 2default:default2
32default:default2
12default:default24
D:/base/source/com_ctrl_task.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
generate_ctrl_signal2default:default2
 2default:default2
42default:default2
12default:default2;
%D:/base/source/generate_ctrl_signal.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
interface_axis_slave2default:default2
 2default:default2;
%D:/base/source/interface_axis_slave.v2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter ADDR_BIT bound to: 16 - type: integer 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter IDLE bound to: 2'b00 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter SET bound to: 2'b01 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter FINISH bound to: 2'b11 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
interface_axis_slave2default:default2
 2default:default2
52default:default2
12default:default2;
%D:/base/source/interface_axis_slave.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
interface_axis_master2default:default2
 2default:default2<
&D:/base/source/interface_axis_master.v2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter ADDR_BIT bound to: 16 - type: integer 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter IDLE bound to: 1'b0 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter RUNNING bound to: 1'b1 
2default:defaulth p
x
? 
?
default block is never used226*oasys2<
&D:/base/source/interface_axis_master.v2default:default2
552default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
interface_axis_master2default:default2
 2default:default2
62default:default2
12default:default2<
&D:/base/source/interface_axis_master.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
axis_buf_sel2default:default2
 2default:default23
D:/base/source/axis_buf_sel.v2default:default2
12default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter DMA_ADDR_BIT bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
axis_buf_sel2default:default2
 2default:default2
72default:default2
12default:default23
D:/base/source/axis_buf_sel.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2$
global_data_beat2default:default2
 2default:default27
!D:/base/source/global_data_beat.v2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter ADDR_BIT bound to: 12 - type: integer 
2default:defaulth p
x
? 
L
%s
*synth24
 	Parameter IDLE bound to: 1'b0 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter RUNNING bound to: 1'b1 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2!
com_shift_reg2default:default2
 2default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 9 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter SRL_STYLE_VAL bound to: srl_reg - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
com_shift_reg2default:default2
 2default:default2
82default:default2
12default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
com_shift_reg__parameterized02default:default2
 2default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter DEPTH bound to: 18 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter SRL_STYLE_VAL bound to: srl_reg - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
com_shift_reg__parameterized02default:default2
 2default:default2
82default:default2
12default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
com_shift_reg__parameterized12default:default2
 2default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter SRL_STYLE_VAL bound to: srl_reg - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
com_shift_reg__parameterized12default:default2
 2default:default2
82default:default2
12default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
si2default:default2
122default:default21
com_shift_reg__parameterized12default:default27
!D:/base/source/global_data_beat.v2default:default2
1382default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
so2default:default2
122default:default21
com_shift_reg__parameterized12default:default27
!D:/base/source/global_data_beat.v2default:default2
1392default:default8@Z8-689h px? 
?
synthesizing module '%s'%s4497*oasys21
com_shift_reg__parameterized22default:default2
 2default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter DEPTH bound to: 7 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter SRL_STYLE_VAL bound to: srl_reg - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
com_shift_reg__parameterized22default:default2
 2default:default2
82default:default2
12default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
si2default:default2
122default:default21
com_shift_reg__parameterized22default:default27
!D:/base/source/global_data_beat.v2default:default2
1462default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
so2default:default2
122default:default21
com_shift_reg__parameterized22default:default27
!D:/base/source/global_data_beat.v2default:default2
1472default:default8@Z8-689h px? 
?
synthesizing module '%s'%s4497*oasys21
com_shift_reg__parameterized32default:default2
 2default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter DEPTH bound to: 10 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter SRL_STYLE_VAL bound to: srl_reg - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
com_shift_reg__parameterized32default:default2
 2default:default2
82default:default2
12default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2&
com_negedge_detect2default:default2
 2default:default29
#D:/base/source/com_negedge_detect.v2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
com_negedge_detect2default:default2
 2default:default2
92default:default2
12default:default29
#D:/base/source/com_negedge_detect.v2default:default2
12default:default8@Z8-6155h px? 
?
default block is never used226*oasys27
!D:/base/source/global_data_beat.v2default:default2
1922default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
global_data_beat2default:default2
 2default:default2
102default:default2
12default:default27
!D:/base/source/global_data_beat.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	accel_top2default:default2
 2default:default20
D:/base/source/accel_top.v2default:default2
12default:default8@Z8-6157h px? 
e
%s
*synth2M
9	Parameter IFMBUF_ADDR_BIT bound to: 13 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter WEIGHTBUF_ADDR_BIT bound to: 7 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter BIASBUF_ADDR_BIT bound to: 7 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter ACC_ADDR_BIT bound to: 12 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter OFMBUF_ADDR_BIT bound to: 12 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter IFMBUF_DEPTH bound to: 8192 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter WEIGHTBUF_DEPTH bound to: 128 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter BIASBUF_DEPTH bound to: 128 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter ACC_DEPTH bound to: 4096 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter OFMBUF_DEPTH bound to: 4096 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter LINEBUFFER_LEN1 bound to: 15 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter LINEBUFFER_LEN2 bound to: 13 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter LINEBUFFER_LEN3 bound to: 26 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter LINEBUFFER_LEN4 bound to: 52 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter LINEBUFFER_LEN5 bound to: 104 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter LINEBUFFER_LEN6 bound to: 208 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter IFM_RAM_STYLE bound to: block - type: string 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter WEIGHT_RAM_STYLE bound to: distributed - type: string 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter BIAS_RAM_STYLE bound to: distributed - type: string 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter OFM_RAM_STYLE bound to: block - type: string 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2"
buffer_ifm_1x82default:default2
 2default:default25
D:/base/source/buffer_ifm_1x8.v2default:default2
12default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter DEPTH bound to: 8192 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter ADDR_BIT bound to: 13 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter RAM_STYLE_VAL bound to: block - type: string 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2%
com_dual_port_ram2default:default2
 2default:default28
"D:/base/source/com_dual_port_ram.v2default:default2
12default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter ADDR_BIT bound to: 13 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DEPTH bound to: 8192 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter RAM_STYLE_VAL bound to: block - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
com_dual_port_ram2default:default2
 2default:default2
112default:default2
12default:default28
"D:/base/source/com_dual_port_ram.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
buffer_ifm_1x82default:default2
 2default:default2
122default:default2
12default:default25
D:/base/source/buffer_ifm_1x8.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2'
buffer_weight_1x8x82default:default2
 2default:default2:
$D:/base/source/buffer_weight_1x8x8.v2default:default2
12default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter DEPTH bound to: 128 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter ADDR_BIT bound to: 7 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter RAM_STYLE_VAL bound to: distributed - type: string 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2%
buffer_weight_1x82default:default2
 2default:default28
"D:/base/source/buffer_weight_1x8.v2default:default2
12default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter DEPTH bound to: 128 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter ADDR_BIT bound to: 7 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter RAM_STYLE_VAL bound to: distributed - type: string 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2,
com_simple_dual_port_ram2default:default2
 2default:default2?
)D:/base/source/com_simple_dual_port_ram.v2default:default2
12default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 72 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter ADDR_BIT bound to: 7 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DEPTH bound to: 128 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter RAM_STYLE_VAL bound to: distributed - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
com_simple_dual_port_ram2default:default2
 2default:default2
132default:default2
12default:default2?
)D:/base/source/com_simple_dual_port_ram.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
buffer_weight_1x82default:default2
 2default:default2
142default:default2
12default:default28
"D:/base/source/buffer_weight_1x8.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
buffer_weight_1x8x82default:default2
 2default:default2
152default:default2
12default:default2:
$D:/base/source/buffer_weight_1x8x8.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
buffer_bias2default:default2
 2default:default22
D:/base/source/buffer_bias.v2default:default2
12default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter DEPTH bound to: 128 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter ADDR_BIT bound to: 7 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter RAM_STYLE_VAL bound to: distributed - type: string 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2<
(com_simple_dual_port_ram__parameterized02default:default2
 2default:default2?
)D:/base/source/com_simple_dual_port_ram.v2default:default2
12default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter ADDR_BIT bound to: 7 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DEPTH bound to: 128 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter RAM_STYLE_VAL bound to: distributed - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2<
(com_simple_dual_port_ram__parameterized02default:default2
 2default:default2
152default:default2
12default:default2?
)D:/base/source/com_simple_dual_port_ram.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
buffer_bias2default:default2
 2default:default2
162default:default2
12default:default22
D:/base/source/buffer_bias.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2-
module_sub_zero_point_1x82default:default2
 2default:default2@
*D:/base/source/module_sub_zero_point_1x8.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2&
cal_sub_zero_point2default:default2
 2default:default29
#D:/base/source/cal_sub_zero_point.v2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
cal_sub_zero_point2default:default2
 2default:default2
172default:default2
12default:default29
#D:/base/source/cal_sub_zero_point.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
module_sub_zero_point_1x82default:default2
 2default:default2
182default:default2
12default:default2@
*D:/base/source/module_sub_zero_point_1x8.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
linebuffer_3x3_collect2default:default2
 2default:default2=
'D:/base/source/linebuffer_3x3_collect.v2default:default2
12default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter LEN1 bound to: 15 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter LEN2 bound to: 13 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter LEN3 bound to: 26 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter LEN4 bound to: 52 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter LEN5 bound to: 104 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter LEN6 bound to: 208 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2*
linebuffer_3x3_type_x62default:default2
 2default:default2=
'D:/base/source/linebuffer_3x3_type_x6.v2default:default2
12default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter LEN1 bound to: 15 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter LEN2 bound to: 13 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter LEN3 bound to: 26 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter LEN4 bound to: 52 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter LEN5 bound to: 104 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter LEN6 bound to: 208 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys21
com_shift_reg__parameterized42default:default2
 2default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter DEPTH bound to: 15 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter SRL_STYLE_VAL bound to: reg_srl_reg - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
com_shift_reg__parameterized42default:default2
 2default:default2
182default:default2
12default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
com_shift_reg__parameterized52default:default2
 2default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter DEPTH bound to: 13 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter SRL_STYLE_VAL bound to: reg_srl_reg - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
com_shift_reg__parameterized52default:default2
 2default:default2
182default:default2
12default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
com_shift_reg__parameterized62default:default2
 2default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter DEPTH bound to: 26 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter SRL_STYLE_VAL bound to: reg_srl_reg - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
com_shift_reg__parameterized62default:default2
 2default:default2
182default:default2
12default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
com_shift_reg__parameterized72default:default2
 2default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter DEPTH bound to: 52 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter SRL_STYLE_VAL bound to: reg_srl_reg - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
com_shift_reg__parameterized72default:default2
 2default:default2
182default:default2
12default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
com_shift_reg__parameterized82default:default2
 2default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter DEPTH bound to: 104 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter SRL_STYLE_VAL bound to: reg_srl_reg - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
com_shift_reg__parameterized82default:default2
 2default:default2
182default:default2
12default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
com_shift_reg__parameterized92default:default2
 2default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter DEPTH bound to: 208 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter SRL_STYLE_VAL bound to: reg_srl_reg - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
com_shift_reg__parameterized92default:default2
 2default:default2
182default:default2
12default:default24
D:/base/source/com_shift_reg.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
com_mux_int_6sel12default:default2
 2default:default29
#D:/base/source/com_mux_int8_6sel1.v2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
com_mux_int_6sel12default:default2
 2default:default2
192default:default2
12default:default29
#D:/base/source/com_mux_int8_6sel1.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
linebuffer_3x3_type_x62default:default2
 2default:default2
202default:default2
12default:default2=
'D:/base/source/linebuffer_3x3_type_x6.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
linebuffer_3x3_collect2default:default2
 2default:default2
212default:default2
12default:default2=
'D:/base/source/linebuffer_3x3_collect.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2.
module_conv_kernel_1x2x8x42default:default2
 2default:default2A
+D:/base/source/module_conv_kernel_1x2x8x4.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2,
module_conv_kernel_1x2x82default:default2
 2default:default2?
)D:/base/source/module_conv_kernel_1x2x8.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2*
module_conv_kernel_1x22default:default2
 2default:default2=
'D:/base/source/module_conv_kernel_1x2.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2$
cal_mult_int8_x22default:default2
 2default:default26
 D:/base/source/cal_mul_int8_x2.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2(
cal_mult_int8_x2_dsp2default:default2
 2default:default2:
$D:/base/source/cal_mul_int8_x2_dsp.v2default:default2
22default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
cal_mult_int8_x2_dsp2default:default2
 2default:default2
222default:default2
12default:default2:
$D:/base/source/cal_mul_int8_x2_dsp.v2default:default2
22default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
cal_mult_int8_x22default:default2
 2default:default2
232default:default2
12default:default26
 D:/base/source/cal_mul_int8_x2.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
cal_addtree_int16_x92default:default2
 2default:default2;
%D:/base/source/cal_addtree_int16_x9.v2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
cal_addtree_int16_x92default:default2
 2default:default2
242default:default2
12default:default2;
%D:/base/source/cal_addtree_int16_x9.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
module_conv_kernel_1x22default:default2
 2default:default2
252default:default2
12default:default2=
'D:/base/source/module_conv_kernel_1x2.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
cal_addtree_int18_x92default:default2
 2default:default2;
%D:/base/source/cal_addtree_int18_x9.v2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
cal_addtree_int18_x92default:default2
 2default:default2
262default:default2
12default:default2;
%D:/base/source/cal_addtree_int18_x9.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
module_conv_kernel_1x2x82default:default2
 2default:default2
272default:default2
12default:default2?
)D:/base/source/module_conv_kernel_1x2x8.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
module_conv_kernel_1x2x8x42default:default2
 2default:default2
282default:default2
12default:default2A
+D:/base/source/module_conv_kernel_1x2x8x4.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
module_acc_1x82default:default2
 2default:default25
D:/base/source/module_acc_1x8.v2default:default2
12default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter DEPTH bound to: 4096 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter ADDR_BIT bound to: 12 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2

module_acc2default:default2
 2default:default21
D:/base/source/module_acc.v2default:default2
12default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter DEPTH bound to: 4096 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter ADDR_BIT bound to: 12 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys25
!com_dual_port_ram__parameterized02default:default2
 2default:default28
"D:/base/source/com_dual_port_ram.v2default:default2
12default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter ADDR_BIT bound to: 12 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DEPTH bound to: 4096 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter RAM_STYLE_VAL bound to: block - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!com_dual_port_ram__parameterized02default:default2
 2default:default2
282default:default2
12default:default28
"D:/base/source/com_dual_port_ram.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
cal_acc2default:default2
 2default:default2.
D:/base/source/cal_acc.v2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cal_acc2default:default2
 2default:default2
292default:default2
12default:default2.
D:/base/source/cal_acc.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

module_acc2default:default2
 2default:default2
302default:default2
12default:default21
D:/base/source/module_acc.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
module_acc_1x82default:default2
 2default:default2
312default:default2
12default:default25
D:/base/source/module_acc_1x8.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2$
module_quant_1x82default:default2
 2default:default27
!D:/base/source/module_quant_1x8.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2 
module_quant2default:default2
 2default:default23
D:/base/source/module_quant.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2'
cal_sat_int18_int162default:default2
 2default:default2:
$D:/base/source/cal_sat_int18_int16.v2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
cal_sat_int18_int162default:default2
 2default:default2
322default:default2
12default:default2:
$D:/base/source/cal_sat_int18_int16.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	cal_scale2default:default2
 2default:default20
D:/base/source/cal_scale.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2!
cal_scale_mul2default:default2
 2default:default24
D:/base/source/cal_scale_mul.v2default:default2
22default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
cal_scale_mul2default:default2
 2default:default2
332default:default2
12default:default24
D:/base/source/cal_scale_mul.v2default:default2
22default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
cal_scale_shift2default:default2
 2default:default26
 D:/base/source/cal_scale_shift.v2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
cal_scale_shift2default:default2
 2default:default2
342default:default2
12default:default26
 D:/base/source/cal_scale_shift.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	cal_scale2default:default2
 2default:default2
352default:default2
12default:default20
D:/base/source/cal_scale.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2&
cal_sat_int16_int82default:default2
 2default:default29
#D:/base/source/cal_sat_int16_int8.v2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
cal_sat_int16_int82default:default2
 2default:default2
362default:default2
12default:default29
#D:/base/source/cal_sat_int16_int8.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
module_quant2default:default2
 2default:default2
372default:default2
12default:default23
D:/base/source/module_quant.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
module_quant_1x82default:default2
 2default:default2
382default:default2
12default:default27
!D:/base/source/module_quant_1x8.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
module_leaky_relu_1x82default:default2
 2default:default2<
&D:/base/source/module_leaky_relu_1x8.v2default:default2
12default:default8@Z8-6157h px? 
k
%s
*synth2S
?	Parameter RAM_STYLE_VAL bound to: distributed - type: string 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2<
(com_simple_dual_port_ram__parameterized12default:default2
 2default:default2?
)D:/base/source/com_simple_dual_port_ram.v2default:default2
12default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter ADDR_BIT bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DEPTH bound to: 256 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter RAM_STYLE_VAL bound to: distributed - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2<
(com_simple_dual_port_ram__parameterized12default:default2
 2default:default2
382default:default2
12default:default2?
)D:/base/source/com_simple_dual_port_ram.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
module_leaky_relu_1x82default:default2
 2default:default2
392default:default2
12default:default2<
&D:/base/source/module_leaky_relu_1x8.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
module_relu_1x82default:default2
 2default:default26
 D:/base/source/module_relu_1x8.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
cal_relu2default:default2
 2default:default2/
D:/base/source/cal_relu.v2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cal_relu2default:default2
 2default:default2
402default:default2
12default:default2/
D:/base/source/cal_relu.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
module_relu_1x82default:default2
 2default:default2
412default:default2
12default:default26
 D:/base/source/module_relu_1x8.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
linebuffer_2x2_collect2default:default2
 2default:default2=
'D:/base/source/linebuffer_2x2_collect.v2default:default2
12default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter LEN1 bound to: 15 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter LEN2 bound to: 13 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter LEN3 bound to: 26 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter LEN4 bound to: 52 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter LEN5 bound to: 104 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter LEN6 bound to: 208 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2*
linebuffer_2x2_type_x42default:default2
 2default:default2=
'D:/base/source/linebuffer_2x2_type_x6.v2default:default2
12default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter LEN1 bound to: 15 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter LEN2 bound to: 13 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter LEN3 bound to: 26 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter LEN4 bound to: 52 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter LEN5 bound to: 104 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter LEN6 bound to: 208 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
linebuffer_2x2_type_x42default:default2
 2default:default2
422default:default2
12default:default2=
'D:/base/source/linebuffer_2x2_type_x6.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
linebuffer_2x2_collect2default:default2
 2default:default2
432default:default2
12default:default2=
'D:/base/source/linebuffer_2x2_collect.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
module_pool_kernel_1x82default:default2
 2default:default2=
'D:/base/source/module_pool_kernel_1x8.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2&
module_pool_kernel2default:default2
 2default:default29
#D:/base/source/module_pool_kernel.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
cal_max_2x22default:default2
 2default:default22
D:/base/source/cal_max_2x2.v2default:default2
12default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2"
cal_comparator2default:default2
 2default:default25
D:/base/source/cal_comparator.v2default:default2
12default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
cal_comparator2default:default2
 2default:default2
442default:default2
12default:default25
D:/base/source/cal_comparator.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cal_max_2x22default:default2
 2default:default2
452default:default2
12default:default22
D:/base/source/cal_max_2x2.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
module_pool_kernel2default:default2
 2default:default2
462default:default2
12default:default29
#D:/base/source/module_pool_kernel.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
module_pool_kernel_1x82default:default2
 2default:default2
472default:default2
12default:default2=
'D:/base/source/module_pool_kernel_1x8.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

buffer_ofm2default:default2
 2default:default21
D:/base/source/buffer_ofm.v2default:default2
12default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter DEPTH bound to: 4096 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter ADDR_BIT bound to: 12 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter RAM_STYLE_VAL bound to: block - type: string 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2<
(com_simple_dual_port_ram__parameterized22default:default2
 2default:default2?
)D:/base/source/com_simple_dual_port_ram.v2default:default2
12default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter ADDR_BIT bound to: 12 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DEPTH bound to: 4096 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter RAM_STYLE_VAL bound to: block - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2<
(com_simple_dual_port_ram__parameterized22default:default2
 2default:default2
472default:default2
12default:default2?
)D:/base/source/com_simple_dual_port_ram.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

buffer_ofm2default:default2
 2default:default2
482default:default2
12default:default21
D:/base/source/buffer_ofm.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	accel_top2default:default2
 2default:default2
492default:default2
12default:default20
D:/base/source/accel_top.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Accel_Conv2default:default2
 2default:default2
502default:default2
12default:default21
D:/base/source/Accel_Conv.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
cam_Accel_Conv_0_02default:default2
 2default:default2
512default:default2
12default:default2i
Sd:/base/base.srcs/sources_1/bd/cam/ip/cam_Accel_Conv_0_0/synth/cam_Accel_Conv_0_0.v2default:default2
592default:default8@Z8-6155h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:21 ; elapsed = 00:00:33 . Memory (MB): peak = 1659.312 ; gain = 198.254
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:23 ; elapsed = 00:00:47 . Memory (MB): peak = 1673.207 ; gain = 212.148
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:23 ; elapsed = 00:00:47 . Memory (MB): peak = 1673.207 ; gain = 212.148
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
00:00:072default:default2
00:00:082default:default2
1741.9302default:default2
3.3522default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1182default:default2
2005.5312default:default2
1.1602default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:132default:default2
00:00:092default:default2
2087.9692default:default2
82.3982default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:01:46 ; elapsed = 00:02:13 . Memory (MB): peak = 2087.969 ; gain = 626.910
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:01:46 ; elapsed = 00:02:13 . Memory (MB): peak = 2087.969 ; gain = 626.910
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:01:46 ; elapsed = 00:02:13 . Memory (MB): peak = 2087.969 ; gain = 626.910
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2"
curr_state_reg2default:default2!
com_ctrl_task2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2"
curr_state_reg2default:default21
com_ctrl_task__parameterized02default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2"
curr_state_reg2default:default2(
interface_axis_slave2default:defaultZ8-802h px? 
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
_                    IDLE |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RUNNING |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                 PENDING |                               10 |                               10
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
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2"
curr_state_reg2default:default2

sequential2default:default2!
com_ctrl_task2default:defaultZ8-3354h px? 
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
_                    IDLE |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RUNNING |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                 PENDING |                               10 |                               10
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
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2"
curr_state_reg2default:default2

sequential2default:default21
com_ctrl_task__parameterized02default:defaultZ8-3354h px? 
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
_                    IDLE |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                     SET |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                  FINISH |                               10 |                               11
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
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2"
curr_state_reg2default:default2

sequential2default:default2(
interface_axis_slave2default:defaultZ8-3354h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default20
"com_dual_port_ram:/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
82default:default20
"com_dual_port_ram:/RAM_reg"2default:defaultZ8-5555h px? 
?
?The signal %s was recognized as a true dual port RAM template.
3473*oasys20
"com_dual_port_ram:/RAM_reg"2default:defaultZ8-3971h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2@
,"com_dual_port_ram__parameterized0:/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
182default:default2@
,"com_dual_port_ram__parameterized0:/RAM_reg"2default:defaultZ8-5555h px? 
?
?The signal %s was recognized as a true dual port RAM template.
3473*oasys2@
,"com_dual_port_ram__parameterized0:/RAM_reg"2default:defaultZ8-3971h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
42default:default2G
3"com_simple_dual_port_ram__parameterized2:/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42default:default2
362default:default2G
3"com_simple_dual_port_ram__parameterized2:/RAM_reg"2default:defaultZ8-5555h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
182default:default2G
3"com_simple_dual_port_ram__parameterized2:/RAM_reg"2default:defaultZ8-5555h px? 
?
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
92default:default2G
3"com_simple_dual_port_ram__parameterized2:/RAM_reg"2default:defaultZ8-7030h px? 
?
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
12default:default2G
3"com_simple_dual_port_ram__parameterized2:/RAM_reg"2default:defaultZ8-7030h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:01:53 ; elapsed = 00:02:21 . Memory (MB): peak = 2087.969 ; gain = 626.910
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
,	   3 Input   32 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   18 Bit       Adders := 288   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   18 Bit       Adders := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   17 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit       Adders := 303   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    8 Bit       Adders := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit       Adders := 16    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 2     
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
.	               72 Bit    Registers := 64    
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
.	               32 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               18 Bit    Registers := 320   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 30    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 13    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 292   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 10289 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 16    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 96    
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
?	             256K Bit	(4096 X 64 bit)          RAMs := 1     
2default:defaulth p
x
? 
k
%s
*synth2S
?	              72K Bit	(4096 X 18 bit)          RAMs := 8     
2default:defaulth p
x
? 
j
%s
*synth2R
>	              64K Bit	(8192 X 8 bit)          RAMs := 8     
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
,	   2 Input   64 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   32 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   18 Bit        Muxes := 24    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   12 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    9 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    9 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 40    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 1     
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
,	   2 Input    2 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 19    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 1     
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
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
t
%s
*synth2\
HDSP Report: Generating DSP DOUT_reg, operation Mode is: ((D'+A2)*B'')'.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register D_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: register A_PORT_REG_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register DOUT_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register MULT_RES_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register A_Plus_D_reg is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator MULT_RES0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: operator A_Plus_D0 is absorbed into DSP DOUT_reg.
2default:defaulth p
x
? 
n
%s
*synth2V
BDSP Report: Generating DSP dout_reg, operation Mode is: (A2*B2)'.
2default:defaulth p
x
? 
l
%s
*synth2T
@DSP Report: register scale_d_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: register val_d_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register dout_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
k
%s
*synth2S
?DSP Report: register dout_t_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
h
%s
*synth2P
<DSP Report: operator dout_t0 is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
n
%s
*synth2V
BDSP Report: Generating DSP dout_reg, operation Mode is: (A2*B2)'.
2default:defaulth p
x
? 
l
%s
*synth2T
@DSP Report: register scale_d_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: register val_d_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register dout_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
k
%s
*synth2S
?DSP Report: register dout_t_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
h
%s
*synth2P
<DSP Report: operator dout_t0 is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
n
%s
*synth2V
BDSP Report: Generating DSP dout_reg, operation Mode is: (A2*B2)'.
2default:defaulth p
x
? 
l
%s
*synth2T
@DSP Report: register scale_d_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: register val_d_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register dout_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
k
%s
*synth2S
?DSP Report: register dout_t_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
h
%s
*synth2P
<DSP Report: operator dout_t0 is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
n
%s
*synth2V
BDSP Report: Generating DSP dout_reg, operation Mode is: (A2*B2)'.
2default:defaulth p
x
? 
l
%s
*synth2T
@DSP Report: register scale_d_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: register val_d_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register dout_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
k
%s
*synth2S
?DSP Report: register dout_t_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
h
%s
*synth2P
<DSP Report: operator dout_t0 is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
n
%s
*synth2V
BDSP Report: Generating DSP dout_reg, operation Mode is: (A2*B2)'.
2default:defaulth p
x
? 
l
%s
*synth2T
@DSP Report: register scale_d_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: register val_d_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register dout_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
k
%s
*synth2S
?DSP Report: register dout_t_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
h
%s
*synth2P
<DSP Report: operator dout_t0 is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
n
%s
*synth2V
BDSP Report: Generating DSP dout_reg, operation Mode is: (A2*B2)'.
2default:defaulth p
x
? 
l
%s
*synth2T
@DSP Report: register scale_d_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: register val_d_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register dout_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
k
%s
*synth2S
?DSP Report: register dout_t_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
h
%s
*synth2P
<DSP Report: operator dout_t0 is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
n
%s
*synth2V
BDSP Report: Generating DSP dout_reg, operation Mode is: (A2*B2)'.
2default:defaulth p
x
? 
l
%s
*synth2T
@DSP Report: register scale_d_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: register val_d_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register dout_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
k
%s
*synth2S
?DSP Report: register dout_t_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
h
%s
*synth2P
<DSP Report: operator dout_t0 is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
n
%s
*synth2V
BDSP Report: Generating DSP dout_reg, operation Mode is: (A2*B2)'.
2default:defaulth p
x
? 
l
%s
*synth2T
@DSP Report: register scale_d_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
j
%s
*synth2R
>DSP Report: register val_d_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register dout_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
k
%s
*synth2S
?DSP Report: register dout_t_reg is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
h
%s
*synth2P
<DSP Report: operator dout_t0 is absorbed into DSP dout_reg.
2default:defaulth p
x
? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2h
T"cam_Accel_Conv_0_0/u_module_acc_1x8/u_module_acc_0/u_com_dual_port_ram_ofm/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
182default:default2h
T"cam_Accel_Conv_0_0/u_module_acc_1x8/u_module_acc_0/u_com_dual_port_ram_ofm/RAM_reg"2default:defaultZ8-5555h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2h
T"cam_Accel_Conv_0_0/u_module_acc_1x8/u_module_acc_1/u_com_dual_port_ram_ofm/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
182default:default2h
T"cam_Accel_Conv_0_0/u_module_acc_1x8/u_module_acc_1/u_com_dual_port_ram_ofm/RAM_reg"2default:defaultZ8-5555h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2h
T"cam_Accel_Conv_0_0/u_module_acc_1x8/u_module_acc_2/u_com_dual_port_ram_ofm/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
182default:default2h
T"cam_Accel_Conv_0_0/u_module_acc_1x8/u_module_acc_2/u_com_dual_port_ram_ofm/RAM_reg"2default:defaultZ8-5555h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2h
T"cam_Accel_Conv_0_0/u_module_acc_1x8/u_module_acc_3/u_com_dual_port_ram_ofm/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
182default:default2h
T"cam_Accel_Conv_0_0/u_module_acc_1x8/u_module_acc_3/u_com_dual_port_ram_ofm/RAM_reg"2default:defaultZ8-5555h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2h
T"cam_Accel_Conv_0_0/u_module_acc_1x8/u_module_acc_4/u_com_dual_port_ram_ofm/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
182default:default2h
T"cam_Accel_Conv_0_0/u_module_acc_1x8/u_module_acc_4/u_com_dual_port_ram_ofm/RAM_reg"2default:defaultZ8-5555h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2h
T"cam_Accel_Conv_0_0/u_module_acc_1x8/u_module_acc_5/u_com_dual_port_ram_ofm/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
182default:default2h
T"cam_Accel_Conv_0_0/u_module_acc_1x8/u_module_acc_5/u_com_dual_port_ram_ofm/RAM_reg"2default:defaultZ8-5555h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2h
T"cam_Accel_Conv_0_0/u_module_acc_1x8/u_module_acc_6/u_com_dual_port_ram_ofm/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
182default:default2h
T"cam_Accel_Conv_0_0/u_module_acc_1x8/u_module_acc_6/u_com_dual_port_ram_ofm/RAM_reg"2default:defaultZ8-5555h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2h
T"cam_Accel_Conv_0_0/u_module_acc_1x8/u_module_acc_7/u_com_dual_port_ram_ofm/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
182default:default2h
T"cam_Accel_Conv_0_0/u_module_acc_1x8/u_module_acc_7/u_com_dual_port_ram_ofm/RAM_reg"2default:defaultZ8-5555h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2W
C"cam_Accel_Conv_0_0/u_buffer_ifm_1x8/u_com_dual_port_ram_0/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
82default:default2W
C"cam_Accel_Conv_0_0/u_buffer_ifm_1x8/u_com_dual_port_ram_0/RAM_reg"2default:defaultZ8-5555h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2W
C"cam_Accel_Conv_0_0/u_buffer_ifm_1x8/u_com_dual_port_ram_1/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
82default:default2W
C"cam_Accel_Conv_0_0/u_buffer_ifm_1x8/u_com_dual_port_ram_1/RAM_reg"2default:defaultZ8-5555h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2W
C"cam_Accel_Conv_0_0/u_buffer_ifm_1x8/u_com_dual_port_ram_2/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
82default:default2W
C"cam_Accel_Conv_0_0/u_buffer_ifm_1x8/u_com_dual_port_ram_2/RAM_reg"2default:defaultZ8-5555h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2W
C"cam_Accel_Conv_0_0/u_buffer_ifm_1x8/u_com_dual_port_ram_3/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
82default:default2W
C"cam_Accel_Conv_0_0/u_buffer_ifm_1x8/u_com_dual_port_ram_3/RAM_reg"2default:defaultZ8-5555h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2W
C"cam_Accel_Conv_0_0/u_buffer_ifm_1x8/u_com_dual_port_ram_4/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
82default:default2W
C"cam_Accel_Conv_0_0/u_buffer_ifm_1x8/u_com_dual_port_ram_4/RAM_reg"2default:defaultZ8-5555h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2W
C"cam_Accel_Conv_0_0/u_buffer_ifm_1x8/u_com_dual_port_ram_5/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
82default:default2W
C"cam_Accel_Conv_0_0/u_buffer_ifm_1x8/u_com_dual_port_ram_5/RAM_reg"2default:defaultZ8-5555h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2W
C"cam_Accel_Conv_0_0/u_buffer_ifm_1x8/u_com_dual_port_ram_6/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
82default:default2W
C"cam_Accel_Conv_0_0/u_buffer_ifm_1x8/u_com_dual_port_ram_6/RAM_reg"2default:defaultZ8-5555h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
22default:default2W
C"cam_Accel_Conv_0_0/u_buffer_ifm_1x8/u_com_dual_port_ram_7/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
82default:default2W
C"cam_Accel_Conv_0_0/u_buffer_ifm_1x8/u_com_dual_port_ram_7/RAM_reg"2default:defaultZ8-5555h px? 
?
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
42default:default2X
D"cam_Accel_Conv_0_0/u_buffer_ofm/u_com_simple_dual_port_ram/RAM_reg"2default:defaultZ8-5779h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42default:default2
362default:default2X
D"cam_Accel_Conv_0_0/u_buffer_ofm/u_com_simple_dual_port_ram/RAM_reg"2default:defaultZ8-5555h px? 
?
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
22default:default2
182default:default2X
D"cam_Accel_Conv_0_0/u_buffer_ofm/u_com_simple_dual_port_ram/RAM_reg"2default:defaultZ8-5555h px? 
?
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
92default:default2X
D"cam_Accel_Conv_0_0/u_buffer_ofm/u_com_simple_dual_port_ram/RAM_reg"2default:defaultZ8-7030h px? 
?
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
12default:default2X
D"cam_Accel_Conv_0_0/u_buffer_ofm/u_com_simple_dual_port_ram/RAM_reg"2default:defaultZ8-7030h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:03:52 ; elapsed = 00:04:28 . Memory (MB): peak = 2087.969 ; gain = 626.910
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
?
%s*synth2?
?+-------------------+-----------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name        | RTL Object                                                      | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | Cascade Heights | 
2default:defaulth px? 
?
%s*synth2?
?+-------------------+-----------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_module_acc_1x8/u_module_acc_0/u_com_dual_port_ram_ofm/RAM_reg | 4 K x 18(READ_FIRST)   | W |   | 4 K x 18(WRITE_FIRST)  |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_module_acc_1x8/u_module_acc_1/u_com_dual_port_ram_ofm/RAM_reg | 4 K x 18(READ_FIRST)   | W |   | 4 K x 18(WRITE_FIRST)  |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_module_acc_1x8/u_module_acc_2/u_com_dual_port_ram_ofm/RAM_reg | 4 K x 18(READ_FIRST)   | W |   | 4 K x 18(WRITE_FIRST)  |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_module_acc_1x8/u_module_acc_3/u_com_dual_port_ram_ofm/RAM_reg | 4 K x 18(READ_FIRST)   | W |   | 4 K x 18(WRITE_FIRST)  |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_module_acc_1x8/u_module_acc_4/u_com_dual_port_ram_ofm/RAM_reg | 4 K x 18(READ_FIRST)   | W |   | 4 K x 18(WRITE_FIRST)  |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_module_acc_1x8/u_module_acc_5/u_com_dual_port_ram_ofm/RAM_reg | 4 K x 18(READ_FIRST)   | W |   | 4 K x 18(WRITE_FIRST)  |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_module_acc_1x8/u_module_acc_6/u_com_dual_port_ram_ofm/RAM_reg | 4 K x 18(READ_FIRST)   | W |   | 4 K x 18(WRITE_FIRST)  |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_module_acc_1x8/u_module_acc_7/u_com_dual_port_ram_ofm/RAM_reg | 4 K x 18(READ_FIRST)   | W |   | 4 K x 18(WRITE_FIRST)  |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_ifm_1x8/u_com_dual_port_ram_0/RAM_reg                  | 8 K x 8(READ_FIRST)    | W |   | 8 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_ifm_1x8/u_com_dual_port_ram_1/RAM_reg                  | 8 K x 8(READ_FIRST)    | W |   | 8 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_ifm_1x8/u_com_dual_port_ram_2/RAM_reg                  | 8 K x 8(READ_FIRST)    | W |   | 8 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_ifm_1x8/u_com_dual_port_ram_3/RAM_reg                  | 8 K x 8(READ_FIRST)    | W |   | 8 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_ifm_1x8/u_com_dual_port_ram_4/RAM_reg                  | 8 K x 8(READ_FIRST)    | W |   | 8 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_ifm_1x8/u_com_dual_port_ram_5/RAM_reg                  | 8 K x 8(READ_FIRST)    | W |   | 8 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_ifm_1x8/u_com_dual_port_ram_6/RAM_reg                  | 8 K x 8(READ_FIRST)    | W |   | 8 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_ifm_1x8/u_com_dual_port_ram_7/RAM_reg                  | 8 K x 8(READ_FIRST)    | W |   | 8 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_ofm/u_com_simple_dual_port_ram/RAM_reg                 | 4 K x 64(READ_FIRST)   | W |   | 4 K x 64(WRITE_FIRST)  |   | R | Port A and B     | 1      | 7      | 4,2,1,1         | 
2default:defaulth px? 
?
%s*synth2?
?+-------------------+-----------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+

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
?
%s*synth2?
?+-------------------+----------------------------------------------------------------------------------+----------------+----------------------+----------------------------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name        | RTL Object                                                                       | Inference      | Size (Depth x Width) | Primitives                 | 
2default:defaulth px? 
?
%s*synth2?
?+-------------------+----------------------------------------------------------------------------------+----------------+----------------------+----------------------------+
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_bias/u_com_simple_dual_port_ram_0/RAM_reg                               | User Attribute | 128 x 18             | RAM64M8 x 6	               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_bias/u_com_simple_dual_port_ram_1/RAM_reg                               | User Attribute | 128 x 18             | RAM64M8 x 6	               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_bias/u_com_simple_dual_port_ram_2/RAM_reg                               | User Attribute | 128 x 18             | RAM64M8 x 6	               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_bias/u_com_simple_dual_port_ram_3/RAM_reg                               | User Attribute | 128 x 18             | RAM64M8 x 6	               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_bias/u_com_simple_dual_port_ram_4/RAM_reg                               | User Attribute | 128 x 18             | RAM64M8 x 6	               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_bias/u_com_simple_dual_port_ram_5/RAM_reg                               | User Attribute | 128 x 18             | RAM64M8 x 6	               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_bias/u_com_simple_dual_port_ram_6/RAM_reg                               | User Attribute | 128 x 18             | RAM64M8 x 6	               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_bias/u_com_simple_dual_port_ram_7/RAM_reg                               | User Attribute | 128 x 18             | RAM64M8 x 6	               | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_0/u_com_simple_dual_port_ram_0/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_0/u_com_simple_dual_port_ram_1/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_0/u_com_simple_dual_port_ram_2/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_0/u_com_simple_dual_port_ram_3/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_0/u_com_simple_dual_port_ram_4/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_0/u_com_simple_dual_port_ram_5/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_0/u_com_simple_dual_port_ram_6/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_0/u_com_simple_dual_port_ram_7/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_1/u_com_simple_dual_port_ram_0/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_1/u_com_simple_dual_port_ram_1/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_1/u_com_simple_dual_port_ram_2/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_1/u_com_simple_dual_port_ram_3/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_1/u_com_simple_dual_port_ram_4/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_1/u_com_simple_dual_port_ram_5/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_1/u_com_simple_dual_port_ram_6/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_1/u_com_simple_dual_port_ram_7/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_2/u_com_simple_dual_port_ram_0/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_2/u_com_simple_dual_port_ram_1/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_2/u_com_simple_dual_port_ram_2/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_2/u_com_simple_dual_port_ram_3/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_2/u_com_simple_dual_port_ram_4/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_2/u_com_simple_dual_port_ram_5/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_2/u_com_simple_dual_port_ram_6/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_2/u_com_simple_dual_port_ram_7/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_3/u_com_simple_dual_port_ram_0/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_3/u_com_simple_dual_port_ram_1/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_3/u_com_simple_dual_port_ram_2/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_3/u_com_simple_dual_port_ram_3/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_3/u_com_simple_dual_port_ram_4/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_3/u_com_simple_dual_port_ram_5/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_3/u_com_simple_dual_port_ram_6/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_3/u_com_simple_dual_port_ram_7/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_4/u_com_simple_dual_port_ram_0/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_4/u_com_simple_dual_port_ram_1/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_4/u_com_simple_dual_port_ram_2/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_4/u_com_simple_dual_port_ram_3/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_4/u_com_simple_dual_port_ram_4/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_4/u_com_simple_dual_port_ram_5/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_4/u_com_simple_dual_port_ram_6/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_4/u_com_simple_dual_port_ram_7/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_5/u_com_simple_dual_port_ram_0/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_5/u_com_simple_dual_port_ram_1/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_5/u_com_simple_dual_port_ram_2/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_5/u_com_simple_dual_port_ram_3/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_5/u_com_simple_dual_port_ram_4/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_5/u_com_simple_dual_port_ram_5/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_5/u_com_simple_dual_port_ram_6/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_5/u_com_simple_dual_port_ram_7/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_6/u_com_simple_dual_port_ram_0/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_6/u_com_simple_dual_port_ram_1/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_6/u_com_simple_dual_port_ram_2/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_6/u_com_simple_dual_port_ram_3/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_6/u_com_simple_dual_port_ram_4/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_6/u_com_simple_dual_port_ram_5/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_6/u_com_simple_dual_port_ram_6/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_6/u_com_simple_dual_port_ram_7/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_7/u_com_simple_dual_port_ram_0/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_7/u_com_simple_dual_port_ram_1/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_7/u_com_simple_dual_port_ram_2/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_7/u_com_simple_dual_port_ram_3/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_7/u_com_simple_dual_port_ram_4/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_7/u_com_simple_dual_port_ram_5/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_7/u_com_simple_dual_port_ram_6/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_7/u_com_simple_dual_port_ram_7/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | inst_module_leaky_relu_1x8/u_com_simple_dual_port_ram_0/RAM_reg                  | User Attribute | 256 x 8              | RAM64X1D x 4	RAM64M8 x 4	  | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | inst_module_leaky_relu_1x8/u_com_simple_dual_port_ram_1/RAM_reg                  | User Attribute | 256 x 8              | RAM64X1D x 4	RAM64M8 x 4	  | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | inst_module_leaky_relu_1x8/u_com_simple_dual_port_ram_2/RAM_reg                  | User Attribute | 256 x 8              | RAM64X1D x 4	RAM64M8 x 4	  | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | inst_module_leaky_relu_1x8/u_com_simple_dual_port_ram_3/RAM_reg                  | User Attribute | 256 x 8              | RAM64X1D x 4	RAM64M8 x 4	  | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | inst_module_leaky_relu_1x8/u_com_simple_dual_port_ram_4/RAM_reg                  | User Attribute | 256 x 8              | RAM64X1D x 4	RAM64M8 x 4	  | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | inst_module_leaky_relu_1x8/u_com_simple_dual_port_ram_5/RAM_reg                  | User Attribute | 256 x 8              | RAM64X1D x 4	RAM64M8 x 4	  | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | inst_module_leaky_relu_1x8/u_com_simple_dual_port_ram_6/RAM_reg                  | User Attribute | 256 x 8              | RAM64X1D x 4	RAM64M8 x 4	  | 
2default:defaulth px? 
?
%s*synth2?
?|cam_Accel_Conv_0_0 | inst_module_leaky_relu_1x8/u_com_simple_dual_port_ram_7/RAM_reg                  | User Attribute | 256 x 8              | RAM64X1D x 4	RAM64M8 x 4	  | 
2default:defaulth px? 
?
%s*synth2?
?+-------------------+----------------------------------------------------------------------------------+----------------+----------------------+----------------------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
^
%s*synth2F
2
DSP: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+---------------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name          | DSP Mapping    | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
?+---------------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_mult_int8_x2_dsp | ((D'+A2)*B'')' | 9      | 10     | -      | 27     | 37     | 1    | 2    | -    | 1    | 1     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_scale_mul        | (A2*B2)'       | 16     | 16     | -      | -      | 32     | 1    | 1    | -    | -    | -     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_scale_mul        | (A2*B2)'       | 16     | 16     | -      | -      | 32     | 1    | 1    | -    | -    | -     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_scale_mul        | (A2*B2)'       | 16     | 16     | -      | -      | 32     | 1    | 1    | -    | -    | -     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_scale_mul        | (A2*B2)'       | 16     | 16     | -      | -      | 32     | 1    | 1    | -    | -    | -     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_scale_mul        | (A2*B2)'       | 16     | 16     | -      | -      | 32     | 1    | 1    | -    | -    | -     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_scale_mul        | (A2*B2)'       | 16     | 16     | -      | -      | 32     | 1    | 1    | -    | -    | -     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_scale_mul        | (A2*B2)'       | 16     | 16     | -      | -      | 32     | 1    | 1    | -    | -    | -     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|cal_scale_mul        | (A2*B2)'       | 16     | 16     | -      | -      | 32     | 1    | 1    | -    | -    | -     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?+---------------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:04:30 ; elapsed = 00:05:14 . Memory (MB): peak = 2523.371 ; gain = 1062.312
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Timing Optimization : Time (s): cpu = 00:04:31 ; elapsed = 00:05:14 . Memory (MB): peak = 2524.066 ; gain = 1063.008
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
?
%s
*synth2?
?+-------------------+-----------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name        | RTL Object                                                      | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | Cascade Heights | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+-------------------+-----------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_module_acc_1x8/u_module_acc_0/u_com_dual_port_ram_ofm/RAM_reg | 4 K x 18(READ_FIRST)   | W |   | 4 K x 18(WRITE_FIRST)  |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_module_acc_1x8/u_module_acc_1/u_com_dual_port_ram_ofm/RAM_reg | 4 K x 18(READ_FIRST)   | W |   | 4 K x 18(WRITE_FIRST)  |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_module_acc_1x8/u_module_acc_2/u_com_dual_port_ram_ofm/RAM_reg | 4 K x 18(READ_FIRST)   | W |   | 4 K x 18(WRITE_FIRST)  |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_module_acc_1x8/u_module_acc_3/u_com_dual_port_ram_ofm/RAM_reg | 4 K x 18(READ_FIRST)   | W |   | 4 K x 18(WRITE_FIRST)  |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_module_acc_1x8/u_module_acc_4/u_com_dual_port_ram_ofm/RAM_reg | 4 K x 18(READ_FIRST)   | W |   | 4 K x 18(WRITE_FIRST)  |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_module_acc_1x8/u_module_acc_5/u_com_dual_port_ram_ofm/RAM_reg | 4 K x 18(READ_FIRST)   | W |   | 4 K x 18(WRITE_FIRST)  |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_module_acc_1x8/u_module_acc_6/u_com_dual_port_ram_ofm/RAM_reg | 4 K x 18(READ_FIRST)   | W |   | 4 K x 18(WRITE_FIRST)  |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_module_acc_1x8/u_module_acc_7/u_com_dual_port_ram_ofm/RAM_reg | 4 K x 18(READ_FIRST)   | W |   | 4 K x 18(WRITE_FIRST)  |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_ifm_1x8/u_com_dual_port_ram_0/RAM_reg                  | 8 K x 8(READ_FIRST)    | W |   | 8 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_ifm_1x8/u_com_dual_port_ram_1/RAM_reg                  | 8 K x 8(READ_FIRST)    | W |   | 8 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_ifm_1x8/u_com_dual_port_ram_2/RAM_reg                  | 8 K x 8(READ_FIRST)    | W |   | 8 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_ifm_1x8/u_com_dual_port_ram_3/RAM_reg                  | 8 K x 8(READ_FIRST)    | W |   | 8 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_ifm_1x8/u_com_dual_port_ram_4/RAM_reg                  | 8 K x 8(READ_FIRST)    | W |   | 8 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_ifm_1x8/u_com_dual_port_ram_5/RAM_reg                  | 8 K x 8(READ_FIRST)    | W |   | 8 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_ifm_1x8/u_com_dual_port_ram_6/RAM_reg                  | 8 K x 8(READ_FIRST)    | W |   | 8 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_ifm_1x8/u_com_dual_port_ram_7/RAM_reg                  | 8 K x 8(READ_FIRST)    | W |   | 8 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 0      | 2      | 2               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_ofm/u_com_simple_dual_port_ram/RAM_reg                 | 4 K x 64(READ_FIRST)   | W |   | 4 K x 64(WRITE_FIRST)  |   | R | Port A and B     | 1      | 7      | 4,2,1,1         | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+-------------------+-----------------------------------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+

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
?
%s
*synth2?
?+-------------------+----------------------------------------------------------------------------------+----------------+----------------------+----------------------------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name        | RTL Object                                                                       | Inference      | Size (Depth x Width) | Primitives                 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+-------------------+----------------------------------------------------------------------------------+----------------+----------------------+----------------------------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_bias/u_com_simple_dual_port_ram_0/RAM_reg                               | User Attribute | 128 x 18             | RAM64M8 x 6	               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_bias/u_com_simple_dual_port_ram_1/RAM_reg                               | User Attribute | 128 x 18             | RAM64M8 x 6	               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_bias/u_com_simple_dual_port_ram_2/RAM_reg                               | User Attribute | 128 x 18             | RAM64M8 x 6	               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_bias/u_com_simple_dual_port_ram_3/RAM_reg                               | User Attribute | 128 x 18             | RAM64M8 x 6	               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_bias/u_com_simple_dual_port_ram_4/RAM_reg                               | User Attribute | 128 x 18             | RAM64M8 x 6	               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_bias/u_com_simple_dual_port_ram_5/RAM_reg                               | User Attribute | 128 x 18             | RAM64M8 x 6	               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_bias/u_com_simple_dual_port_ram_6/RAM_reg                               | User Attribute | 128 x 18             | RAM64M8 x 6	               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_bias/u_com_simple_dual_port_ram_7/RAM_reg                               | User Attribute | 128 x 18             | RAM64M8 x 6	               | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_0/u_com_simple_dual_port_ram_0/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_0/u_com_simple_dual_port_ram_1/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_0/u_com_simple_dual_port_ram_2/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_0/u_com_simple_dual_port_ram_3/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_0/u_com_simple_dual_port_ram_4/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_0/u_com_simple_dual_port_ram_5/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_0/u_com_simple_dual_port_ram_6/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_0/u_com_simple_dual_port_ram_7/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_1/u_com_simple_dual_port_ram_0/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_1/u_com_simple_dual_port_ram_1/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_1/u_com_simple_dual_port_ram_2/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_1/u_com_simple_dual_port_ram_3/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_1/u_com_simple_dual_port_ram_4/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_1/u_com_simple_dual_port_ram_5/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_1/u_com_simple_dual_port_ram_6/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_1/u_com_simple_dual_port_ram_7/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_2/u_com_simple_dual_port_ram_0/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_2/u_com_simple_dual_port_ram_1/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_2/u_com_simple_dual_port_ram_2/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_2/u_com_simple_dual_port_ram_3/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_2/u_com_simple_dual_port_ram_4/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_2/u_com_simple_dual_port_ram_5/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_2/u_com_simple_dual_port_ram_6/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_2/u_com_simple_dual_port_ram_7/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_3/u_com_simple_dual_port_ram_0/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_3/u_com_simple_dual_port_ram_1/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_3/u_com_simple_dual_port_ram_2/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_3/u_com_simple_dual_port_ram_3/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_3/u_com_simple_dual_port_ram_4/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_3/u_com_simple_dual_port_ram_5/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_3/u_com_simple_dual_port_ram_6/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_3/u_com_simple_dual_port_ram_7/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_4/u_com_simple_dual_port_ram_0/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_4/u_com_simple_dual_port_ram_1/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_4/u_com_simple_dual_port_ram_2/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_4/u_com_simple_dual_port_ram_3/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_4/u_com_simple_dual_port_ram_4/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_4/u_com_simple_dual_port_ram_5/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_4/u_com_simple_dual_port_ram_6/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_4/u_com_simple_dual_port_ram_7/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_5/u_com_simple_dual_port_ram_0/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_5/u_com_simple_dual_port_ram_1/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_5/u_com_simple_dual_port_ram_2/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_5/u_com_simple_dual_port_ram_3/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_5/u_com_simple_dual_port_ram_4/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_5/u_com_simple_dual_port_ram_5/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_5/u_com_simple_dual_port_ram_6/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_5/u_com_simple_dual_port_ram_7/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_6/u_com_simple_dual_port_ram_0/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_6/u_com_simple_dual_port_ram_1/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_6/u_com_simple_dual_port_ram_2/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_6/u_com_simple_dual_port_ram_3/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_6/u_com_simple_dual_port_ram_4/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_6/u_com_simple_dual_port_ram_5/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_6/u_com_simple_dual_port_ram_6/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_6/u_com_simple_dual_port_ram_7/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_7/u_com_simple_dual_port_ram_0/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_7/u_com_simple_dual_port_ram_1/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_7/u_com_simple_dual_port_ram_2/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_7/u_com_simple_dual_port_ram_3/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_7/u_com_simple_dual_port_ram_4/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_7/u_com_simple_dual_port_ram_5/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_7/u_com_simple_dual_port_ram_6/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | u_buffer_weight_1x8x8/u_buffer_weight_1x8_7/u_com_simple_dual_port_ram_7/RAM_reg | User Attribute | 128 x 72             | RAM64X1D x 4	RAM64M8 x 20	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | inst_module_leaky_relu_1x8/u_com_simple_dual_port_ram_0/RAM_reg                  | User Attribute | 256 x 8              | RAM64X1D x 4	RAM64M8 x 4	  | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | inst_module_leaky_relu_1x8/u_com_simple_dual_port_ram_1/RAM_reg                  | User Attribute | 256 x 8              | RAM64X1D x 4	RAM64M8 x 4	  | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | inst_module_leaky_relu_1x8/u_com_simple_dual_port_ram_2/RAM_reg                  | User Attribute | 256 x 8              | RAM64X1D x 4	RAM64M8 x 4	  | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | inst_module_leaky_relu_1x8/u_com_simple_dual_port_ram_3/RAM_reg                  | User Attribute | 256 x 8              | RAM64X1D x 4	RAM64M8 x 4	  | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | inst_module_leaky_relu_1x8/u_com_simple_dual_port_ram_4/RAM_reg                  | User Attribute | 256 x 8              | RAM64X1D x 4	RAM64M8 x 4	  | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | inst_module_leaky_relu_1x8/u_com_simple_dual_port_ram_5/RAM_reg                  | User Attribute | 256 x 8              | RAM64X1D x 4	RAM64M8 x 4	  | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | inst_module_leaky_relu_1x8/u_com_simple_dual_port_ram_6/RAM_reg                  | User Attribute | 256 x 8              | RAM64X1D x 4	RAM64M8 x 4	  | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0 | inst_module_leaky_relu_1x8/u_com_simple_dual_port_ram_7/RAM_reg                  | User Attribute | 256 x 8              | RAM64X1D x 4	RAM64M8 x 4	  | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+-------------------+----------------------------------------------------------------------------------+----------------+----------------------+----------------------------+

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
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2k
Winst/u_accel_top/u_module_acc_1x8/u_module_acc_0/u_com_dual_port_ram_ofm/RAM_reg_bram_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2k
Winst/u_accel_top/u_module_acc_1x8/u_module_acc_1/u_com_dual_port_ram_ofm/RAM_reg_bram_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2k
Winst/u_accel_top/u_module_acc_1x8/u_module_acc_2/u_com_dual_port_ram_ofm/RAM_reg_bram_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2k
Winst/u_accel_top/u_module_acc_1x8/u_module_acc_3/u_com_dual_port_ram_ofm/RAM_reg_bram_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2k
Winst/u_accel_top/u_module_acc_1x8/u_module_acc_4/u_com_dual_port_ram_ofm/RAM_reg_bram_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2k
Winst/u_accel_top/u_module_acc_1x8/u_module_acc_5/u_com_dual_port_ram_ofm/RAM_reg_bram_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2k
Winst/u_accel_top/u_module_acc_1x8/u_module_acc_6/u_com_dual_port_ram_ofm/RAM_reg_bram_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2k
Winst/u_accel_top/u_module_acc_1x8/u_module_acc_7/u_com_dual_port_ram_ofm/RAM_reg_bram_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2Z
Finst/u_accel_top/u_buffer_ifm_1x8/u_com_dual_port_ram_0/RAM_reg_bram_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2Z
Finst/u_accel_top/u_buffer_ifm_1x8/u_com_dual_port_ram_1/RAM_reg_bram_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2Z
Finst/u_accel_top/u_buffer_ifm_1x8/u_com_dual_port_ram_2/RAM_reg_bram_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2Z
Finst/u_accel_top/u_buffer_ifm_1x8/u_com_dual_port_ram_3/RAM_reg_bram_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2Z
Finst/u_accel_top/u_buffer_ifm_1x8/u_com_dual_port_ram_4/RAM_reg_bram_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2Z
Finst/u_accel_top/u_buffer_ifm_1x8/u_com_dual_port_ram_5/RAM_reg_bram_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2Z
Finst/u_accel_top/u_buffer_ifm_1x8/u_com_dual_port_ram_6/RAM_reg_bram_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2Z
Finst/u_accel_top/u_buffer_ifm_1x8/u_com_dual_port_ram_7/RAM_reg_bram_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2[
Ginst/u_accel_top/u_buffer_ofm/u_com_simple_dual_port_ram/RAM_reg_bram_32default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2[
Ginst/u_accel_top/u_buffer_ofm/u_com_simple_dual_port_ram/RAM_reg_bram_52default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2[
Ginst/u_accel_top/u_buffer_ofm/u_com_simple_dual_port_ram/RAM_reg_bram_62default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2[
Ginst/u_accel_top/u_buffer_ofm/u_com_simple_dual_port_ram/RAM_reg_bram_72default:default2
Block2default:defaultZ8-7052h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Technology Mapping : Time (s): cpu = 00:04:54 ; elapsed = 00:05:39 . Memory (MB): peak = 2599.109 ; gain = 1138.051
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
wFinished IO Insertion : Time (s): cpu = 00:05:14 ; elapsed = 00:06:01 . Memory (MB): peak = 2629.809 ; gain = 1168.750
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:05:14 ; elapsed = 00:06:02 . Memory (MB): peak = 2629.809 ; gain = 1168.750
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:05:38 ; elapsed = 00:06:27 . Memory (MB): peak = 2629.809 ; gain = 1168.750
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:05:40 ; elapsed = 00:06:28 . Memory (MB): peak = 2629.809 ; gain = 1168.750
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:05:42 ; elapsed = 00:06:30 . Memory (MB): peak = 2629.809 ; gain = 1168.750
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:05:43 ; elapsed = 00:06:32 . Memory (MB): peak = 2629.809 ; gain = 1168.750
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
?
%s
*synth2?
?+-----------------------+--------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name            | RTL Name                                                                                                           | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+-----------------------+--------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|linebuffer_3x3_type_x6 | u_com_shift_reg_line_1_segment_1/genblk1[15].sreg_reg[15][7]                                                       | 15     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|linebuffer_3x3_type_x6 | u_com_shift_reg_line_1_segment_2/genblk1[13].sreg_reg[13][7]                                                       | 13     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|linebuffer_3x3_type_x6 | u_com_shift_reg_line_1_segment_3/genblk1[26].sreg_reg[26][7]                                                       | 26     | 8     | NO           | YES                | YES               | 0      | 8       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|linebuffer_3x3_type_x6 | u_com_shift_reg_line_1_segment_4/genblk1[52].sreg_reg[52][7]                                                       | 52     | 8     | NO           | YES                | YES               | 0      | 16      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|linebuffer_3x3_type_x6 | u_com_shift_reg_line_1_segment_5/genblk1[104].sreg_reg[104][7]                                                     | 104    | 8     | NO           | YES                | YES               | 0      | 32      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|linebuffer_3x3_type_x6 | u_com_shift_reg_line_1_segment_6/genblk1[208].sreg_reg[208][7]                                                     | 208    | 8     | NO           | YES                | YES               | 0      | 56      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|linebuffer_3x3_type_x6 | u_com_shift_reg_line_2_segment_1/genblk1[15].sreg_reg[15][7]                                                       | 15     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|linebuffer_3x3_type_x6 | u_com_shift_reg_line_2_segment_2/genblk1[13].sreg_reg[13][7]                                                       | 13     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|linebuffer_3x3_type_x6 | u_com_shift_reg_line_2_segment_3/genblk1[26].sreg_reg[26][7]                                                       | 26     | 8     | NO           | YES                | YES               | 0      | 8       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|linebuffer_3x3_type_x6 | u_com_shift_reg_line_2_segment_4/genblk1[52].sreg_reg[52][7]                                                       | 52     | 8     | NO           | YES                | YES               | 0      | 16      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|linebuffer_3x3_type_x6 | u_com_shift_reg_line_2_segment_5/genblk1[104].sreg_reg[104][7]                                                     | 104    | 8     | NO           | YES                | YES               | 0      | 32      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|linebuffer_3x3_type_x6 | u_com_shift_reg_line_2_segment_6/genblk1[208].sreg_reg[208][7]                                                     | 208    | 8     | NO           | YES                | YES               | 0      | 56      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_0/u_com_shift_reg_line_1_segment_1/genblk1[15].sreg_reg[15][7]   | 15     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_0/u_com_shift_reg_line_1_segment_2/genblk1[13].sreg_reg[13][7]   | 13     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_0/u_com_shift_reg_line_1_segment_3/genblk1[26].sreg_reg[26][7]   | 26     | 8     | NO           | YES                | YES               | 0      | 8       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_0/u_com_shift_reg_line_1_segment_4/genblk1[52].sreg_reg[52][7]   | 52     | 8     | NO           | YES                | YES               | 0      | 16      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_0/u_com_shift_reg_line_1_segment_5/genblk1[104].sreg_reg[104][7] | 104    | 8     | NO           | YES                | YES               | 0      | 32      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_0/u_com_shift_reg_line_1_segment_6/genblk1[208].sreg_reg[208][7] | 208    | 8     | NO           | YES                | YES               | 0      | 56      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_1/u_com_shift_reg_line_1_segment_1/genblk1[15].sreg_reg[15][7]   | 15     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_1/u_com_shift_reg_line_1_segment_2/genblk1[13].sreg_reg[13][7]   | 13     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_1/u_com_shift_reg_line_1_segment_3/genblk1[26].sreg_reg[26][7]   | 26     | 8     | NO           | YES                | YES               | 0      | 8       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_1/u_com_shift_reg_line_1_segment_4/genblk1[52].sreg_reg[52][7]   | 52     | 8     | NO           | YES                | YES               | 0      | 16      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_1/u_com_shift_reg_line_1_segment_5/genblk1[104].sreg_reg[104][7] | 104    | 8     | NO           | YES                | YES               | 0      | 32      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_1/u_com_shift_reg_line_1_segment_6/genblk1[208].sreg_reg[208][7] | 208    | 8     | NO           | YES                | YES               | 0      | 56      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_2/u_com_shift_reg_line_1_segment_1/genblk1[15].sreg_reg[15][7]   | 15     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_2/u_com_shift_reg_line_1_segment_2/genblk1[13].sreg_reg[13][7]   | 13     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_2/u_com_shift_reg_line_1_segment_3/genblk1[26].sreg_reg[26][7]   | 26     | 8     | NO           | YES                | YES               | 0      | 8       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_2/u_com_shift_reg_line_1_segment_4/genblk1[52].sreg_reg[52][7]   | 52     | 8     | NO           | YES                | YES               | 0      | 16      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_2/u_com_shift_reg_line_1_segment_5/genblk1[104].sreg_reg[104][7] | 104    | 8     | NO           | YES                | YES               | 0      | 32      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_2/u_com_shift_reg_line_1_segment_6/genblk1[208].sreg_reg[208][7] | 208    | 8     | NO           | YES                | YES               | 0      | 56      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_3/u_com_shift_reg_line_1_segment_1/genblk1[15].sreg_reg[15][7]   | 15     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_3/u_com_shift_reg_line_1_segment_2/genblk1[13].sreg_reg[13][7]   | 13     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_3/u_com_shift_reg_line_1_segment_3/genblk1[26].sreg_reg[26][7]   | 26     | 8     | NO           | YES                | YES               | 0      | 8       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_3/u_com_shift_reg_line_1_segment_4/genblk1[52].sreg_reg[52][7]   | 52     | 8     | NO           | YES                | YES               | 0      | 16      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_3/u_com_shift_reg_line_1_segment_5/genblk1[104].sreg_reg[104][7] | 104    | 8     | NO           | YES                | YES               | 0      | 32      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_3/u_com_shift_reg_line_1_segment_6/genblk1[208].sreg_reg[208][7] | 208    | 8     | NO           | YES                | YES               | 0      | 56      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_4/u_com_shift_reg_line_1_segment_1/genblk1[15].sreg_reg[15][7]   | 15     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_4/u_com_shift_reg_line_1_segment_2/genblk1[13].sreg_reg[13][7]   | 13     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_4/u_com_shift_reg_line_1_segment_3/genblk1[26].sreg_reg[26][7]   | 26     | 8     | NO           | YES                | YES               | 0      | 8       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_4/u_com_shift_reg_line_1_segment_4/genblk1[52].sreg_reg[52][7]   | 52     | 8     | NO           | YES                | YES               | 0      | 16      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_4/u_com_shift_reg_line_1_segment_5/genblk1[104].sreg_reg[104][7] | 104    | 8     | NO           | YES                | YES               | 0      | 32      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_4/u_com_shift_reg_line_1_segment_6/genblk1[208].sreg_reg[208][7] | 208    | 8     | NO           | YES                | YES               | 0      | 56      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_5/u_com_shift_reg_line_1_segment_1/genblk1[15].sreg_reg[15][7]   | 15     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_5/u_com_shift_reg_line_1_segment_2/genblk1[13].sreg_reg[13][7]   | 13     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_5/u_com_shift_reg_line_1_segment_3/genblk1[26].sreg_reg[26][7]   | 26     | 8     | NO           | YES                | YES               | 0      | 8       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_5/u_com_shift_reg_line_1_segment_4/genblk1[52].sreg_reg[52][7]   | 52     | 8     | NO           | YES                | YES               | 0      | 16      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_5/u_com_shift_reg_line_1_segment_5/genblk1[104].sreg_reg[104][7] | 104    | 8     | NO           | YES                | YES               | 0      | 32      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_5/u_com_shift_reg_line_1_segment_6/genblk1[208].sreg_reg[208][7] | 208    | 8     | NO           | YES                | YES               | 0      | 56      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_6/u_com_shift_reg_line_1_segment_1/genblk1[15].sreg_reg[15][7]   | 15     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_6/u_com_shift_reg_line_1_segment_2/genblk1[13].sreg_reg[13][7]   | 13     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_6/u_com_shift_reg_line_1_segment_3/genblk1[26].sreg_reg[26][7]   | 26     | 8     | NO           | YES                | YES               | 0      | 8       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_6/u_com_shift_reg_line_1_segment_4/genblk1[52].sreg_reg[52][7]   | 52     | 8     | NO           | YES                | YES               | 0      | 16      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_6/u_com_shift_reg_line_1_segment_5/genblk1[104].sreg_reg[104][7] | 104    | 8     | NO           | YES                | YES               | 0      | 32      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_6/u_com_shift_reg_line_1_segment_6/genblk1[208].sreg_reg[208][7] | 208    | 8     | NO           | YES                | YES               | 0      | 56      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_7/u_com_shift_reg_line_1_segment_1/genblk1[15].sreg_reg[15][7]   | 15     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_7/u_com_shift_reg_line_1_segment_2/genblk1[13].sreg_reg[13][7]   | 13     | 8     | NO           | YES                | YES               | 8      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_7/u_com_shift_reg_line_1_segment_3/genblk1[26].sreg_reg[26][7]   | 26     | 8     | NO           | YES                | YES               | 0      | 8       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_7/u_com_shift_reg_line_1_segment_4/genblk1[52].sreg_reg[52][7]   | 52     | 8     | NO           | YES                | YES               | 0      | 16      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_7/u_com_shift_reg_line_1_segment_5/genblk1[104].sreg_reg[104][7] | 104    | 8     | NO           | YES                | YES               | 0      | 32      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|accel_top__GCB0        | u_linebuffer_2x2_collect/u_linebuffer_2x2_type_x4_7/u_com_shift_reg_line_1_segment_6/genblk1[208].sreg_reg[208][7] | 208    | 8     | NO           | YES                | YES               | 0      | 56      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|Accel_Conv__GC0        | u_global_data_beat/u_com_shift_reg_2/genblk1[9].sreg_reg[9][0]                                                     | 10     | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|Accel_Conv__GC0        | u_global_data_beat/u_com_shift_reg_3/genblk1[18].sreg_reg[18][0]                                                   | 9      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|Accel_Conv__GC0        | u_global_data_beat/u_com_shift_reg_4/genblk1[2].sreg_reg[2][11]                                                    | 2      | 12    | NO           | NO                 | YES               | 12     | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|Accel_Conv__GC0        | u_global_data_beat/u_com_shift_reg_5/genblk1[7].sreg_reg[7][11]                                                    | 7      | 12    | NO           | NO                 | YES               | 12     | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|Accel_Conv__GC0        | u_global_data_beat/u_com_shift_reg_6/genblk1[10].sreg_reg[10][0]                                                   | 11     | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0     | inst/u_global_data_beat/pool_valid_d3_s2_reg                                                                       | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0     | inst/u_global_data_beat/pool_valid_d4_s1_reg                                                                       | 4      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cam_Accel_Conv_0_0     | inst/u_global_data_beat/pool_zero_d3_s1_reg                                                                        | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+-----------------------+--------------------------------------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

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
M
%s*synth25
!+------+----------------+------+
2default:defaulth px? 
M
%s*synth25
!|      |Cell            |Count |
2default:defaulth px? 
M
%s*synth25
!+------+----------------+------+
2default:defaulth px? 
M
%s*synth25
!|1     |CARRY8          |  1564|
2default:defaulth px? 
M
%s*synth25
!|2     |DSP_ALU         |   296|
2default:defaulth px? 
M
%s*synth25
!|3     |DSP_A_B_DATA    |   296|
2default:defaulth px? 
M
%s*synth25
!|5     |DSP_C_DATA      |   296|
2default:defaulth px? 
M
%s*synth25
!|6     |DSP_MULTIPLIER  |   296|
2default:defaulth px? 
M
%s*synth25
!|8     |DSP_M_DATA      |   296|
2default:defaulth px? 
M
%s*synth25
!|9     |DSP_OUTPUT      |   296|
2default:defaulth px? 
M
%s*synth25
!|10    |DSP_PREADD      |   296|
2default:defaulth px? 
M
%s*synth25
!|11    |DSP_PREADD_DATA |   296|
2default:defaulth px? 
M
%s*synth25
!|13    |LUT1            |    58|
2default:defaulth px? 
M
%s*synth25
!|14    |LUT2            |   668|
2default:defaulth px? 
M
%s*synth25
!|15    |LUT3            | 10365|
2default:defaulth px? 
M
%s*synth25
!|16    |LUT4            |  5045|
2default:defaulth px? 
M
%s*synth25
!|17    |LUT5            |   460|
2default:defaulth px? 
M
%s*synth25
!|18    |LUT6            |  1177|
2default:defaulth px? 
M
%s*synth25
!|19    |RAM64M8         |  1360|
2default:defaulth px? 
M
%s*synth25
!|20    |RAM64X1D        |   288|
2default:defaulth px? 
M
%s*synth25
!|21    |RAMB18E2        |     1|
2default:defaulth px? 
M
%s*synth25
!|22    |RAMB36E2        |    39|
2default:defaulth px? 
M
%s*synth25
!|30    |SRL16E          |   414|
2default:defaulth px? 
M
%s*synth25
!|31    |SRLC32E         |  2688|
2default:defaulth px? 
M
%s*synth25
!|32    |FDRE            | 14964|
2default:defaulth px? 
M
%s*synth25
!|33    |FDSE            |   243|
2default:defaulth px? 
M
%s*synth25
!+------+----------------+------+
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:05:43 ; elapsed = 00:06:32 . Memory (MB): peak = 2629.809 ; gain = 1168.750
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
Synthesis Optimization Runtime : Time (s): cpu = 00:04:08 ; elapsed = 00:05:17 . Memory (MB): peak = 2629.809 ; gain = 753.988
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:05:44 ; elapsed = 00:06:32 . Memory (MB): peak = 2629.809 ; gain = 1168.750
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
00:00:042default:default2
00:00:042default:default2
2637.6482default:default2
0.0002default:defaultZ17-268h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
35082default:defaultZ29-17h px? 
k
2Unisim Transformation completed in %s CPU seconds
28*netlist2
182default:defaultZ29-28h px? 
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
00:00:00.0412default:default2
2878.4062default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 1944 instances were transformed.
  DSP48E2 => DSP48E2 (DSP_ALU, DSP_A_B_DATA, DSP_C_DATA, DSP_MULTIPLIER, DSP_M_DATA, DSP_OUTPUT, DSP_PREADD, DSP_PREADD_DATA): 296 instances
  RAM64M8 => RAM64M8 (RAMD64E(x8)): 1360 instances
  RAM64X1D => RAM64X1D (RAMD64E(x2)): 288 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2302default:default2
82default:default2
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
00:07:212default:default2
00:08:372default:default2
2878.4062default:default2
1797.8162default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2W
CD:/base/base.runs/cam_Accel_Conv_0_0_synth_1/cam_Accel_Conv_0_0.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:312default:default2
00:00:242default:default2
2878.4062default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2#
write_verilog: 2default:default2
00:00:102default:default2
00:00:102default:default2
2878.4062default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
write_vhdl: 2default:default2
00:00:212default:default2
00:00:252default:default2
2878.4062default:default2
0.0002default:defaultZ17-268h px? 
?
'%s' is deprecated. %s
384*common2#
use_project_ipc2default:default2A
-This option is deprecated and no longer used.2default:defaultZ17-576h px? 
S
Renamed %s cell refs.
330*coretcl2
10972default:defaultZ2-1174h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2W
CD:/base/base.runs/cam_Accel_Conv_0_0_synth_1/cam_Accel_Conv_0_0.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:362default:default2
00:00:292default:default2
2878.4062default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
zExecuting : report_utilization -file cam_Accel_Conv_0_0_utilization_synth.rpt -pb cam_Accel_Conv_0_0_utilization_synth.pb
2default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2#
write_verilog: 2default:default2
00:00:092default:default2
00:00:112default:default2
2878.4062default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
write_vhdl: 2default:default2
00:00:222default:default2
00:00:232default:default2
2878.4062default:default2
0.0002default:defaultZ17-268h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Jul 21 00:07:40 20212default:defaultZ17-206h px? 


End Record