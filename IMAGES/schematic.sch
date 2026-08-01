# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #0000ff
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new traffic_light_controller work:traffic_light_controller:NOFILE -nosplit
load symbol RTL_MUX6 work MUX pinBus I0 input.left [1:0] pinBus I1 input.left [1:0] pinBus O output.right [1:0] pinBus S input.bot [5:0] fillcolor 1
load symbol RTL_MUX2 work MUX pinBus I0 input.left [1:0] pinBus I1 input.left [1:0] pinBus I2 input.left [1:0] pinBus I3 input.left [1:0] pinBus O output.right [1:0] pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_OR work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_MUX work MUX pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] pinBus I2 input.left [3:0] pinBus I3 input.left [3:0] pinBus O output.right [3:0] pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_ADD work RTL(+) pin I1 input.left pinBus I0 input.left [5:0] pinBus O output.right [5:0] fillcolor 1
load symbol RTL_NEQ work RTL(!=) pin O output.right pinBus I0 input.left [1:0] pinBus I1 input.left [1:0] fillcolor 1
load symbol RTL_MUX1 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol RTL_REG_SYNC__BREG_1 work[1:0]sswws GEN pin C input.clk.left pin CE input.left pinBus D input.left [1:0] pinBus Q output.right [1:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 2
load symbol RTL_REG_SYNC__BREG_1 work[5:0]sswws GEN pin C input.clk.left pin CE input.left pinBus D input.left [5:0] pinBus Q output.right [5:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 6
load port clk input -pg 1 -lvl 0 -x 0 -y 450
load port ena input -pg 1 -lvl 0 -x 0 -y 420
load port o_green_A output -pg 1 -lvl 10 -x 2360 -y 280
load port o_green_B output -pg 1 -lvl 10 -x 2360 -y 310
load port o_red_A output -pg 1 -lvl 10 -x 2360 -y 250
load port o_red_B output -pg 1 -lvl 10 -x 2360 -y 400
load port o_yellow_A output -pg 1 -lvl 10 -x 2360 -y 340
load port o_yellow_B output -pg 1 -lvl 10 -x 2360 -y 370
load port reset input -pg 1 -lvl 0 -x 0 -y 300
load inst next_state_i RTL_MUX6 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr V=B\"01\",\ S=6'b011101 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pinBusAttr S @name S[5:0] -pg 1 -lvl 5 -x 1220 -y 70
load inst next_state_i__0 RTL_MUX6 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr V=B\"10\",\ S=6'b000100 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pinBusAttr S @name S[5:0] -pg 1 -lvl 5 -x 1220 -y 190
load inst next_state_i__1 RTL_MUX6 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=6'b011101 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pinBusAttr S @name S[5:0] -pg 1 -lvl 5 -x 1220 -y 320
load inst next_state_i__2 RTL_MUX6 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=6'b000100 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pinBusAttr S @name S[5:0] -pg 1 -lvl 5 -x 1220 -y 550
load inst next_state_i__3 RTL_MUX2 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=2'b00 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=2'b01 -pinBusAttr I2 @name I2[1:0] -pinBusAttr I2 @attr S=2'b10 -pinBusAttr I3 @name I3[1:0] -pinBusAttr I3 @attr S=2'b11 -pinBusAttr O @name O[1:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 6 -x 1520 -y 370
load inst o_red_A_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 9 -x 2240 -y 250
load inst o_red_B_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 9 -x 2240 -y 400
load inst state_i RTL_MUX work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr V=B\"0001\",\ S=2'b10 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr V=B\"0010\",\ S=2'b11 -pinBusAttr I2 @name I2[3:0] -pinBusAttr I2 @attr V=B\"0100\",\ S=2'b00 -pinBusAttr I3 @name I3[3:0] -pinBusAttr I3 @attr V=B\"1000\",\ S=2'b01 -pinBusAttr O @name O[3:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 8 -x 2070 -y 410
load inst timer0_i RTL_ADD work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[5:0] -pinBusAttr O @name O[5:0] -pg 1 -lvl 3 -x 590 -y 620
load inst timer0_i__0 RTL_NEQ work -attr @cell(#000000) RTL_NEQ -pinBusAttr I0 @name I0[1:0] -pinBusAttr I1 @name I1[1:0] -pg 1 -lvl 1 -x 90 -y 520
load inst timer_i RTL_MUX1 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 330 -y 360
load inst timer_i__0 RTL_MUX1 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 3 -x 590 -y 340
load inst state_reg[1:0] RTL_REG_SYNC__BREG_1 work[1:0]sswws -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 7 -x 1730 -y 490
load inst timer_reg[5:0] RTL_REG_SYNC__BREG_1 work[5:0]sswws -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 4 -x 800 -y 600
load net <const0> -ground -pin next_state_i I0[1] -pin next_state_i__0 I0[0] -pin next_state_i__2 I0[1] -pin next_state_i__2 I0[0] -pin state_i I0[3] -pin state_i I0[2] -pin state_i I0[1] -pin state_i I1[3] -pin state_i I1[2] -pin state_i I1[0] -pin state_i I2[3] -pin state_i I2[1] -pin state_i I2[0] -pin state_i I3[2] -pin state_i I3[1] -pin state_i I3[0] -pin timer_i I1
load net <const1> -power -pin next_state_i I0[0] -pin next_state_i__0 I0[1] -pin next_state_i__1 I0[1] -pin next_state_i__1 I0[0] -pin state_i I0[0] -pin state_i I1[1] -pin state_i I2[2] -pin state_i I3[3] -pin timer0_i I1 -pin timer_i__0 I0
load net clk -port clk -pin state_reg[1:0] C -pin timer_reg[5:0] C
netloc clk 1 0 7 NJ 450 NJ 450 NJ 450 750 450 960J 470 NJ 470 NJ
load net ena -port ena -pin state_reg[1:0] CE -pin timer_i S -pin timer_reg[5:0] CE
netloc ena 1 0 7 NJ 420 NJ 420N NJ 420 710 680 NJ 680 NJ 680 1680J
load net next_state[0] -attr @rip(#000000) O[0] -pin next_state_i__3 O[0] -pin state_reg[1:0] D[0] -pin timer0_i__0 I1[0]
load net next_state[1] -attr @rip(#000000) O[1] -pin next_state_i__3 O[1] -pin state_reg[1:0] D[1] -pin timer0_i__0 I1[1]
load net next_state_i__0_n_0 -attr @rip(#000000) O[1] -pin next_state_i__0 O[1] -pin next_state_i__3 I1[1]
load net next_state_i__0_n_1 -attr @rip(#000000) O[0] -pin next_state_i__0 O[0] -pin next_state_i__3 I1[0]
load net next_state_i__1_n_0 -attr @rip(#000000) O[1] -pin next_state_i__1 O[1] -pin next_state_i__3 I2[1]
load net next_state_i__1_n_1 -attr @rip(#000000) O[0] -pin next_state_i__1 O[0] -pin next_state_i__3 I2[0]
load net next_state_i__2_n_0 -attr @rip(#000000) O[1] -pin next_state_i__2 O[1] -pin next_state_i__3 I3[1]
load net next_state_i__2_n_1 -attr @rip(#000000) O[0] -pin next_state_i__2 O[0] -pin next_state_i__3 I3[0]
load net next_state_i_n_0 -attr @rip(#000000) O[1] -pin next_state_i O[1] -pin next_state_i__3 I0[1]
load net next_state_i_n_1 -attr @rip(#000000) O[0] -pin next_state_i O[0] -pin next_state_i__3 I0[0]
load net o_green_A -attr @rip(#000000) O[2] -port o_green_A -pin o_red_B_i I0 -pin state_i O[2]
load net o_green_B -attr @rip(#000000) O[0] -port o_green_B -pin o_red_A_i I0 -pin state_i O[0]
load net o_red_A -port o_red_A -pin o_red_A_i O
netloc o_red_A 1 9 1 NJ 250
load net o_red_B -port o_red_B -pin o_red_B_i O
netloc o_red_B 1 9 1 NJ 400
load net o_yellow_A -attr @rip(#000000) O[3] -pin o_red_B_i I1 -port o_yellow_A -pin state_i O[3]
load net o_yellow_B -attr @rip(#000000) O[1] -pin o_red_A_i I1 -port o_yellow_B -pin state_i O[1]
load net reset -port reset -pin state_reg[1:0] RST -pin timer_i__0 S
netloc reset 1 0 7 NJ 300 NJ 300 470J 400N NJ 400 NJ 400 1360J 290 1680
load net state[0] -attr @rip(#000000) 0 -pin next_state_i I1[0] -pin next_state_i__0 I1[0] -pin next_state_i__1 I1[0] -pin next_state_i__2 I1[0] -pin next_state_i__3 S[0] -pin state_i S[0] -pin state_reg[1:0] Q[0] -pin timer0_i__0 I0[0]
load net state[1] -attr @rip(#000000) 1 -pin next_state_i I1[1] -pin next_state_i__0 I1[1] -pin next_state_i__1 I1[1] -pin next_state_i__2 I1[1] -pin next_state_i__3 S[1] -pin state_i S[1] -pin state_reg[1:0] Q[1] -pin timer0_i__0 I0[1]
load net timer0[0] -attr @rip(#000000) O[0] -pin timer0_i O[0] -pin timer_reg[5:0] D[0]
load net timer0[1] -attr @rip(#000000) O[1] -pin timer0_i O[1] -pin timer_reg[5:0] D[1]
load net timer0[2] -attr @rip(#000000) O[2] -pin timer0_i O[2] -pin timer_reg[5:0] D[2]
load net timer0[3] -attr @rip(#000000) O[3] -pin timer0_i O[3] -pin timer_reg[5:0] D[3]
load net timer0[4] -attr @rip(#000000) O[4] -pin timer0_i O[4] -pin timer_reg[5:0] D[4]
load net timer0[5] -attr @rip(#000000) O[5] -pin timer0_i O[5] -pin timer_reg[5:0] D[5]
load net timer0_i__0_n_0 -pin timer0_i__0 O -pin timer_i I0
netloc timer0_i__0_n_0 1 1 1 210 350n
load net timer[0] -attr @rip(#000000) 0 -pin next_state_i S[0] -pin next_state_i__0 S[0] -pin next_state_i__1 S[0] -pin next_state_i__2 S[0] -pin timer0_i I0[0] -pin timer_reg[5:0] Q[0]
load net timer[1] -attr @rip(#000000) 1 -pin next_state_i S[1] -pin next_state_i__0 S[1] -pin next_state_i__1 S[1] -pin next_state_i__2 S[1] -pin timer0_i I0[1] -pin timer_reg[5:0] Q[1]
load net timer[2] -attr @rip(#000000) 2 -pin next_state_i S[2] -pin next_state_i__0 S[2] -pin next_state_i__1 S[2] -pin next_state_i__2 S[2] -pin timer0_i I0[2] -pin timer_reg[5:0] Q[2]
load net timer[3] -attr @rip(#000000) 3 -pin next_state_i S[3] -pin next_state_i__0 S[3] -pin next_state_i__1 S[3] -pin next_state_i__2 S[3] -pin timer0_i I0[3] -pin timer_reg[5:0] Q[3]
load net timer[4] -attr @rip(#000000) 4 -pin next_state_i S[4] -pin next_state_i__0 S[4] -pin next_state_i__1 S[4] -pin next_state_i__2 S[4] -pin timer0_i I0[4] -pin timer_reg[5:0] Q[4]
load net timer[5] -attr @rip(#000000) 5 -pin next_state_i S[5] -pin next_state_i__0 S[5] -pin next_state_i__1 S[5] -pin next_state_i__2 S[5] -pin timer0_i I0[5] -pin timer_reg[5:0] Q[5]
load net timer__0 -pin timer_i__0 O -pin timer_reg[5:0] RST
netloc timer__0 1 3 1 730 340n
load net timer_i_n_0 -pin timer_i O -pin timer_i__0 I1
netloc timer_i_n_0 1 2 1 450 350n
load netBundle @next_state_i_n_ 2 next_state_i_n_0 next_state_i_n_1 -autobundled
netbloc @next_state_i_n_ 1 5 1 1400 70n
load netBundle @next_state_i__0_n_ 2 next_state_i__0_n_0 next_state_i__0_n_1 -autobundled
netbloc @next_state_i__0_n_ 1 5 1 1380 190n
load netBundle @next_state_i__1_n_ 2 next_state_i__1_n_0 next_state_i__1_n_1 -autobundled
netbloc @next_state_i__1_n_ 1 5 1 1340 320n
load netBundle @next_state_i__2_n_ 2 next_state_i__2_n_0 next_state_i__2_n_1 -autobundled
netbloc @next_state_i__2_n_ 1 5 1 1400 400n
load netBundle @next_state 2 next_state[1] next_state[0] -autobundled
netbloc @next_state 1 0 7 20 570 NJ 570 450J 490 NJ 490 NJ 490 NJ 490 1660
load netBundle @o_yellow_A,o_green_A 4 o_yellow_A o_green_A o_yellow_B o_green_B -autobundled
netbloc @o_yellow_A,o_green_A 1 8 2 2190 340 2340J
load netBundle @timer0 6 timer0[5] timer0[4] timer0[3] timer0[2] timer0[1] timer0[0] -autobundled
netbloc @timer0 1 3 1 NJ 620
load netBundle @state 2 state[1] state[0] -autobundled
netbloc @state 1 0 8 20 470 NJ 470 NJ 470 NJ 470 980 450 N 450N 1640 570 1880
load netBundle @timer 6 timer[5] timer[4] timer[3] timer[2] timer[1] timer[0] -autobundled
netbloc @timer 1 2 3 470 510 NJ 510 1000
levelinfo -pg 1 0 90 330 590 800 1220 1520 1730 2070 2240 2360
pagesize -pg 1 -db -bbox -sgen -80 0 2480 690
show
fullfit
#
# initialize ictrl to current module traffic_light_controller work:traffic_light_controller:NOFILE
ictrl init topinfo |
