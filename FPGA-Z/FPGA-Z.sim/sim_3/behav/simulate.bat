@echo off
set xv_path=D:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xsim test3_behav -key {Behavioral:sim_3:Functional:test3} -tclbatch test3.tcl -view D:/Github/Basys3/FPGA-Z/test3_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
