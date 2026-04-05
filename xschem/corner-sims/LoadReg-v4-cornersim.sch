v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -150 -10 -80 -10 {lab=vin}
N 110 -10 110 -0 {lab=vout}
N 110 120 110 130 {lab=GND}
N 60 -10 110 -10 {lab=vout}
N -80 -10 -65 -10 {lab=vin}
N 45 -10 60 -10 {lab=vout}
N 110 0 110 60 {lab=vout}
N -70 10 -70 35 {lab=#net1}
N -70 10 -65 10 {lab=#net1}
C {vsource.sym} -150 20 0 0 {name=vin value=1.8 savecurrent=false}
C {gnd.sym} -150 50 0 0 {name=l1 lab=GND}
C {gnd.sym} -10 40 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -150 -10 0 0 {name=p1 sig_type=std_logic lab=vin}
C {gnd.sym} 110 130 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 110 -10 0 1 {name=p2 sig_type=std_logic lab=vout}
C {UREx-LDO-v4-cornersim.sym} 85 0 0 0 {name=X1}
C {isource.sym} 110 90 0 0 {name=I0 value="PULSE(1m 50m 1m 10n 10n 1m 2m 1)"}
C {vsource.sym} -70 65 0 0 {name=vin1 value=0.6 savecurrent=false}
C {gnd.sym} -70 95 0 0 {name=l4 lab=GND}
C {code.sym} 230 130 0 0 {name=s2 only_toplevel=false
value="
.param mc_mm_switch=1
.param mc_pr_switch=1
.param Rload=20
.control
  tran 1u 3m
  wrdata loadreg.csv v(vout)  

  set appendwrite                      

  repeat 100
    tran 1u 3m
    wrdata loadreg.csv v(vout) 
  end
.endc
"}
C {sky130_fd_pr/corner.sym} 360 130 0 0 {name=CORNER only_toplevel=false corner=mc}
