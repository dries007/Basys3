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
ExecStep $xv_path/bin/xsim test2_func_synth -key {Post-Synthesis:sim_2:Functional:test2} -tclbatch test2.tcl -log simulate.log
