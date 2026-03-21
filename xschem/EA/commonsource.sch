v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
} 140 -70 0 0 0.4 0.4 {}
T {Saturation
NMOS: Vds>Vgs-Vth
PMOS: |Vds|>|Vgs|-|Vth|} -360 -360 0 0 0.4 0.4 {}
T {pmos is off; vgs supp to be > vth 
EA output should be 1.3-1.6?} 850 -330 0 0 0.4 0.4 {}
T {pmos is off; vgs supp to be > vth 
EA output should be 1.3-1.6?} 770 -390 0 0 0.4 0.4 {}
T {output should be centered at 1.45

} -80 -360 0 0 0.4 0.4 {}
N -210 -210 -40 -210 {lab=#net1}
N 0 -250 0 -240 {lab=VDD}
N -310 -260 0 -260 {lab=VDD}
N 0 -260 0 -250 {lab=VDD}
N 0 -210 20 -210 {lab=VDD}
N 20 -220 20 -210 {lab=VDD}
N 20 -240 20 -220 {lab=VDD}
N 0 -250 20 -250 {lab=VDD}
N 20 -250 20 -240 {lab=VDD}
N -460 -260 -460 -20 {lab=VDD}
N -460 -260 -310 -260 {lab=VDD}
N -260 -130 -130 -130 {lab=#net1}
N -70 -130 -0 -130 {lab=vout}
N -210 -210 -210 -130 {lab=#net1}
N -0 -180 -0 -130 {lab=vout}
N -460 90 -400 90 {lab=#net2}
N -400 90 -400 130 {lab=#net2}
N -480 130 -480 170 {lab=GND}
N -480 170 -460 170 {lab=GND}
N -460 40 -460 90 {lab=#net2}
N -460 90 -460 100 {lab=#net2}
N -480 120 -480 130 {lab=GND}
N -480 120 -450 120 {lab=GND}
N -420 130 -400 130 {lab=#net2}
N -400 130 -40 130 {lab=#net2}
N -460 160 -460 170 {lab=GND}
N -460 170 -260 170 {lab=GND}
N -260 170 -260 180 {lab=GND}
N 0 160 0 170 {lab=GND}
N -260 170 -0 170 {lab=GND}
N -10 120 20 120 {lab=GND}
N 20 120 20 130 {lab=GND}
N 20 130 20 170 {lab=GND}
N 0 170 20 170 {lab=GND}
N 0 -50 0 100 {lab=vout}
N 0 -130 -0 -50 {lab=vout}
N 0 -130 0 -90 {lab=vout}
N 20 -30 40 -30 {lab=GND}
C {vsource.sym} -650 -70 0 0 {name=V1 value="\{VDD\}" savecurrent=false}
C {ipin.sym} -650 -100 1 0 {name=p10 lab=VDD}
C {gnd.sym} -650 -40 0 0 {name=l1 lab=GND}
C {ipin.sym} -460 -260 0 0 {name=p1 lab=VDD}
C {vsource.sym} -260 -100 0 0 {name=V2 value="SIN(1.15 0.05 1k)" savecurrent=false}
C {gnd.sym} -260 -70 0 0 {name=l2 lab=GND}
C {ipin.sym} 0 -130 2 0 {name=p2 lab=vout}
C {code.sym} 130 -250 0 0 {name=s1 only_toplevel=false 
value= "

.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.param VDD=1.8 amp=1.2 R=100k L=0.2
.tran 5u 3m
*.dc R 1 1M 10k
.save all

.control
run
print @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
print @m.xm3.msky130_fd_pr__nfet_01v8_lvt[vth]
*plot vout-(v(net2)-@m.xm7.msky130_fd_pr__nfet_01v8[vth])
print 1/@m.xm3.msky130_fd_pr__nfet_01v8_lvt[gds]
print @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm] * (@m.xm1.msky130_fd_pr__pfet_01v8_lvt[gds] + @m.xm3.msky130_fd_pr__nfet_01v8_lvt[gds])^(-1)
plot vout title "vout"
*plot db(vout/v(v+)) 
*plot 180*cph(vout)/pi
set wr_singlescale
set wr_vecnames
*wrdata /foss/designs/2stageCMOSOpAmp/sim_data/GainvsFreq/gain(max).txt db(vout/v(v+))
*wrdata /foss/designs/2stageCMOSOpAmp/sim_data/sample_waves/a1.3m_f1k_gain700.txt vout
*wrdata /foss/designs/2stageCMOSOpAmp/sim_data/SR/SR.txt vout

.endc
"}
C {capa.sym} -100 -130 3 0 {name=C1
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -20 -210 0 0 {name=M1
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
C {isource.sym} -460 10 0 0 {name=I0 value=4u}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -440 130 0 1 {name=M2
W=1.2
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
C {gnd.sym} -260 180 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -20 130 0 0 {name=M3
W=3.53
L=0.23
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
C {gnd.sym} 40 -30 0 0 {name=l3 lab=GND}
C {res.sym} 40 -60 0 0 {name=R1
value=1M
footprint=1206
device=resistor
m=1}
C {capa.sym} 20 -60 0 0 {name=C2
m=1
value=15p
footprint=1206
device="ceramic capacitor"}
