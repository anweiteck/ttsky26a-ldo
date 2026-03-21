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
N 0 -250 20 -250 {lab=VDD}
N 20 -250 20 -240 {lab=VDD}
N -0 -180 -0 -130 {lab=vout}
N -0 -40 -0 -20 {lab=GND}
N -10 -80 20 -80 {lab=GND}
N 20 -80 20 -30 {lab=GND}
N 0 -30 20 -30 {lab=GND}
N -60 -270 -60 -260 {lab=VDD}
N -70 -70 -40 -70 {lab=#net1}
N 0 -130 80 -130 {lab=vout}
N 80 -130 90 -130 {lab=vout}
N 90 -130 100 -130 {lab=vout}
N 90 -130 90 -120 {lab=vout}
N 90 -60 90 -50 {lab=GND}
N 100 -130 210 -130 {lab=vout}
N -110 -210 -40 -210 {lab=#net2}
N -120 -70 -70 -70 {lab=#net1}
N -160 -40 -160 -20 {lab=GND}
N -160 -20 -0 -20 {lab=GND}
N -180 -80 -150 -80 {lab=GND}
N -180 -80 -180 -30 {lab=GND}
N -180 -30 -160 -30 {lab=GND}
N -60 -260 0 -260 {lab=VDD}
N -160 -260 -60 -260 {lab=VDD}
N -160 -260 -160 -180 {lab=VDD}
N -160 -120 -160 -100 {lab=#net1}
N 90 -50 90 -20 {lab=GND}
N -160 -110 -90 -110 {lab=#net1}
N -90 -110 -90 -70 {lab=#net1}
N -10 -220 20 -220 {lab=VDD}
N 20 -240 20 -220 {lab=VDD}
N -0 -130 0 -100 {lab=vout}
N 90 -60 150 -70 {lab=GND}
N 150 -70 190 -70 {lab=GND}
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
C {isource.sym} -160 -150 0 0 {name=I0 value=100u}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -20 -70 0 0 {name=M3
W=21
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
C {vsource.sym} -110 -180 0 0 {name=V2 value="SIN(1.3 0.1 1k)" savecurrent=false}
C {gnd.sym} -110 -150 0 0 {name=l4 lab=GND}
C {gnd.sym} 90 -20 0 0 {name=l5 lab=GND}
C {res.sym} 90 -90 0 0 {name=R1
value=20k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -140 -70 0 1 {name=M2
W=21
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -20 -210 0 0 {name=M1
W=23
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
C {capa.sym} 190 -100 0 0 {name=C1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/res_high_po_5p73.sym} 140 -270 0 0 {name=R2
L=200
model=res_high_po_5p73
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 310 -270 0 0 {name=R3
L=200
model=res_high_po_0p69
spiceprefix=X
mult=1}
