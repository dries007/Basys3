#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2015.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim test3_behav -key {Behavioral:sim_3:Functional:test3} -tclbatch test3.tcl -view /home/dries/Projects/Basys3/FPGA-Z/test3_behav.wcfg -log simulate.log
