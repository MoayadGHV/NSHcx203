
z
Command: %s
53*	vivadotcl2I
5synth_design -top digiLockFPGA -part xc7a100tcsg324-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:02 . Memory (MB): peak = 1777.707 ; gain = 155.719 ; free physical = 22120 ; free virtual = 34762
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2 
digiLockFPGA2default:default2
 2default:default2k
U/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/sources_1/new/digiLock.sv2default:default2
42default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
digitalLock2default:default2
 2default:default2n
X/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/sources_1/new/digitalLock.sv2default:default2
12default:default8@Z8-6157h px� 
J
%s
*synth22
	Parameter C bound to: 2'b00 
2default:defaulth p
x
� 
J
%s
*synth22
	Parameter O bound to: 2'b01 
2default:defaulth p
x
� 
J
%s
*synth22
	Parameter F bound to: 2'b10 
2default:defaulth p
x
� 
J
%s
*synth22
	Parameter E bound to: 2'b11 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
nbitctr2default:default2
 2default:default2`
J/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/new/nbitctr.sv2default:default2
232default:default8@Z8-6157h px� 
�
%s
*synth2r
^	Parameter N bound to: 64'sb0000000000000000000000000000000000000101111101011110000100000000 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
nbitctr2default:default2
 2default:default2
12default:default2
12default:default2`
J/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/new/nbitctr.sv2default:default2
232default:default8@Z8-6155h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
rlCtr2default:default2
nbitctr2default:default2
42default:default2
32default:default2n
X/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/sources_1/new/digitalLock.sv2default:default2
922default:default8@Z8-7023h px� 
�
9always_comb on '%s' did not result in combinational logic87*oasys2
pwd_reg2default:default2n
X/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/sources_1/new/digitalLock.sv2default:default2
652default:default8@Z8-87h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
digitalLock2default:default2
 2default:default2
22default:default2
12default:default2n
X/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/sources_1/new/digitalLock.sv2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2&
sev_seg_controller2default:default2
 2default:default2�
y/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/sources_1/imports/sources_1/imports/src/sev_seg_controller.sv2default:default2
22default:default8@Z8-6157h px� 
c
%s
*synth2K
7	Parameter display_speed bound to: 20 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2%
seven_seg_decoder2default:default2
 2default:default2�
v/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/sources_1/imports/sources_1/imports/src/sev_seg_decoder.sv2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
seven_seg_decoder2default:default2
 2default:default2
32default:default2
12default:default2�
v/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/sources_1/imports/sources_1/imports/src/sev_seg_decoder.sv2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
decoder2default:default2
 2default:default2�
n/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/sources_1/imports/sources_1/imports/src/decoder.sv2default:default2
12default:default8@Z8-6157h px� 
V
%s
*synth2>
*	Parameter n bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
decoder2default:default2
 2default:default2
42default:default2
12default:default2�
n/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/sources_1/imports/sources_1/imports/src/decoder.sv2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
counter_n_bit2default:default2
 2default:default2�
t/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/sources_1/imports/sources_1/imports/src/counter_n_bit.sv2default:default2
12default:default8@Z8-6157h px� 
W
%s
*synth2?
+	Parameter n bound to: 20 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
counter_n_bit2default:default2
 2default:default2
52default:default2
12default:default2�
t/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/sources_1/imports/sources_1/imports/src/counter_n_bit.sv2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
sev_seg_controller2default:default2
 2default:default2
62default:default2
12default:default2�
y/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/sources_1/imports/sources_1/imports/src/sev_seg_controller.sv2default:default2
22default:default8@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
LED2default:default2 
digiLockFPGA2default:default2k
U/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/sources_1/new/digiLock.sv2default:default2
82default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
missCounter2default:default2 
digiLockFPGA2default:default2k
U/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/sources_1/new/digiLock.sv2default:default2
222default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
counter2default:default2 
digiLockFPGA2default:default2k
U/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/sources_1/new/digiLock.sv2default:default2
212default:default8@Z8-3848h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
digiLockFPGA2default:default2
 2default:default2
72default:default2
12default:default2k
U/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/sources_1/new/digiLock.sv2default:default2
42default:default8@Z8-6155h px� 
�
+design %s has port %s driven by constant %s3447*oasys2 
digiLockFPGA2default:default2
DP2default:default2
12default:defaultZ8-3917h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
LED[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
LED[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[15]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[14]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[13]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[12]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[11]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[10]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[9]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[8]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[6]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[5]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[4]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
BTNC2default:defaultZ8-3331h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 1832.457 ; gain = 210.469 ; free physical = 22055 ; free virtual = 34698
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 1835.426 ; gain = 213.438 ; free physical = 22060 ; free virtual = 34702
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 1835.426 ; gain = 213.438 ; free physical = 22060 ; free virtual = 34702
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2n
X/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/constrs_1/imports/Downloads/pin-assignment.xdc2default:default8Z20-179h px� 
�
No nets matched '%s'.
507*	planAhead2
	BTNC_IBUF2default:default2n
X/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/constrs_1/imports/Downloads/pin-assignment.xdc2default:default2
112default:default8@Z12-507h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
X/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/constrs_1/imports/Downloads/pin-assignment.xdc2default:default2
112default:default8@Z17-55h px�
�
No nets matched '%s'.
507*	planAhead2
	BTNU_IBUF2default:default2n
X/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/constrs_1/imports/Downloads/pin-assignment.xdc2default:default2
122default:default8@Z12-507h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
X/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/constrs_1/imports/Downloads/pin-assignment.xdc2default:default2
122default:default8@Z17-55h px�
�
No nets matched '%s'.
507*	planAhead2(
nBC/CA_OBUF_inst_i_22default:default2n
X/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/constrs_1/imports/Downloads/pin-assignment.xdc2default:default2
152default:default8@Z12-507h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
X/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/constrs_1/imports/Downloads/pin-assignment.xdc2default:default2
152default:default8@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2n
X/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/constrs_1/imports/Downloads/pin-assignment.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2l
X/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/constrs_1/imports/Downloads/pin-assignment.xdc2default:default22
.Xil/digiLockFPGA_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2008.0512default:default2
0.0002default:default2
219952default:default2
346372default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2
00:00:002default:default2
2008.0512default:default2
0.0002default:default2
219952default:default2
346372default:defaultZ17-722h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 2008.051 ; gain = 386.062 ; free physical = 21988 ; free virtual = 34630
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 2008.051 ; gain = 386.062 ; free physical = 21988 ; free virtual = 34630
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 2008.051 ; gain = 386.062 ; free physical = 21988 ; free virtual = 34630
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2%
current_state_reg2default:default2
digitalLock2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                       C |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                       O |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                       E |                               10 |                               11
2default:defaulth p
x
� 
�
%s
*synth2s
_                       F |                               11 |                               10
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
current_state_reg2default:default2

sequential2default:default2
digitalLock2default:defaultZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2
pwd_reg2default:default2n
X/home/nsh1/NSHcx203/Lab7/task4/task4.srcs/sources_1/imports/sources_1/new/digitalLock.sv2default:default2
652default:default8@Z8-327h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 2008.051 ; gain = 386.062 ; free physical = 21988 ; free virtual = 34631
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
@
%s
*synth2(
Module digitalLock 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
B
%s
*synth2*
Module counter_n_bit 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
+design %s has port %s driven by constant %s3447*oasys2 
digiLockFPGA2default:default2
DP2default:default2
12default:defaultZ8-3917h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
LED[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
LED[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[15]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[14]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[13]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[12]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[11]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[10]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[9]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[8]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[6]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[5]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
SW[4]2default:defaultZ8-3331h px� 

!design %s has unconnected port %s3331*oasys2 
digiLockFPGA2default:default2
BTNC2default:defaultZ8-3331h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2008.051 ; gain = 386.062 ; free physical = 22002 ; free virtual = 34647
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 2008.051 ; gain = 386.062 ; free physical = 21987 ; free virtual = 34632
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 2008.051 ; gain = 386.062 ; free physical = 21987 ; free virtual = 34632
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 2008.051 ; gain = 386.062 ; free physical = 21987 ; free virtual = 34632
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 2008.051 ; gain = 386.062 ; free physical = 21991 ; free virtual = 34636
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 2008.051 ; gain = 386.062 ; free physical = 21991 ; free virtual = 34636
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 2008.051 ; gain = 386.062 ; free physical = 21991 ; free virtual = 34636
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 2008.051 ; gain = 386.062 ; free physical = 21991 ; free virtual = 34636
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 2008.051 ; gain = 386.062 ; free physical = 21991 ; free virtual = 34636
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 2008.051 ; gain = 386.062 ; free physical = 21991 ; free virtual = 34636
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     3|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |    12|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |     6|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |     4|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |    13|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |     5|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |     2|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |     5|
2default:defaulth px� 
D
%s*synth2,
|9     |FDCE   |    35|
2default:defaulth px� 
D
%s*synth2,
|10    |FDRE   |    21|
2default:defaulth px� 
D
%s*synth2,
|11    |LD     |     4|
2default:defaulth px� 
D
%s*synth2,
|12    |IBUF   |     9|
2default:defaulth px� 
D
%s*synth2,
|13    |OBUF   |    16|
2default:defaulth px� 
D
%s*synth2,
|14    |OBUFT  |     2|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
]
%s
*synth2E
1+------+------------+-------------------+------+
2default:defaulth p
x
� 
]
%s
*synth2E
1|      |Instance    |Module             |Cells |
2default:defaulth p
x
� 
]
%s
*synth2E
1+------+------------+-------------------+------+
2default:defaulth p
x
� 
]
%s
*synth2E
1|1     |top         |                   |   137|
2default:defaulth p
x
� 
]
%s
*synth2E
1|2     |  dl        |digitalLock        |    68|
2default:defaulth p
x
� 
]
%s
*synth2E
1|3     |    rlCtr   |nbitctr            |    36|
2default:defaulth p
x
� 
]
%s
*synth2E
1|4     |  ssc       |sev_seg_controller |    39|
2default:defaulth p
x
� 
]
%s
*synth2E
1|5     |    counter |counter_n_bit      |    39|
2default:defaulth p
x
� 
]
%s
*synth2E
1+------+------------+-------------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 2008.051 ; gain = 386.062 ; free physical = 21991 ; free virtual = 34636
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 17 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 2008.051 ; gain = 213.438 ; free physical = 21991 ; free virtual = 34636
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 2008.051 ; gain = 386.062 ; free physical = 21991 ; free virtual = 34636
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
162default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2008.0512default:default2
0.0002default:default2
220072default:default2
346522default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2Y
E  A total of 4 instances were transformed.
  LD => LDCE: 4 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
282default:default2
412default:default2
32default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:102default:default2
00:00:112default:default2
2008.0512default:default2
624.9772default:default2
220372default:default2
346822default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2008.0512default:default2
0.0002default:default2
220372default:default2
346822default:defaultZ17-722h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2V
B/home/nsh1/NSHcx203/Lab7/task4/task4.runs/synth_1/digiLockFPGA.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
nExecuting : report_utilization -file digiLockFPGA_utilization_synth.rpt -pb digiLockFPGA_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Dec  2 12:46:12 20242default:defaultZ17-206h px� 


End Record