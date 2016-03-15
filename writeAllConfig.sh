#!/bin/bash

#
# script to make .cmd files for submitting jobs
#

#optional tag
TAG="v0"
#events per job
EVENTS=10000
#jobs per mass point
JOBS=10

#
# LHE directories and mass points
#

./writeConfig.sh ${EVENTS} ${JOBS} /hadoop/cms/store/user/mliu/mcProduction/lhe/ ${TAG}_tchwh fragmentTemplate.py
#./writeConfig.sh ${EVENTS} ${JOBS} /hadoop/cms/store/user/gzevi/LHE/T5qqqqWWmodified/T5qqqqWWmodifiedA/ ${TAG}_T5qqqqWWmodifiedA fragmentTemplate.py

# --- write submit script ---
mkdir -p configs_${TAG}

mv condor_${TAG}*.cmd configs_${TAG}
echo "#!/bin/bash" > submitAll.sh
echo "voms-proxy-init -voms cms -valid 240:00" >> submitAll.sh
for file in configs_${TAG}/*.cmd
do 
    echo "condor_submit ${file}" >> submitAll.sh
done
chmod +x submitAll.sh
echo "[writeAllConfig] wrote submit script submitAll.sh"
