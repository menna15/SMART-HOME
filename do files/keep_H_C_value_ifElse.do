vsim work.keep_h_c_value_ifelse
# vsim work.combined56_ifelse 
# Start time: 17:47:31 on Dec 18,2021
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.combined56_ifelse(design_architecture)
add wave -position insertpoint  \
sim:/keep_h_c_value_ifelse/Clk \
sim:/keep_h_c_value_ifelse/Rst \
sim:/keep_h_c_value_ifelse/SFD \
sim:/keep_h_c_value_ifelse/SRD \
sim:/keep_h_c_value_ifelse/SW \
sim:/keep_h_c_value_ifelse/SFA \
sim:/keep_h_c_value_ifelse/ST \
sim:/keep_h_c_value_ifelse/fdoor \
sim:/keep_h_c_value_ifelse/rdoor \
sim:/keep_h_c_value_ifelse/winbuzz \
sim:/keep_h_c_value_ifelse/alarmbuzz \
sim:/keep_h_c_value_ifelse/heater \
sim:/keep_h_c_value_ifelse/cooler \
sim:/keep_h_c_value_ifelse/display \
sim:/keep_h_c_value_ifelse/state \
sim:/keep_h_c_value_ifelse/next_state
force -freeze sim:/keep_h_c_value_ifelse/Clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/keep_h_c_value_ifelse/Rst 1 0
run
force -freeze sim:/keep_h_c_value_ifelse/Rst 0 0
force -freeze sim:/keep_h_c_value_ifelse/SRD 1 0
force -freeze sim:/keep_h_c_value_ifelse/SFD 0 0
force -freeze sim:/keep_h_c_value_ifelse/SW 0 0
force -freeze sim:/keep_h_c_value_ifelse/SFA 0 0
force -freeze sim:/keep_h_c_value_ifelse/ST 0110011 0
run
force -freeze sim:/keep_h_c_value_ifelse/SFD 1 0
force -freeze sim:/keep_h_c_value_ifelse/SRD 0 0
force -freeze sim:/keep_h_c_value_ifelse/SW 0 0
force -freeze sim:/keep_h_c_value_ifelse/SFA 0 0
force -freeze sim:/keep_h_c_value_ifelse/ST 0110010 0
run
force -freeze sim:/keep_h_c_value_ifelse/SFD 0 0
force -freeze sim:/keep_h_c_value_ifelse/SRD 0 0
force -freeze sim:/keep_h_c_value_ifelse/SW 0 0
force -freeze sim:/keep_h_c_value_ifelse/SFA 0 0
force -freeze sim:/keep_h_c_value_ifelse/ST 0110010 0
run
run
force -freeze sim:/keep_h_c_value_ifelse/SFD 0 0
force -freeze sim:/keep_h_c_value_ifelse/SRD 0 0
force -freeze sim:/keep_h_c_value_ifelse/SW 0 0
force -freeze sim:/keep_h_c_value_ifelse/SFA 1 0
force -freeze sim:/keep_h_c_value_ifelse/ST 0110011 0
run
force -freeze sim:/keep_h_c_value_ifelse/SFD 0 0
force -freeze sim:/keep_h_c_value_ifelse/SRD 0 0
force -freeze sim:/keep_h_c_value_ifelse/SW 0 0
force -freeze sim:/keep_h_c_value_ifelse/SFA 0 0
force -freeze sim:/keep_h_c_value_ifelse/ST 0110011 0
run
force -freeze sim:/keep_h_c_value_ifelse/SFD 1 0
force -freeze sim:/keep_h_c_value_ifelse/SRD 0 0
force -freeze sim:/keep_h_c_value_ifelse/SW 0 0
force -freeze sim:/keep_h_c_value_ifelse/SFA 0 0
force -freeze sim:/keep_h_c_value_ifelse/ST 0110011 0
force -freeze sim:/keep_h_c_value_ifelse/SFD 1 0
force -freeze sim:/keep_h_c_value_ifelse/SRD 0 0
force -freeze sim:/keep_h_c_value_ifelse/SW 0 0
force -freeze sim:/keep_h_c_value_ifelse/SFA 0 0
force -freeze sim:/keep_h_c_value_ifelse/ST 0100010 0
run
force -freeze sim:/keep_h_c_value_ifelse/SFD 0 0
force -freeze sim:/keep_h_c_value_ifelse/SRD 0 0
force -freeze sim:/keep_h_c_value_ifelse/SW 0 0
force -freeze sim:/keep_h_c_value_ifelse/SFA 0 0
force -freeze sim:/keep_h_c_value_ifelse/ST 0100010 0
run
force -freeze sim:/keep_h_c_value_ifelse/ST 10#80 0
run