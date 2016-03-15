
universe=grid
Grid_Resource=condor cmssubmit-r1.t2.ucsd.edu glidein-collector.t2.ucsd.edu
when_to_transfer_output = ON_EXIT
#the actual executable to run is not transfered by its name.
#In fact, some sites may do weird things like renaming it and such.
transfer_input_files=wrapper_pLHE.sh, step_pLHE.sh
+DESIRED_Sites="T2_US_UCSD"
+Owner = undefined
log=/data/tmp/mliu/v0_TCHWH/submit_logs/condor_03_11_2016.log
output=/data/tmp/mliu/v0_TCHWH/job_logs/1e.$(Cluster).$(Process).out
error =/data/tmp/mliu/v0_TCHWH/job_logs/1e.$(Cluster).$(Process).err
notification=Never
x509userproxy=/tmp/x509up_u31584


executable=wrapper_pLHE.sh
transfer_executable=True
arguments=C1N2_1000023_350_1000024_350_n1_1_run11282_unwgt.xz /hadoop/cms/store/user/mliu/mcProduction/lhe//C1N2_1000023_350_1000024_350_n1_1_run11282_unwgt.lhe.xz /hadoop/cms/store/user/mliu/mcProduction/v0_TCHWH/LHE
queue

