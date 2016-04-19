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
ExecStep $xv_path/bin/xelab -wto 9f8d276a196d4d5e8558204853293c23 -m64 --debug typical --relax --mt 8 -L blk_mem_gen_v8_3_1 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot SystemTest_behav xil_defaultlib.SystemTest xil_defaultlib.glbl -log elaborate.log
