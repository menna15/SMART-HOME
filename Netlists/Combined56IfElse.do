vsim work.combined56_ifelse
# vsim work.combined56_ifelse 
# Start time: 17:47:31 on Dec 18,2021
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.combined56_ifelse(design_architecture)
add wave -position insertpoint  \
sim:/combined56_ifelse/clk \
sim:/combined56_ifelse/Rst \
sim:/combined56_ifelse/SFD \
sim:/combined56_ifelse/SRD \
sim:/combined56_ifelse/SW \
sim:/combined56_ifelse/SFA \
sim:/combined56_ifelse/ST \
sim:/combined56_ifelse/fdoor \
sim:/combined56_ifelse/rdoor \
sim:/combined56_ifelse/winbuzz \
sim:/combined56_ifelse/alarmbuzz \
sim:/combined56_ifelse/heater \
sim:/combined56_ifelse/cooler \
sim:/combined56_ifelse/display
force -freeze sim:/combined56_ifelse/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/combined56_ifelse/Rst 1 0
run
force -freeze sim:/combined56_ifelse/Rst 0 0
force -freeze sim:/combined56_ifelse/SRD 1 0
force -freeze sim:/combined56_ifelse/SFD 0 0
force -freeze sim:/combined56_ifelse/SW 0 0
force -freeze sim:/combined56_ifelse/SFA 0 0
force -freeze sim:/combined56_ifelse/ST 0110011 0
run
force -freeze sim:/combined56_ifelse/SFD 1 0
force -freeze sim:/combined56_ifelse/SRD 0 0
force -freeze sim:/combined56_ifelse/SW 0 0
force -freeze sim:/combined56_ifelse/SFA 0 0
force -freeze sim:/combined56_ifelse/ST 0110010 0
run
force -freeze sim:/combined56_ifelse/SFD 0 0
force -freeze sim:/combined56_ifelse/SRD 0 0
force -freeze sim:/combined56_ifelse/SW 0 0
force -freeze sim:/combined56_ifelse/SFA 0 0
force -freeze sim:/combined56_ifelse/ST 0110010 0
run
run
force -freeze sim:/combined56_ifelse/SFD 0 0
force -freeze sim:/combined56_ifelse/SRD 0 0
force -freeze sim:/combined56_ifelse/SW 0 0
force -freeze sim:/combined56_ifelse/SFA 1 0
force -freeze sim:/combined56_ifelse/ST 0110011 0
run
force -freeze sim:/combined56_ifelse/SFD 0 0
force -freeze sim:/combined56_ifelse/SRD 0 0
force -freeze sim:/combined56_ifelse/SW 0 0
force -freeze sim:/combined56_ifelse/SFA 0 0
force -freeze sim:/combined56_ifelse/ST 0110011 0
run
force -freeze sim:/combined56_ifelse/SFD 1 0
force -freeze sim:/combined56_ifelse/SRD 0 0
force -freeze sim:/combined56_ifelse/SW 0 0
force -freeze sim:/combined56_ifelse/SFA 0 0
force -freeze sim:/combined56_ifelse/ST 0110011 0
force -freeze sim:/combined56_ifelse/SFD 1 0
force -freeze sim:/combined56_ifelse/SRD 0 0
force -freeze sim:/combined56_ifelse/SW 0 0
force -freeze sim:/combined56_ifelse/SFA 0 0
force -freeze sim:/combined56_ifelse/ST 0100010 0
run
force -freeze sim:/combined56_ifelse/SFD 0 0
force -freeze sim:/combined56_ifelse/SRD 0 0
force -freeze sim:/combined56_ifelse/SW 0 0
force -freeze sim:/combined56_ifelse/SFA 0 0
force -freeze sim:/combined56_ifelse/ST 0100010 0
run