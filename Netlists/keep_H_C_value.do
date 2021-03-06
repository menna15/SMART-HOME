vsim -gui work.keep_H_C_value
# vsim -gui work.combined67 
# Start time: 11:45:42 on Dec 18,2021
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.combined67(behavioral)
add wave -position insertpoint  \
sim:/keep_H_C_value/Clk \
sim:/keep_H_C_value/Rst \
sim:/keep_H_C_value/SFD \
sim:/keep_H_C_value/SRD \
sim:/keep_H_C_value/SW \
sim:/keep_H_C_value/SFA \
sim:/keep_H_C_value/ST \
sim:/keep_H_C_value/fdoor \
sim:/keep_H_C_value/rdoor \
sim:/keep_H_C_value/winbuzz \
sim:/keep_H_C_value/alarmbuzz \
sim:/keep_H_C_value/heater \
sim:/keep_H_C_value/cooler \
sim:/keep_H_C_value/display
force -freeze sim:/keep_H_C_value/Clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/keep_H_C_value/Rst 1 0
run
force -freeze sim:/keep_H_C_value/SFD 1 0
force -freeze sim:/keep_H_C_value/SRD 0 0
force -freeze sim:/keep_H_C_value/SW 0 0
force -freeze sim:/keep_H_C_value/SFA 0 0
force -freeze sim:/keep_H_C_value/ST 0001111 0
force -freeze sim:/keep_H_C_value/Rst 0 0
run
force -freeze sim:/keep_H_C_value/SFD 0 0
run
force -freeze sim:/keep_H_C_value/ST 1101111 0
force -freeze sim:/keep_H_C_value/SW 1 0
run
force -freeze sim:/keep_H_C_value/SW 0 0
run
force -freeze sim:/keep_H_C_value/SFD 1 0
run