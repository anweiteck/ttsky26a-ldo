v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 10 -120 80 -120 {lab=#net1}
N 120 -120 140 -120 {lab=VDD}
N 140 -130 140 -120 {lab=VDD}
N -60 -120 -30 -120 {lab=VDD}
N -60 -160 -60 -120 {lab=VDD}
N 120 100 120 120 {lab=GND}
N 120 20 120 40 {lab=#net2}
N -30 20 -30 120 {lab=GND}
N -30 120 120 120 {lab=GND}
N 120 -90 120 -40 {lab=#net1}
N 10 -10 80 -10 {lab=#net3}
N -30 -90 -30 -40 {lab=#net3}
N 30 -50 30 -10 {lab=#net3}
N -30 -50 30 -50 {lab=#net3}
N 70 -120 70 -80 {lab=#net1}
N 70 -80 120 -80 {lab=#net1}
N 120 -190 120 -150 {lab=VDD}
N -30 -190 120 -190 {lab=VDD}
N -30 -190 -30 -150 {lab=VDD}
N 120 -160 140 -160 {lab=VDD}
N 140 -160 140 -130 {lab=VDD}
N -60 -160 -30 -160 {lab=VDD}
N 120 30 140 30 {lab=#net2}
N -50 -10 -50 30 {lab=GND}
N -50 30 -30 30 {lab=GND}
N 120 -190 370 -190 {lab=VDD}
N 370 -190 370 -150 {lab=VDD}
N 330 -120 330 -110 {lab=#net1}
N 80 -110 330 -110 {lab=#net1}
N 80 -120 80 -110 {lab=#net1}
N 370 -120 400 -120 {lab=VDD}
N 400 -160 400 -120 {lab=VDD}
N 370 -160 400 -160 {lab=VDD}
N 370 -90 370 -80 {lab=#net4}
N 120 -10 140 -10 {lab=#net2}
N 140 -10 140 30 {lab=#net2}
N -50 -10 -30 -10 {lab=GND}
C {code.sym} -240 -170 0 0 {name=s1 only_toplevel=false 
value= "

.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.tran 5u 10u
.save all

.control
run
print -i(v1)
set wr_singlescale
set wr_vecnames
*wrdata /foss/designs/2stageCMOSOpAmp/sim_data/GainvsFreq/gain(max).txt db(vout/v(v+))
*wrdata /foss/designs/2stageCMOSOpAmp/sim_data/sample_waves/a1.3m_f1k_gain700.txt vout
*wrdata /foss/designs/2stageCMOSOpAmp/sim_data/SR/SR.txt vout

.endc
"}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 100 -120 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} -10 -120 0 1 {name=M1
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
C {vsource.sym} 510 -10 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 510 20 0 0 {name=l3 lab=GND}
C {ipin.sym} 370 -190 2 0 {name=p6 lab=VDD}
C {ipin.sym} 510 -40 2 0 {name=p1 lab=VDD}
C {gnd.sym} 120 120 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 350 -120 0 0 {name=M5
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
C {res.sym} 370 -50 0 0 {name=R2
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} 120 70 0 0 {name=R3
value=4k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 370 -20 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 100 -10 0 0 {name=M6
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -10 -10 0 1 {name=M3
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
