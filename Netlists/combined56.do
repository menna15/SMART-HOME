vsim -gui work.Combined56
# vsim -gui work.Combined67 
# Start time: 11:45:42 on Dec 18,2021
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.Combined67(behavioral)
add wave -position insertpoint  \
sim:/Combined56/Clk \
sim:/Combined56/Rst \
sim:/Combined56/SFD \
sim:/Combined56/SRD \
sim:/Combined56/SW \
sim:/Combined56/SFA \
sim:/Combined56/ST \
sim:/Combined56/fdoor \
sim:/Combined56/rdoor \
sim:/Combined56/winbuzz \
sim:/Combined56/alarmbuzz \
sim:/Combined56/heater \
sim:/Combined56/cooler \
sim:/Combined56/display
force -freeze sim:/Combined56/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/Combined56/Rst 1 0
run
force -freeze sim:/Combined56/SFD 1 0
force -freeze sim:/Combined56/SRD 0 0
force -freeze sim:/Combined56/SW 0 0
force -freeze sim:/Combined56/SFA 0 0
force -freeze sim:/Combined56/ST 0001111 0
force -freeze sim:/Combined56/Rst 0 0
run
force -freeze sim:/Combined56/SFD 0 0
run
force -freeze sim:/Combined56/ST 1101111 0
force -freeze sim:/Combined56/SW 1 0
run
force -freeze sim:/Combined56/SW 0 0
run
run