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
EA output should be 1.3-1.6?} 480 -490 0 0 0.4 0.4 {}
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
N 140 -50 160 -50 {lab=Vref}
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
N 700 -150 780 -150 {lab=gate}
N 240 110 240 120 {lab=#net4}
N 240 110 640 110 {lab=#net4}
N 640 110 640 120 {lab=#net4}
N 680 180 780 180 {lab=GND}
N -20 -270 200 -270 {lab=VDD}
N 470 -150 500 -150 {lab=#net2}
N 370 -150 470 -150 {lab=#net2}
N 890 -270 1020 -270 {lab=VOUT}
N 960 -270 960 -220 {lab=VOUT}
N 860 -290 860 -270 {lab=VDD}
N 800 -290 860 -290 {lab=VDD}
N 800 -290 800 -270 {lab=VDD}
N 960 -220 960 -140 {lab=VOUT}
N 960 -80 960 40 {lab=v+}
N 960 100 960 180 {lab=GND}
N 1020 -270 1140 -270 {lab=VOUT}
N 1140 -270 1180 -270 {lab=VOUT}
N 960 -230 960 -220 {lab=VOUT}
N 680 -270 830 -270 {lab=VDD}
N 780 -230 780 -150 {lab=gate}
N 780 -230 860 -230 {lab=gate}
N 430 -50 960 -50 {lab=v+}
N 780 180 960 180 {lab=GND}
N 1030 -270 1030 -110 {lab=VOUT}
N 1030 10 1030 180 {lab=GND}
N 960 180 1030 180 {lab=GND}
N 1030 -110 1030 -50 {lab=VOUT}
N -250 -220 -180 -220 {lab=#net5}
N -140 -220 -120 -220 {lab=VDD}
N -120 -230 -120 -220 {lab=VDD}
N -320 -220 -290 -220 {lab=VDD}
N -320 -260 -320 -220 {lab=VDD}
N -140 0 -140 20 {lab=GND}
N -140 -80 -140 -60 {lab=#net6}
N -290 -80 -290 20 {lab=GND}
N -140 -190 -140 -140 {lab=#net5}
N -250 -110 -180 -110 {lab=#net7}
N -290 -190 -290 -140 {lab=#net7}
N -230 -150 -230 -110 {lab=#net7}
N -290 -150 -230 -150 {lab=#net7}
N -190 -220 -190 -180 {lab=#net5}
N -190 -180 -140 -180 {lab=#net5}
N -140 -260 -120 -260 {lab=VDD}
N -120 -260 -120 -230 {lab=VDD}
N -320 -260 -290 -260 {lab=VDD}
N -140 -70 -120 -70 {lab=#net6}
N -310 -110 -310 -70 {lab=GND}
N -310 -70 -290 -70 {lab=GND}
N -60 -220 -60 -210 {lab=#net5}
N -180 -220 -180 -210 {lab=#net5}
N -20 -190 -20 -180 {lab=#net4}
N -140 -110 -120 -110 {lab=#net6}
N -120 -110 -120 -70 {lab=#net6}
N -310 -110 -290 -110 {lab=GND}
N -20 90 -20 100 {lab=#net4}
N -20 -270 -20 -250 {lab=VDD}
N -20 -260 -0 -260 {lab=VDD}
N -0 -260 -0 -220 {lab=VDD}
N -20 -220 -0 -220 {lab=VDD}
N -20 -180 -20 90 {lab=#net4}
N -270 -270 -20 -270 {lab=VDD}
N -140 -270 -140 -260 {lab=VDD}
N -140 -260 -140 -250 {lab=VDD}
N -290 -270 -140 -270 {lab=VDD}
N -290 -270 -290 -260 {lab=VDD}
N -290 -260 -290 -250 {lab=VDD}
N -140 20 -140 180 {lab=GND}
N -290 20 -290 180 {lab=GND}
N -290 180 -140 180 {lab=GND}
N -180 -210 -60 -210 {lab=#net5}
N -140 180 -20 180 {lab=GND}
N -160 -30 -160 0 {lab=GND}
N -160 0 -140 0 {lab=GND}
N 940 70 940 100 {lab=GND}
N 940 100 960 100 {lab=GND}
N 940 -110 940 70 {lab=GND}
N 200 -50 220 -50 {lab=GND}
N 350 -50 370 -50 {lab=GND}
N 680 120 700 120 {lab=GND}
N 290 130 300 130 {lab=GND}
N -40 130 -20 130 {lab=GND}
C {ipin.sym} 370 -280 1 0 {name=p6 lab=VDD}
C {opin.sym} 1180 -270 0 0 {name=p7 lab=VOUT}
C {lab_pin.sym} 780 -150 2 0 {name=p1 sig_type=std_logic lab=gate}
C {lab_pin.sym} 220 -50 2 0 {name=p4 sig_type=std_logic lab=GND}
C {lab_pin.sym} 350 -50 2 1 {name=p8 sig_type=std_logic lab=GND}
C {ipin.sym} 290 200 3 0 {name=p9 lab=GND}
C {lab_pin.sym} 430 -50 3 0 {name=p2 sig_type=std_logic lab=v+}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 180 -50 0 0 {name=M1
W=0.8
L=1
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 390 -50 0 1 {name=M2
W=0.8
L=1
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 350 -220 0 0 {name=M4
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 220 -220 0 1 {name=M3
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 660 -220 0 0 {name=M6
W=4.2
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 660 120 0 0 {name=M7
W=5.2
L=0.25
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 860 -250 3 0 {name=M9
W=1750
L=0.35
nf=50
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} -40 -220 0 0 {name=M10
W=1
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} -160 -220 0 0 {name=M11
W=1
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} -270 -220 0 1 {name=M12
W=1
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} -270 -110 0 1 {name=M13
W=2
L=1
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} -160 -110 0 0 {name=M14
W=2.2
L=1
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 960 -110 0 0 {name=R1
L=35.7
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 960 70 0 0 {name=R3
L=53.9
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} -140 -30 0 0 {name=R2
L=3.1
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_1.sym} 530 -150 1 1 {name=C1 model=cap_mim_m3_1 W=50 L=50 MF=1 spiceprefix=X}
C {ipin.sym} 140 -50 0 0 {name=p5 lab=Vref}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 270 130 0 0 {name=M5
W=1.2
L=1
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
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 0 130 0 1 {name=M8
W=1.2
L=1
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
