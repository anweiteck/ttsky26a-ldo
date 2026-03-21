v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 10 -120 10 -30 {lab=#net1}
N 200 -120 200 -30 {lab=#net2}
N 200 30 200 60 {lab=#net3}
N 180 60 200 60 {lab=#net3}
N 100 60 180 60 {lab=#net3}
N 100 60 100 110 {lab=#net3}
N 100 110 100 120 {lab=#net3}
N 10 60 100 60 {lab=#net3}
N 10 30 10 60 {lab=#net3}
N 50 -150 160 -150 {lab=#net1}
N 100 -150 100 -110 {lab=#net1}
N 70 -110 100 -110 {lab=#net1}
N 20 -110 70 -110 {lab=#net1}
N 10 -110 20 -110 {lab=#net1}
N 10 -220 10 -180 {lab=VIN}
N 10 -220 200 -220 {lab=VIN}
N 200 -220 200 -180 {lab=VIN}
N 200 -220 470 -220 {lab=VIN}
N 470 -220 470 -180 {lab=VIN}
N 200 -70 310 -70 {lab=#net2}
N 470 -120 470 120 {lab=voe}
N -140 150 60 150 {lab=#net4}
N -180 180 -180 230 {lab=GND}
N -180 230 -140 230 {lab=GND}
N -140 230 100 230 {lab=GND}
N 100 180 100 230 {lab=GND}
N 100 230 470 230 {lab=GND}
N 470 180 470 230 {lab=GND}
N 200 -150 230 -150 {lab=VIN}
N 230 -170 230 -150 {lab=VIN}
N 230 -190 230 -170 {lab=VIN}
N 220 -190 230 -190 {lab=VIN}
N 200 -190 220 -190 {lab=VIN}
N -10 -190 10 -190 {lab=VIN}
N -10 -190 -10 -180 {lab=VIN}
N -10 -180 -10 -150 {lab=VIN}
N -10 -150 10 -150 {lab=VIN}
N 470 -190 500 -190 {lab=VIN}
N 500 -190 500 -180 {lab=VIN}
N 500 -180 500 -150 {lab=VIN}
N 470 -150 500 -150 {lab=VIN}
N 470 150 490 150 {lab=GND}
N 490 150 490 160 {lab=GND}
N 490 160 490 190 {lab=GND}
N 470 190 490 190 {lab=GND}
N 100 150 130 150 {lab=GND}
N 130 150 130 170 {lab=GND}
N 130 170 130 190 {lab=GND}
N 110 190 130 190 {lab=GND}
N 100 190 110 190 {lab=GND}
N -210 150 -180 150 {lab=GND}
N -210 150 -210 170 {lab=GND}
N -210 170 -210 190 {lab=GND}
N -210 190 -180 190 {lab=GND}
N 200 -240 200 -220 {lab=VIN}
N 100 230 100 240 {lab=GND}
N 10 0 30 0 {lab=GND}
N 180 0 200 0 {lab=GND}
N 50 140 50 150 {lab=#net4}
N 50 140 430 140 {lab=#net4}
N 430 140 430 150 {lab=#net4}
N -180 50 -180 120 {lab=#net4}
N -180 110 -130 110 {lab=#net4}
N -130 120 -130 150 {lab=#net4}
N -130 110 -130 120 {lab=#net4}
N -80 0 -30 0 {lab=v-}
N 470 -220 610 -220 {lab=VIN}
N 670 -220 800 -220 {lab=VOUT}
N 740 -220 740 -170 {lab=VOUT}
N 640 -240 640 -220 {lab=VIN}
N 580 -240 640 -240 {lab=VIN}
N 580 -240 580 -220 {lab=VIN}
N -180 -30 -180 50 {lab=#net4}
N -180 -220 -180 -90 {lab=VIN}
N -180 -220 -130 -220 {lab=VIN}
N -130 -220 10 -220 {lab=VIN}
N 740 -170 740 -90 {lab=VOUT}
N 740 -30 740 90 {lab=#net5}
N 470 230 740 230 {lab=GND}
N 740 150 740 230 {lab=GND}
N 800 -220 920 -220 {lab=VOUT}
N 920 -220 960 -220 {lab=VOUT}
N 740 -180 740 -170 {lab=VOUT}
N 300 -150 300 -70 {lab=#net2}
N 640 -180 640 -70 {lab=voe}
N 400 -150 430 -150 {lab=#net2}
N 370 -70 470 -70 {lab=voe}
N 300 -150 400 -150 {lab=#net2}
N 470 -70 640 -70 {lab=voe}
N 240 -0 740 -0 {lab=#net5}
N -70 60 -50 60 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -10 0 0 0 {name=M1
W=2
L=2.5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 30 -150 0 1 {name=M3
W=1.75
L=2
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 220 0 0 1 {name=M2
W=2
L=2.5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 180 -150 0 0 {name=M4
W=1.75
L=2.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 450 -150 0 0 {name=M6
W=50
L=2.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 80 150 0 0 {name=M5
W=0.875
L=2.5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 450 150 0 0 {name=M7
W=12.5
L=2.5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -160 150 0 1 {name=M8
W=0.875
L=2.5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {capa.sym} 340 -70 3 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} 200 -240 1 0 {name=p1 lab=VIN}
C {opin.sym} 960 -220 0 0 {name=p8 lab=VOUT}
C {isource.sym} -180 -60 0 0 {name=I0 value=8u}
C {res.sym} 740 -60 0 0 {name=R1
value=15k
footprint=1206
device=resistor
m=1}
C {res.sym} 740 120 0 0 {name=R2
value=85k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -70 30 0 0 {name=V4 value=0.85 savecurrent=false}
C {sky130_fd_pr/pfet_01v8.sym} 640 -200 3 0 {name=M9
W=3
L=0.25
nf=1
mult=542
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_wire.sym} -80 0 0 0 {name=p4 sig_type=std_logic lab=v-}
C {lab_wire.sym} 470 -70 0 0 {name=p2 sig_type=std_logic lab=voe}
C {iopin.sym} 100 240 1 0 {name=p7 lab=GND}
C {lab_wire.sym} 180 0 0 0 {name=p3 sig_type=std_logic lab=GND}
C {lab_wire.sym} 30 0 0 1 {name=p5 sig_type=std_logic lab=GND}
C {lab_wire.sym} -50 60 0 1 {name=p6 sig_type=std_logic lab=GND}
