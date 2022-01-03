vsim -gui work.Separate56
# vsim -gui work.Separate67 
# Start time: 10:55:57 on Dec 18,2021
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.Separate67(behavioral)
add wave -position insertpoint  \
sim:/Separate56/clk \
sim:/Separate56/Rst \
sim:/Separate56/SFD \
sim:/Separate56/SRD \
sim:/Separate56/SW \
sim:/Separate56/SFA \
sim:/Separate56/ST \
sim:/Separate56/fdoor \
sim:/Separate56/rdoor \
sim:/Separate56/winbuzz \
sim:/Separate56/alarmbuzz \
sim:/Separate56/heater \
sim:/Separate56/cooler \
sim:/Separate56/display 
force -freeze sim:/Separate56/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/Separate56/Rst 1 0
run
force -freeze sim:/Separate56/SFD 1 0
force -freeze sim:/Separate56/SRD 1 0
force -freeze sim:/Separate56/SW 0 0
force -freeze sim:/Separate56/SFA 1 0
force -freeze sim:/Separate56/ST 0111100 0
force -freeze sim:/Separate56/Rst 0 0
run
force -freeze sim:/Separate56/SFD 1 0
run
force -freeze sim:/Separate56/SW 1 0
run
run
force -freeze sim:/Separate56/SRD 0 0
force -freeze sim:/Separate56/SW 0 0
force -freeze sim:/Separate56/SFA 0 0
force -freeze sim:/Separate56/ST 1111100 0
run
run
force -freeze sim:/Separate56/SFD 0 0
force -freeze sim:/Separate56/ST 0001100 0
run
force -freeze sim:/Separate56/ST 0111100 0
run
run
force -freeze sim:/Separate56/SW 1 0
run
run
run

