vsim work.seperate56_ifelse
add wave -position insertpoint  \
sim:/seperate56_ifelse/Clk \
sim:/seperate56_ifelse/Rst \
sim:/seperate56_ifelse/SFD \
sim:/seperate56_ifelse/SRD \
sim:/seperate56_ifelse/SW \
sim:/seperate56_ifelse/SFA \
sim:/seperate56_ifelse/ST \
sim:/seperate56_ifelse/fdoor \
sim:/seperate56_ifelse/rdoor \
sim:/seperate56_ifelse/winbuzz \
sim:/seperate56_ifelse/alarmbuzz \
sim:/seperate56_ifelse/heater \
sim:/seperate56_ifelse/cooler \
sim:/seperate56_ifelse/display \
sim:/seperate56_ifelse/state \
sim:/seperate56_ifelse/next_state
force -freeze sim:/seperate56_ifelse/Clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/seperate56_ifelse/Rst 1 0
run
force -freeze sim:/seperate56_ifelse/Rst 0 0
force -freeze sim:/seperate56_ifelse/SRD 1 0
force -freeze sim:/seperate56_ifelse/SFD 0 0
force -freeze sim:/seperate56_ifelse/SW 0 0
force -freeze sim:/seperate56_ifelse/SFA 0 0
force -freeze sim:/seperate56_ifelse/ST 0110011 0
run
force -freeze sim:/seperate56_ifelse/SFD 1 0
force -freeze sim:/seperate56_ifelse/SRD 0 0
force -freeze sim:/seperate56_ifelse/SW 0 0
force -freeze sim:/seperate56_ifelse/SFA 0 0
force -freeze sim:/seperate56_ifelse/ST 0110010 0
run
force -freeze sim:/seperate56_ifelse/SFD 0 0
force -freeze sim:/seperate56_ifelse/SRD 0 0
force -freeze sim:/seperate56_ifelse/SW 0 0
force -freeze sim:/seperate56_ifelse/SFA 0 0
force -freeze sim:/seperate56_ifelse/ST 0110010 0
run
run
force -freeze sim:/seperate56_ifelse/SFD 0 0
force -freeze sim:/seperate56_ifelse/SRD 0 0
force -freeze sim:/seperate56_ifelse/SW 0 0
force -freeze sim:/seperate56_ifelse/SFA 1 0
force -freeze sim:/seperate56_ifelse/ST 0110011 0
run
force -freeze sim:/seperate56_ifelse/SFD 0 0
force -freeze sim:/seperate56_ifelse/SRD 0 0
force -freeze sim:/seperate56_ifelse/SW 0 0
force -freeze sim:/seperate56_ifelse/SFA 0 0
force -freeze sim:/seperate56_ifelse/ST 0110011 0
run
force -freeze sim:/seperate56_ifelse/SFD 1 0
force -freeze sim:/seperate56_ifelse/SRD 0 0
force -freeze sim:/seperate56_ifelse/SW 0 0
force -freeze sim:/seperate56_ifelse/SFA 0 0
force -freeze sim:/seperate56_ifelse/ST 0110011 0
force -freeze sim:/seperate56_ifelse/SFD 1 0
force -freeze sim:/seperate56_ifelse/SRD 0 0
force -freeze sim:/seperate56_ifelse/SW 0 0
force -freeze sim:/seperate56_ifelse/SFA 0 0
force -freeze sim:/seperate56_ifelse/ST 0100010 0
run
force -freeze sim:/seperate56_ifelse/SFD 0 0
force -freeze sim:/seperate56_ifelse/SRD 0 0
force -freeze sim:/seperate56_ifelse/SW 0 0
force -freeze sim:/seperate56_ifelse/SFA 0 0
force -freeze sim:/seperate56_ifelse/ST 0100010 0
run