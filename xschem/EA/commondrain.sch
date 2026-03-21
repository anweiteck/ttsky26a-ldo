v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -10 160 -10 170 {lab=GND}
N -10 -90 -10 10 {lab=VDD}
N -20 30 10 30 {lab=vout}
N 10 30 10 80 {lab=vout}
N -10 80 10 80 {lab=vout}
N -10 70 -10 80 {lab=vout}
N -10 80 -10 100 {lab=vout}
N 10 80 120 80 {lab=vout}
N -130 40 -50 40 {lab=#net1}
N 70 80 70 100 {lab=vout}
N 70 160 120 160 {lab=GND}
N 120 80 120 100 {lab=vout}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -30 40 0 0 {name=M5
W=10
L=1
body=GND
nf=1
mult=11
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {gnd.sym} -10 170 0 0 {name=l5 lab=GND}
C {isource.sym} -10 130 0 0 {name=I1 value=500u}
C {code.sym} -330 -90 0 0 {name=s1 only_toplevel=false 
value= "

.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.tran 5u 3m
.save all

.control
run
print @m.xm5.msky130_fd_pr__nfet_01v8_lvt[vth]
plot vout title "vout"

set wr_singlescale
set wr_vecnames
*wrdata /foss/designs/2stageCMOSOpAmp/sim_data/GainvsFreq/gain(max).txt db(vout/v(v+))
*wrdata /foss/designs/2stageCMOSOpAmp/sim_data/sample_waves/a1.3m_f1k_gain700.txt vout
*wrdata /foss/designs/2stageCMOSOpAmp/sim_data/SR/SR.txt vout

.endc
"}
C {vsource.sym} -130 70 0 0 {name=V2 value="SIN(1.2 0.1 1k)" savecurrent=false}
C {gnd.sym} -130 100 0 0 {name=l1 lab=GND}
C {ipin.sym} -10 -90 1 0 {name=p1 lab=VDD}
C {vsource.sym} -260 120 0 0 {name=V1 value=1.8 savecurrent=false}
C {ipin.sym} -260 90 1 0 {name=p10 lab=VDD}
C {gnd.sym} -260 150 0 0 {name=l2 lab=GND}
C {ipin.sym} 120 80 2 0 {name=p2 lab=vout}
C {res.sym} 120 130 0 0 {name=R1
value=1M
footprint=1206
device=resistor
m=1}
C {capa.sym} 70 130 0 0 {name=C1
m=1
value=15p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 120 160 0 0 {name=l3 lab=GND}
