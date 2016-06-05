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
ExecStep $xv_path/bin/xelab -wto 8ca32cb2f2d14dc0be2d4114ca2780c8 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot test1_behav xil_defaultlib.test1 -log elaborate.log
