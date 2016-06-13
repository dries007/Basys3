# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/dries/Projects/Basys3/VGA_text/VGA_text.cache/wt [current_project]
set_property parent.project_path /home/dries/Projects/Basys3/VGA_text/VGA_text.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files /home/dries/Projects/Basys3/VGA_text/coe/GAMES.coe
add_files /home/dries/Projects/Basys3/VGA_text/coe/FB.coe
add_files -quiet /home/dries/Projects/Basys3/VGA_text/VGA_text.runs/rom_synth_1/rom.dcp
set_property used_in_implementation false [get_files /home/dries/Projects/Basys3/VGA_text/VGA_text.runs/rom_synth_1/rom.dcp]
add_files -quiet /home/dries/Projects/Basys3/VGA_text/VGA_text.runs/FrameBuffer_synth_1/FrameBuffer.dcp
set_property used_in_implementation false [get_files /home/dries/Projects/Basys3/VGA_text/VGA_text.runs/FrameBuffer_synth_1/FrameBuffer.dcp]
add_files -quiet /home/dries/Projects/Basys3/VGA_text/VGA_text.runs/ClockDivider_synth_1/ClockDivider.dcp
set_property used_in_implementation false [get_files /home/dries/Projects/Basys3/VGA_text/VGA_text.runs/ClockDivider_synth_1/ClockDivider.dcp]
read_vhdl -library xil_defaultlib {
  /home/dries/Projects/Basys3/VGA_text/VGA_text.srcs/sources_1/new/Font.vhd
  /home/dries/Projects/Basys3/VGA_text/VGA_text.srcs/sources_1/imports/Downloads/ps2_keyboard.vhd
  /home/dries/Projects/Basys3/VGA_text/VGA_text.srcs/sources_1/new/Vga.vhd
  /home/dries/Projects/Basys3/VGA_text/VGA_text.srcs/sources_1/imports/new/Prng.vhd
  /home/dries/Projects/Basys3/VGA_text/VGA_text.srcs/sources_1/imports/Downloads/ps2_keyboard_to_ascii.vhd
  /home/dries/Projects/Basys3/VGA_text/VGA_text.srcs/sources_1/new/top.vhd
}
read_xdc /home/dries/Projects/Basys3/VGA_text/VGA_text.srcs/constrs_1/imports/Basys3/Basys3_Master.xdc
set_property used_in_implementation false [get_files /home/dries/Projects/Basys3/VGA_text/VGA_text.srcs/constrs_1/imports/Basys3/Basys3_Master.xdc]

synth_design -top top -part xc7a35tcpg236-1
write_checkpoint -noxdef top.dcp
catch { report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb }
