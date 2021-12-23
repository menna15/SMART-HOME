#
# Created by 
#   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Thu Dec 23 21:26:04 2021
# (C) Mentor Graphics Corporation
#
set_units -time ns -capacitance ff -resistance kohm -power nW -voltage V -current mA
create_clock -period 1 -waveform {0 0.5} -name vsysclk 
create_clock -period 1.5 -waveform {0 0.75} -name sysclk [get_ports clk]
group_path -name I2R -from [list [get_ports {ST[0]}] [get_ports {ST[1]}] [get_ports {ST[2]}] [get_ports {ST[3]}] [get_ports {ST[4]}] [get_ports {ST[5]}] [get_ports {ST[6]}] [get_ports SFA] [get_ports SW] [get_ports SRD] [get_ports SFD] [get_ports Rst] [get_ports clk]]
group_path -name I2O -from [list [get_ports {ST[0]}] [get_ports {ST[1]}] [get_ports {ST[2]}] [get_ports {ST[3]}] [get_ports {ST[4]}] [get_ports {ST[5]}] [get_ports {ST[6]}] [get_ports SFA] [get_ports SW] [get_ports SRD] [get_ports SFD] [get_ports Rst] [get_ports clk]]  -to [list [get_ports {display[0]}] [get_ports {display[1]}] [get_ports {display[2]}] [get_ports cooler] [get_ports heater] [get_ports alarmbuzz] [get_ports winbuzz] [get_ports rdoor] [get_ports fdoor]]
group_path -name R2O -to [list [get_ports {display[0]}] [get_ports {display[1]}] [get_ports {display[2]}] [get_ports cooler] [get_ports heater] [get_ports alarmbuzz] [get_ports winbuzz] [get_ports rdoor] [get_ports fdoor]]
set_load 10 [get_ports fdoor]
set_load 10 [get_ports rdoor]
set_load 10 [get_ports winbuzz]
set_load 10 [get_ports alarmbuzz]
set_load 10 [get_ports heater]
set_load 10 [get_ports cooler]
set_load 10 [get_ports {display[2]}]
set_load 10 [get_ports {display[1]}]
set_load 10 [get_ports {display[0]}]
set_input_transition 0.1 [get_ports clk]
set_input_transition 0.1 [get_ports Rst]
set_input_transition 0.1 [get_ports SFD]
set_input_transition 0.1 [get_ports SRD]
set_input_transition 0.1 [get_ports SW]
set_input_transition 0.1 [get_ports SFA]
set_input_transition 0.1 [get_ports {ST[6]}]
set_input_transition 0.1 [get_ports {ST[5]}]
set_input_transition 0.1 [get_ports {ST[4]}]
set_input_transition 0.1 [get_ports {ST[3]}]
set_input_transition 0.1 [get_ports {ST[2]}]
set_input_transition 0.1 [get_ports {ST[1]}]
set_input_transition 0.1 [get_ports {ST[0]}]
set_input_delay 0.7 [get_ports clk]
set_input_delay 0.7 [get_ports Rst]
set_input_delay 0.7 [get_ports SFD]
set_input_delay 0.7 [get_ports SRD]
set_input_delay 0.7 [get_ports SW]
set_input_delay 0.7 [get_ports SFA]
set_input_delay 0.7 [get_ports {ST[6]}]
set_input_delay 0.7 [get_ports {ST[5]}]
set_input_delay 0.7 [get_ports {ST[4]}]
set_input_delay 0.7 [get_ports {ST[3]}]
set_input_delay 0.7 [get_ports {ST[2]}]
set_input_delay 0.7 [get_ports {ST[1]}]
set_input_delay 0.7 [get_ports {ST[0]}]
set_output_delay 18 -clock vsysclk [get_ports fdoor]
set_output_delay 18 -clock vsysclk [get_ports rdoor]
set_output_delay 18 -clock vsysclk [get_ports winbuzz]
set_output_delay 18 -clock vsysclk [get_ports alarmbuzz]
set_output_delay 18 -clock vsysclk [get_ports heater]
set_output_delay 18 -clock vsysclk [get_ports cooler]
set_output_delay 18 -clock vsysclk [get_ports {display[2]}]
set_output_delay 18 -clock vsysclk [get_ports {display[1]}]
set_output_delay 18 -clock vsysclk [get_ports {display[0]}]
set_operating_conditions  -library  [get_libs {NangateOpenCellLibrary}] -max  typical
