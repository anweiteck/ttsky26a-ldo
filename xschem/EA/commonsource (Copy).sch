v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
} -150 90 0 0 0.4 0.4 {}
T {Saturation
NMOS: Vds>Vgs-Vth
PMOS: |Vds|>|Vgs|-|Vth|} -360 -360 0 0 0.4 0.4 {}
N 0 -250 0 -240 {lab=VDD}
N 0 -260 0 -250 {lab=VDD}
N 0 -210 20 -210 {lab=VDD}
N 20 -220 20 -210 {lab=VDD}
N 20 -240 20 -220 {lab=VDD}
N 0 -250 20 -250 {lab=VDD}
N 20 -250 20 -240 {lab=VDD}
N -0 -180 -0 -130 {lab=vout}
N -90 -210 -40 -210 {lab=#net1}
N -130 -260 0 -260 {lab=VDD}
N -130 -260 -130 -240 {lab=VDD}
N -150 -250 -130 -250 {lab=VDD}
N -150 -250 -150 -240 {lab=VDD}
N -150 -240 -150 -210 {lab=VDD}
N -150 -210 -130 -210 {lab=VDD}
N -60 -210 -60 -160 {lab=#net1}
N -130 -80 -130 -20 {lab=GND}
N -130 -180 -130 -140 {lab=#net1}
N -0 -130 -0 -100 {lab=vout}
N -0 -40 -0 -20 {lab=GND}
N -10 -80 20 -80 {lab=GND}
N 20 -80 20 -30 {lab=GND}
N 0 -30 20 -30 {lab=GND}
N -130 -160 -60 -160 {lab=#net1}
N -60 -270 -60 -260 {lab=VDD}
N -70 -70 -40 -70 {lab=#net2}
N 0 -130 80 -130 {lab=vout}
N -0 -260 130 -260 {lab=VDD}
N 80 -130 90 -130 {lab=vout}
N 90 -130 100 -130 {lab=vout}
N 130 -260 140 -260 {lab=VDD}
N 90 -130 90 -120 {lab=vout}
N 90 -60 90 -50 {lab=GND}
N 90 10 90 30 {lab=GND}
N 90 -50 90 10 {lab=GND}
N 100 -130 210 -130 {lab=vout}
N 190 -130 190 -120 {lab=vout}
N 140 -130 140 -120 {lab=vout}
N 90 -60 140 -60 {lab=GND}
N 140 -60 190 -60 {lab=GND}
C {vsource.sym} -300 -170 0 0 {name=V1 value=1.8 savecurrent=false}
C {ipin.sym} -300 -200 1 0 {name=p10 lab=VDD}
C {gnd.sym} -300 -140 0 0 {name=l1 lab=GND}
C {ipin.sym} -60 -270 1 0 {name=p1 lab=VDD}
C {ipin.sym} 210 -130 2 0 {name=p2 lab=vout}
C {code.sym} -350 -90 0 0 {name=s1 only_toplevel=false 
value= "

.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.tran 5u 3m
*.ac dec 20 1 1e12
.save all

.control
run
print @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
print @m.xm3.msky130_fd_pr__nfet_01v8_lvt[vth]
print @m.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
print @m.xm3.msky130_fd_pr__nfet_01v8_lvt[id]
print 1/@m.xm3.msky130_fd_pr__nfet_01v8_lvt[gds]
print 1/@m.xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
print @m.xm3.msky130_fd_pr__nfet_01v8_lvt[gm]
plot vout title "vout"
*plot db(vout/v(net2)) 
*plot 180*cph(vout)/pi
set wr_singlescale
set wr_vecnames
*wrdata /foss/designs/2stageCMOSOpAmp/sim_data/GainvsFreq/gain(max).txt db(vout/v(v+))
*wrdata /foss/designs/2stageCMOSOpAmp/sim_data/sample_waves/a1.3m_f1k_gain700.txt vout
*wrdata /foss/designs/2stageCMOSOpAmp/sim_data/SR/SR.txt vout

.endc
"}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -20 -210 0 0 {name=M1
W=16.5
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
C {isource.sym} -130 -110 0 0 {name=I0 value=100u}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -20 -70 0 0 {name=M3
W=5
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
C {gnd.sym} 0 -20 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -110 -210 0 1 {name=M4
W=16.5
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
C {gnd.sym} -130 -20 0 0 {name=l2 lab=GND}
C {vsource.sym} -70 -40 0 0 {name=V2 value="SIN(0.9 10m 1k)" savecurrent=false}
C {gnd.sym} -70 -10 0 0 {name=l4 lab=GND}
C {gnd.sym} 90 30 0 0 {name=l5 lab=GND}
C {res.sym} 90 -90 0 0 {name=R1
value=9900
footprint=1206
device=resistor
m=1}
C {capa.sym} 190 -90 0 0 {name=C1
m=1
value=15p
footprint=1206
device="ceramic capacitor"}
