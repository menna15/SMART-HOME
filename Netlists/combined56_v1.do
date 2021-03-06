vsim -gui work.combined56_v1
add wave -position insertpoint  \
sim:/combined56_v1/Clk \
sim:/combined56_v1/Rst \
sim:/combined56_v1/SFD \
sim:/combined56_v1/SRD \
sim:/combined56_v1/SW \
sim:/combined56_v1/SFA \
sim:/combined56_v1/ST \
sim:/combined56_v1/fdoor \
sim:/combined56_v1/rdoor \
sim:/combined56_v1/winbuzz \
sim:/combined56_v1/alarmbuzz \
sim:/combined56_v1/heater \
sim:/combined56_v1/cooler \
sim:/combined56_v1/display 
force -freeze sim:/combined56_v1/Clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/combined56_v1/Rst 1 0
run
force -freeze sim:/combined56_v1/SFD 1 0
force -freeze sim:/combined56_v1/SRD 0 0
force -freeze sim:/combined56_v1/SW 0 0
force -freeze sim:/combined56_v1/SFA 0 0
force -freeze sim:/combined56_v1/ST 0001111 0
force -freeze sim:/combined56_v1/Rst 0 0
run
force -freeze sim:/combined56_v1/SFD 0 0
run
force -freeze sim:/combined56_v1/ST 1101111 0
force -freeze sim:/combined56_v1/SW 1 0
run
force -freeze sim:/combined56_v1/SW 0 0
run
run