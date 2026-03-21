v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Saturation
NMOS: Vds>Vgs-Vth
PMOS: |Vds|>|Vgs|-|Vth|} -20 -370 0 0 0.4 0.4 {}
T {pmos is off; vgs supp to be > vth 
EA output should be 1.3-1.6?} 770 -390 0 0 0.4 0.4 {}
T {@m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]} 260 -410 0 0 0.4 0.4 {}
N 290 40 290 100 {lab=#net1}
N 290 40 350 40 {lab=#net1}
N 370 -20 370 40 {lab=#net1}
N 350 40 370 40 {lab=#net1}
N 200 40 290 40 {lab=#net1}
N 200 -20 200 40 {lab=#net1}
N 370 -190 370 -80 {lab=#net2}
N 200 -190 200 -80 {lab=#net3}
N 240 -220 330 -220 {lab=#net3}
N 200 -190 280 -190 {lab=#net3}
N 280 -220 280 -190 {lab=#net3}
N 200 -270 200 -250 {lab=VDD}
N 200 -270 220 -270 {lab=VDD}
N 220 -270 370 -270 {lab=VDD}
N 370 -270 370 -250 {lab=VDD}
N 680 -190 680 90 {lab=gate}
N 560 -150 680 -150 {lab=gate}
N 470 -220 640 -220 {lab=#net2}
N 470 -220 470 -150 {lab=#net2}
N 680 -260 680 -250 {lab=VDD}
N 370 -270 680 -270 {lab=VDD}
N 680 -270 680 -260 {lab=VDD}
N 20 130 250 130 {lab=#net4}
N -20 160 -20 180 {lab=GND}
N -20 180 -10 180 {lab=GND}
N -10 180 290 180 {lab=GND}
N 290 160 290 180 {lab=GND}
N 290 180 680 180 {lab=GND}
N 680 150 680 180 {lab=GND}
N 240 120 240 130 {lab=#net4}
N 290 180 290 200 {lab=GND}
N 370 -280 370 -270 {lab=VDD}
N -20 90 40 90 {lab=#net4}
N 40 90 40 130 {lab=#net4}
N 680 -150 700 -150 {lab=gate}
N 410 -50 430 -50 {lab=v+}
N 140 -50 160 -50 {lab=v-}
N 370 -220 400 -220 {lab=VDD}
N 400 -240 400 -220 {lab=VDD}
N 370 -260 400 -260 {lab=VDD}
N 400 -260 400 -240 {lab=VDD}
N 180 -220 200 -220 {lab=VDD}
N 180 -230 180 -220 {lab=VDD}
N 180 -260 180 -230 {lab=VDD}
N 180 -260 200 -260 {lab=VDD}
N 300 130 300 160 {lab=GND}
N 300 160 300 170 {lab=GND}
N 290 170 300 170 {lab=GND}
N 700 120 700 160 {lab=GND}
N 680 160 700 160 {lab=GND}
N -40 130 -40 170 {lab=GND}
N -40 170 -20 170 {lab=GND}
N 680 -220 700 -220 {lab=VDD}
N 700 -230 700 -220 {lab=VDD}
N 700 -250 700 -230 {lab=VDD}
N 680 -260 700 -260 {lab=VDD}
N 700 -260 700 -250 {lab=VDD}
N -20 40 -20 90 {lab=#net4}
N -20 90 -20 100 {lab=#net4}
N 700 -150 780 -150 {lab=gate}
N 350 -60 380 -60 {lab=GND}
N 190 -60 220 -60 {lab=GND}
N 280 120 300 120 {lab=GND}
N 300 120 300 130 {lab=GND}
N 240 110 240 120 {lab=#net4}
N 240 110 640 110 {lab=#net4}
N 640 110 640 120 {lab=#net4}
N -40 120 -40 130 {lab=GND}
N -40 120 -10 120 {lab=GND}
N 700 110 700 120 {lab=GND}
N 670 110 700 110 {lab=GND}
N 680 180 780 180 {lab=GND}
N -20 -270 -20 -20 {lab=VDD}
N -20 -270 200 -270 {lab=VDD}
N 470 -150 500 -150 {lab=#net2}
N 370 -150 470 -150 {lab=#net2}
N 890 -270 1020 -270 {lab=VOUT}
N 960 -270 960 -220 {lab=VOUT}
N 860 -290 860 -270 {lab=VDD}
N 800 -290 860 -290 {lab=VDD}
N 800 -290 800 -270 {lab=VDD}
N 960 -220 960 -140 {lab=VOUT}
N 960 -80 960 40 {lab=#net5}
N 960 100 960 180 {lab=GND}
N 1020 -270 1140 -270 {lab=VOUT}
N 1140 -270 1180 -270 {lab=VOUT}
N 960 -230 960 -220 {lab=VOUT}
N 680 -270 830 -270 {lab=VDD}
N 780 -230 780 -150 {lab=gate}
N 780 -230 860 -230 {lab=gate}
N 780 180 960 180 {lab=GND}
N 1030 -270 1030 -30 {lab=VOUT}
N 1030 90 1030 180 {lab=GND}
N 970 180 1030 180 {lab=GND}
N 960 180 970 180 {lab=GND}
N 1030 30 1030 90 {lab=GND}
N 410 -50 500 10 {lab=v+}
N 1110 -270 1110 -70 {lab=VOUT}
N 1110 50 1110 180 {lab=GND}
N 1030 180 1110 180 {lab=GND}
C {capa.sym} 530 -150 3 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} 370 -280 1 0 {name=p6 lab=VDD}
C {isource.sym} -20 10 0 0 {name=I1 value=11u}
C {vsource.sym} 140 -20 0 0 {name=V3 value=0.8 savecurrent=false}
C {gnd.sym} 140 10 0 0 {name=l10 lab=GND}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 180 -50 0 0 {name=M10
W=0.5
L=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 350 -220 0 0 {name=M11
W=0.5
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 220 -220 0 1 {name=M12
W=0.5
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 390 -50 0 1 {name=M13
W=0.5
L=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 0 130 0 1 {name=M14
W=7
L=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 270 130 0 0 {name=M15
W=7
L=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 660 120 0 0 {name=M16
W=27
L=0.15
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 660 -220 0 0 {name=M17
W=6.3
L=0.35
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {opin.sym} 1180 -270 0 0 {name=p7 lab=VOUT}
C {res.sym} 960 -110 0 0 {name=R3
value=100k
footprint=1206
device=resistor
m=1}
C {res.sym} 960 70 0 0 {name=R4
value=400k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 860 -250 3 0 {name=M1
W=35
L=0.35
nf=1
mult=408
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} 780 -150 2 0 {name=p1 sig_type=std_logic lab=gate}
C {lab_pin.sym} 220 -60 2 0 {name=p4 sig_type=std_logic lab=GND}
C {lab_pin.sym} 350 -60 2 1 {name=p8 sig_type=std_logic lab=GND}
C {ipin.sym} 290 200 3 0 {name=p9 lab=GND}
C {lab_pin.sym} 430 -50 3 0 {name=p2 sig_type=std_logic lab=v+}
C {lab_pin.sym} 140 -50 0 0 {name=p3 sig_type=std_logic lab=v-}
C {code.sym} -180 -230 0 0 {name=s1 only_toplevel=false 
value= "

.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.ac dec 20 1 1e12
*.tran 5u 5m

.control
run
print 1/@m.xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
*plot vout
plot db(vout/v(v+)) title "c=10p"
plot 180*cph(vout)/pi
.endc
"}
C {vsource.sym} -240 0 0 0 {name=V1 value=1.8 savecurrent=false}
C {ipin.sym} -240 -30 1 0 {name=p5 lab=VDD}
C {ipin.sym} -240 30 3 0 {name=p10 lab=GND}
C {vsource.sym} 500 40 0 0 {name=V2 value="0.8 AC 1m" savecurrent=false}
C {res.sym} 1030 0 0 0 {name=R2
value=20
footprint=1206
device=resistor
m=1}
C {gnd.sym} 500 70 0 0 {name=l1 lab=GND}
C {capa.sym} 1110 20 0 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1110 -40 0 0 {name=R1
value=20m
footprint=1206
device=resistor
m=1}
