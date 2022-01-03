vsim -gui work.try_op1
add wave -position insertpoint  \
sim:/try_op1/Clk \
sim:/try_op1/Rst \
sim:/try_op1/SFD \
sim:/try_op1/SRD \
sim:/try_op1/SW \
sim:/try_op1/SFA \
sim:/try_op1/ST \
sim:/try_op1/fdoor \
sim:/try_op1/rdoor \
sim:/try_op1/winbuzz \
sim:/try_op1/alarmbuzz \
sim:/try_op1/heater \
sim:/try_op1/cooler \
sim:/try_op1/display \
sim:/try_op1/current_state \
sim:/try_op1/next_state
force -freeze sim:/try_op1/Clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/try_op1/Rst 1 0
force -freeze sim:/try_op1/SFD 1 0
force -freeze sim:/try_op1/SRD 1 0
force -freeze sim:/try_op1/SW 1 0
force -freeze sim:/try_op1/SFA 1 0
force -freeze sim:/try_op1/ST 1100000 0
run
force -freeze sim:/try_op1/Rst 0 0
run
run
run
run
run
force -freeze sim:/try_op1/SFD 0 0
force -freeze sim:/try_op1/SRD 0 0
force -freeze sim:/try_op1/SW 0 0
force -freeze sim:/try_op1/ST 0011100 0
run
run
force -freeze sim:/try_op1/Rst 1 0
run
run