v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for plotting Vout against Iout} -110 -60 0 0 0.2 0.2 {}
N -150 -10 -80 -10 {lab=vin}
N 110 -10 110 -0 {lab=vout}
N 110 60 110 70 {lab=GND}
N 60 -10 110 -10 {lab=vout}
N 45 -10 60 -10 {lab=vout}
N -80 -10 -65 -10 {lab=vin}
C {code.sym} 220 -30 0 0 {name=s1 only_toplevel=false 
value= "

.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.dc Iload 1u 1m 1u

.control
run
plot v(vout) 
.endc
"}
C {vsource.sym} -150 20 0 0 {name=vin value=1.8 savecurrent=false}
C {gnd.sym} -150 50 0 0 {name=l1 lab=GND}
C {gnd.sym} -10 40 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -150 -10 0 0 {name=p1 sig_type=std_logic lab=vin}
C {gnd.sym} 110 70 0 0 {name=l3 lab=GND}
C {isource.sym} 110 30 0 0 {name=Iload value=0}
C {lab_wire.sym} 110 -10 0 1 {name=p2 sig_type=std_logic lab=vout}
C {UREx-LDO-v2.sym} 85 0 0 0 {}
