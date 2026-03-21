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
N 10 -220 10 -180 {lab=VDD}
N 10 -220 200 -220 {lab=VDD}
N 200 -220 200 -180 {lab=VDD}
N 200 -220 470 -220 {lab=VDD}
N 470 -220 470 -180 {lab=VDD}
N 200 -70 310 -70 {lab=#net2}
N 310 -150 310 -70 {lab=#net2}
N 310 -150 330 -150 {lab=#net2}
N 330 -150 430 -150 {lab=#net2}
N 470 -120 470 120 {lab=#net4}
N 370 -70 470 -70 {lab=#net4}
N -140 150 60 150 {lab=#net5}
N -180 180 -180 230 {lab=GND}
N -180 230 -140 230 {lab=GND}
N -140 230 100 230 {lab=GND}
N 100 180 100 230 {lab=GND}
N 100 230 470 230 {lab=GND}
N 470 180 470 230 {lab=GND}
N 200 -150 230 -150 {lab=VDD}
N 230 -170 230 -150 {lab=VDD}
N 230 -190 230 -170 {lab=VDD}
N 220 -190 230 -190 {lab=VDD}
N 200 -190 220 -190 {lab=VDD}
N -10 -190 10 -190 {lab=VDD}
N -10 -190 -10 -180 {lab=VDD}
N -10 -180 -10 -150 {lab=VDD}
N -10 -150 10 -150 {lab=VDD}
N 470 -190 500 -190 {lab=VDD}
N 500 -190 500 -180 {lab=VDD}
N 500 -180 500 -150 {lab=VDD}
N 470 -150 500 -150 {lab=VDD}
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
N 200 -240 200 -220 {lab=VDD}
N 100 230 100 240 {lab=GND}
N 10 0 30 0 {lab=VSS}
N 180 0 200 0 {lab=VSS}
N 50 140 50 150 {lab=#net5}
N 50 140 430 140 {lab=#net5}
N 430 140 430 150 {lab=#net5}
N -180 50 -180 120 {lab=#net5}
N -180 110 -130 110 {lab=#net5}
N -130 120 -130 150 {lab=#net5}
N -130 110 -130 120 {lab=#net5}
N 240 0 280 0 {lab=v+}
N -80 0 -30 0 {lab=v-}
N 470 -220 610 -220 {lab=VDD}
N 640 -180 640 -70 {lab=#net4}
N 630 -70 640 -70 {lab=#net4}
N 470 -70 630 -70 {lab=#net4}
N 670 -220 800 -220 {lab=vout}
N 740 -220 740 -170 {lab=vout}
N 640 -240 640 -220 {lab=VDD}
N 580 -240 640 -240 {lab=VDD}
N 580 -240 580 -220 {lab=VDD}
N -180 -30 -180 50 {lab=#net5}
N -180 -220 -180 -90 {lab=VDD}
N -180 -220 -130 -220 {lab=VDD}
N -130 -220 10 -220 {lab=VDD}
N 740 -170 740 -90 {lab=vout}
N 740 -30 740 90 {lab=v+}
N 470 230 740 230 {lab=GND}
N 740 150 740 230 {lab=GND}
N 240 -0 740 -0 {lab=v+}
N 820 -30 820 -0 {lab=v+}
N 740 0 820 0 {lab=v+}
N 800 -220 920 -220 {lab=vout}
N 820 -220 820 -90 {lab=vout}
N 910 -220 910 -90 {lab=vout}
N 910 -30 910 90 {lab=#net6}
N 910 150 910 230 {lab=GND}
N 740 230 910 230 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -10 0 0 0 {name=M1
W=\{S1*Ldefault\}
L=\{Ldefault\}
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
W=\{S3*Ldefault\}
L=\{Ldefault\}
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
W=\{S1*Ldefault\}
L=\{Ldefault\}
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
W=\{S3*Ldefault\}
L=\{Ldefault\}
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
W=\{S6*Ldefault\}
L=\{Ldefault\}
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
W=\{S5*Ldefault\}
L=\{Ldefault\}
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
W=\{S7*Ldefault\}
L=\{Ldefault\}
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
W=\{S5*Ldefault\}
L=\{Ldefault\}
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
value=2.8p
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} 200 -240 1 0 {name=p1 lab=VDD}
C {ipin.sym} 180 0 0 0 {name=p3 lab=VSS}
C {ipin.sym} 30 0 2 0 {name=p4 lab=VSS}
C {ipin.sym} -80 0 0 0 {name=p6 lab=v-}
C {ipin.sym} 280 0 3 0 {name=p7 lab=v+}
C {ipin.sym} 920 -220 2 0 {name=p8 lab=vout}
C {code.sym} -350 -220 0 0 {name=s1 only_toplevel=false 
value= "

.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.param Vdd=4 Vss=0 ibias=30u S1=4 S3=16 S5=8 S6=96 S7=32 Ldefault=0.25
.tran 5u 5m
*.ac dec 20 1 1e12
.save all

.control
run
*plot vout
*plot db(vout/v(v+)) 
*plot 180*cph(vout)/pi
set wr_singlescale
set wr_vecnames
*wrdata /foss/designs/2stageCMOSOpAmp/sim_data/GainvsFreq/gain(max).txt db(vout/v(v+))
*wrdata /foss/designs/2stageCMOSOpAmp/sim_data/sample_waves/a1.3m_f1k_gain700.txt vout
*wrdata /foss/designs/2stageCMOSOpAmp/sim_data/SR/SR.txt vout

.endc
"}
C {vsource.sym} -670 -160 0 0 {name=V1 value=\{Vdd\} savecurrent=false}
C {isource.sym} -180 -60 0 0 {name=I0 value=\{ibias\}}
C {ipin.sym} -670 -190 1 0 {name=p10 lab=VDD}
C {vsource.sym} -610 -160 0 0 {name=V2 value=\{Vss\} savecurrent=false}
C {ipin.sym} -610 -190 1 0 {name=p11 lab=VSS}
C {gnd.sym} -670 -130 0 0 {name=l2 lab=GND}
C {gnd.sym} -610 -130 0 0 {name=l3 lab=GND}
C {gnd.sym} -520 -130 0 0 {name=l4 lab=GND}
C {res.sym} 740 -60 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {res.sym} 740 120 0 0 {name=R2
value=50k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -70 30 0 0 {name=V4 value=0.93 savecurrent=false}
C {gnd.sym} -70 60 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 640 -200 3 0 {name=M9
W=0.625
L=2.5
nf=1
mult=3000
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {gnd.sym} 100 240 0 0 {name=l6 lab=GND}
C {capa.sym} 820 -60 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 910 -60 0 0 {name=C3
m=1
value=20u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 910 120 0 0 {name=R3
value=30m
footprint=1206
device=resistor
m=1}
