v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for plotting vout/vin, quiescent current, and efficiency} -150 -50 0 0 0.2 0.2 {}
N -150 -10 -80 -10 {lab=vin}
N 60 -10 120 -10 {lab=vout}
N 45 -10 60 -10 {lab=vout}
N -80 -10 -65 -10 {lab=vin}
C {code.sym} 220 -30 0 0 {name=s1 only_toplevel=false 
value= "

.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.param Rload = 20
.dc vin 0.5 5 0.1
*.tran 5u 10m

.control
run
let Rload = 20
let iout = vout/Rload
let iq = (-i(vin))-iout
let eff = (iout*vout*100)/((iout+iq)*vin)

plot v(vout) 
plot iq
plot eff

.endc
"}
C {vsource.sym} -150 20 0 0 {name=vin value=0 savecurrent=false}
C {gnd.sym} -150 50 0 0 {name=l1 lab=GND}
C {gnd.sym} -10 40 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 120 -10 2 0 {name=p6 sig_type=std_logic lab=vout}
C {lab_wire.sym} -150 -10 0 0 {name=p1 sig_type=std_logic lab=vin}
C {res.sym} 110 20 0 0 {name=R2
value=\{Rload\}
footprint=1206
device=resistor
m=1}
C {gnd.sym} 110 50 0 0 {name=l3 lab=GND}
C {UREx-LDO-v2.sym} 85 0 0 0 {name=X1}
