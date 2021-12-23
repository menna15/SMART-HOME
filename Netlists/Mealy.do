vsim work.Mealy
# vsim work.Mealy 
# Start time: 19:11:08 on Dec 18,2021
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.Mealy(Mealy_arch)
add wave -position insertpoint  \
sim:/Mealy/clk \
sim:/Mealy/Rst \
sim:/Mealy/SFD \
sim:/Mealy/SRD \
sim:/Mealy/SW \
sim:/Mealy/SFA \
sim:/Mealy/ST \
sim:/Mealy/fdoor \
sim:/Mealy/rdoor \
sim:/Mealy/winbuzz \
sim:/Mealy/alarmbuzz \
sim:/Mealy/heater \
sim:/Mealy/cooler \
sim:/Mealy/display
force -freeze sim:/Mealy/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/Mealy/Rst 1 0
force -freeze sim:/Mealy/ST 0110010 0
run
force -freeze sim:/Mealy/Rst 0 0
force -freeze sim:/Mealy/SFD 1 0
force -freeze sim:/Mealy/SRD 0 0
force -freeze sim:/Mealy/SW 0 0
force -freeze sim:/Mealy/SFA 0 0
force -freeze sim:/Mealy/ST 0110010 0
run
force -freeze sim:/Mealy/Rst 0 0
force -freeze sim:/Mealy/SFD 1 0
force -freeze sim:/Mealy/SRD 0 0
force -freeze sim:/Mealy/SW 1 0
force -freeze sim:/Mealy/SFA 1 0
force -freeze sim:/Mealy/ST 0110010 0
run
run
force -freeze sim:/Mealy/Rst 0 0
force -freeze sim:/Mealy/SFD 0 0
force -freeze sim:/Mealy/SRD 0 0
force -freeze sim:/Mealy/SW 0 0
force -freeze sim:/Mealy/SFA 0 0
force -freeze sim:/Mealy/ST 0110000 0
run
force -freeze sim:/Mealy/Rst 0 0
force -freeze sim:/Mealy/SFD 1 0
force -freeze sim:/Mealy/SRD 0 0
force -freeze sim:/Mealy/SW 0 0
force -freeze sim:/Mealy/SFA 0 0
force -freeze sim:/Mealy/ST 0110000 0
run
force -freeze sim:/Mealy/Rst 0 0
force -freeze sim:/Mealy/SFD 1 0
force -freeze sim:/Mealy/SRD 1 0
force -freeze sim:/Mealy/SW 0 0
force -freeze sim:/Mealy/SFA 0 0
force -freeze sim:/Mealy/ST 1000110 0
run
force -freeze sim:/Mealy/Rst 0 0
force -freeze sim:/Mealy/SFD 0 0
force -freeze sim:/Mealy/SRD 1 0
force -freeze sim:/Mealy/SW 1 0
force -freeze sim:/Mealy/SFA 0 0
force -freeze sim:/Mealy/ST 1000111 0
run
force -freeze sim:/Mealy/Rst 0 0
force -freeze sim:/Mealy/SFD 0 0
force -freeze sim:/Mealy/SRD 0 0
force -freeze sim:/Mealy/SW 0 0
force -freeze sim:/Mealy/SFA 0 0
force -freeze sim:/Mealy/ST 1000111 0
run
force -freeze sim:/Mealy/Rst 0 0
force -freeze sim:/Mealy/SFD 0 0
force -freeze sim:/Mealy/SRD 0 0
force -freeze sim:/Mealy/SW 0 0
force -freeze sim:/Mealy/SFA 1 0
force -freeze sim:/Mealy/ST 1000111 0
run
force -freeze sim:/Mealy/Rst 0 0
force -freeze sim:/Mealy/SFD 0 0
force -freeze sim:/Mealy/SRD 0 0
force -freeze sim:/Mealy/SW 1 0
force -freeze sim:/Mealy/SFA 1 0
force -freeze sim:/Mealy/ST 1000110 0
force -freeze sim:/Mealy/Rst 0 0
force -freeze sim:/Mealy/SFD 0 0
force -freeze sim:/Mealy/SRD 0 0
force -freeze sim:/Mealy/SW 1 0
force -freeze sim:/Mealy/SFA 0 0
force -freeze sim:/Mealy/ST 1000110 0
run