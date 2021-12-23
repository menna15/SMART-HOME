vsim work.mealy
# vsim work.mealy 
# Start time: 19:11:08 on Dec 18,2021
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.mealy(mealy_arch)
add wave -position insertpoint  \
sim:/mealy/Clk \
sim:/mealy/Rst \
sim:/mealy/SFD \
sim:/mealy/SRD \
sim:/mealy/SW \
sim:/mealy/SFA \
sim:/mealy/ST \
sim:/mealy/fdoor \
sim:/mealy/rdoor \
sim:/mealy/winbuzz \
sim:/mealy/alarmbuzz \
sim:/mealy/heater \
sim:/mealy/cooler \
sim:/mealy/display
force -freeze sim:/mealy/Clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/mealy/Rst 1 0
force -freeze sim:/mealy/ST 0110010 0
run
force -freeze sim:/mealy/Rst 0 0
force -freeze sim:/mealy/SFD 1 0
force -freeze sim:/mealy/SRD 0 0
force -freeze sim:/mealy/SW 0 0
force -freeze sim:/mealy/SFA 0 0
force -freeze sim:/mealy/ST 0110010 0
run
force -freeze sim:/mealy/Rst 0 0
force -freeze sim:/mealy/SFD 1 0
force -freeze sim:/mealy/SRD 0 0
force -freeze sim:/mealy/SW 1 0
force -freeze sim:/mealy/SFA 1 0
force -freeze sim:/mealy/ST 0110010 0
run
run
force -freeze sim:/mealy/Rst 0 0
force -freeze sim:/mealy/SFD 0 0
force -freeze sim:/mealy/SRD 0 0
force -freeze sim:/mealy/SW 0 0
force -freeze sim:/mealy/SFA 0 0
force -freeze sim:/mealy/ST 0110000 0
run
force -freeze sim:/mealy/Rst 0 0
force -freeze sim:/mealy/SFD 1 0
force -freeze sim:/mealy/SRD 0 0
force -freeze sim:/mealy/SW 0 0
force -freeze sim:/mealy/SFA 0 0
force -freeze sim:/mealy/ST 0110000 0
run
force -freeze sim:/mealy/Rst 0 0
force -freeze sim:/mealy/SFD 1 0
force -freeze sim:/mealy/SRD 1 0
force -freeze sim:/mealy/SW 0 0
force -freeze sim:/mealy/SFA 0 0
force -freeze sim:/mealy/ST 1000110 0
run
force -freeze sim:/mealy/Rst 0 0
force -freeze sim:/mealy/SFD 0 0
force -freeze sim:/mealy/SRD 1 0
force -freeze sim:/mealy/SW 1 0
force -freeze sim:/mealy/SFA 0 0
force -freeze sim:/mealy/ST 1000111 0
run
force -freeze sim:/mealy/Rst 0 0
force -freeze sim:/mealy/SFD 0 0
force -freeze sim:/mealy/SRD 0 0
force -freeze sim:/mealy/SW 0 0
force -freeze sim:/mealy/SFA 0 0
force -freeze sim:/mealy/ST 1000111 0
run
force -freeze sim:/mealy/Rst 0 0
force -freeze sim:/mealy/SFD 0 0
force -freeze sim:/mealy/SRD 0 0
force -freeze sim:/mealy/SW 0 0
force -freeze sim:/mealy/SFA 1 0
force -freeze sim:/mealy/ST 1000111 0
run
force -freeze sim:/mealy/Rst 0 0
force -freeze sim:/mealy/SFD 0 0
force -freeze sim:/mealy/SRD 0 0
force -freeze sim:/mealy/SW 1 0
force -freeze sim:/mealy/SFA 1 0
force -freeze sim:/mealy/ST 1000110 0
force -freeze sim:/mealy/Rst 0 0
force -freeze sim:/mealy/SFD 0 0
force -freeze sim:/mealy/SRD 0 0
force -freeze sim:/mealy/SW 1 0
force -freeze sim:/mealy/SFA 0 0
force -freeze sim:/mealy/ST 1000110 0
run