
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2581.4532default:default2
0.0002default:default2
210592default:default2
336292default:defaultZ17-722h px� 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: ff6e6a30
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21059 ; free virtual = 336292default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2581.4532default:default2
0.0002default:default2
210592default:default2
336292default:defaultZ17-722h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
�
9Poor placement for routing between an IO pin and BUFG. %s528*place2�
�This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	<MSGMETA::BEGIN::BLOCK>BTNC_IBUF_inst<MSGMETA::END> (IBUF.O) is locked to IOB_X0Y82
	<MSGMETA::BEGIN::BLOCK>BTNC_IBUF_BUFG_inst<MSGMETA::END> (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y0
"�
BTNC_IBUF_inst2�This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	:" (IBUF.O) is locked to IOB_X0Y82
	"[
BTNC_IBUF_BUFG_inst:B (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y0
2default:default8Z30-574h px� 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: d168c442
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.55 ; elapsed = 00:00:00.20 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21059 ; free virtual = 336292default:defaulth px� 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 19c751d8a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.69 ; elapsed = 00:00:00.22 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21063 ; free virtual = 336332default:defaulth px� 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 19c751d8a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.70 ; elapsed = 00:00:00.23 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21063 ; free virtual = 336332default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 19c751d8a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.70 ; elapsed = 00:00:00.23 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21063 ; free virtual = 336332default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px� 
C
.Phase 2.1 Floorplanning | Checksum: 19c751d8a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.70 ; elapsed = 00:00:00.23 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21063 ; free virtual = 336332default:defaulth px� 
x

Phase %s%s
101*constraints2
2.2 2default:default2)
Global Placement Core2default:defaultZ18-101h px� 
h
Eplace_design is not in timing mode. Skip physical synthesis in placer29*	placeflowZ46-29h px� 
K
6Phase 2.2 Global Placement Core | Checksum: 1af2e7eaf
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.50 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21122 ; free virtual = 336922default:defaulth px� 
D
/Phase 2 Global Placement | Checksum: 1af2e7eaf
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.50 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21122 ; free virtual = 336922default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 1af2e7eaf
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.50 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21122 ; free virtual = 336922default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1e54a03f4
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.52 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21122 ; free virtual = 336912default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 171c03969
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.52 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21122 ; free virtual = 336912default:defaulth px� 
�

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 171c03969
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.52 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21122 ; free virtual = 336912default:defaulth px� 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
R
=Phase 3.5 Small Shape Detail Placement | Checksum: 113d4cd47
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.59 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21112 ; free virtual = 336822default:defaulth px� 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
H
3Phase 3.6 Re-assign LUT pins | Checksum: 10a95c4bc
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.59 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21112 ; free virtual = 336822default:defaulth px� 
�

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.7 Pipeline Register Optimization | Checksum: 10a95c4bc
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.59 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21112 ; free virtual = 336822default:defaulth px� 
D
/Phase 3 Detail Placement | Checksum: 10a95c4bc
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.59 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21112 ; free virtual = 336822default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
N
9Phase 4.1 Post Commit Optimization | Checksum: 10a95c4bc
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.59 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21112 ; free virtual = 336822default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 10a95c4bc
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.60 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21112 ; free virtual = 336822default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
F
1Phase 4.3 Placer Reporting | Checksum: 10a95c4bc
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.60 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21112 ; free virtual = 336822default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2581.4532default:default2
0.0002default:default2
211122default:default2
336822default:defaultZ17-722h px� 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 149294ac8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.60 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21112 ; free virtual = 336822default:defaulth px� 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 149294ac8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.60 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21112 ; free virtual = 336822default:defaulth px� 
>
)Ending Placer Task | Checksum: 11a1a08b5
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:00.60 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21112 ; free virtual = 336822default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
422default:default2
42default:default2
22default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2581.4532default:default2
0.0002default:default2
211202default:default2
336902default:defaultZ17-722h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.052default:default2
00:00:00.012default:default2
2581.4532default:default2
0.0002default:default2
211202default:default2
336902default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2a
M/home/nsh1/NSHcx203/Lab4/task3/task3.runs/impl_1/fourbitregBehData_placed.dcp2default:defaultZ17-1381h px� 
l
%s4*runtcl2P
<Executing : report_io -file fourbitregBehData_io_placed.rpt
2default:defaulth px� 
�
�report_io: Time (s): cpu = 00:00:00.03 ; elapsed = 00:00:00.06 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21106 ; free virtual = 33676
*commonh px� 
�
%s4*runtcl2�
zExecuting : report_utilization -file fourbitregBehData_utilization_placed.rpt -pb fourbitregBehData_utilization_placed.pb
2default:defaulth px� 
�
%s4*runtcl2m
YExecuting : report_control_sets -verbose -file fourbitregBehData_control_sets_placed.rpt
2default:defaulth px� 
�
�report_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.03 . Memory (MB): peak = 2581.453 ; gain = 0.000 ; free physical = 21108 ; free virtual = 33678
*commonh px� 


End Record