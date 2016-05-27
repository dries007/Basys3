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
ExecStep $xv_path/bin/xsim SystemTest_behav -key {Behavioral:sim_5:Functional:SystemTest} -tclbatch SystemTest.tcl -log simulate.log
