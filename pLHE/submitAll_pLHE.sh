#!/bin/bash
voms-proxy-init -voms cms -valid 240:00
condor_submit configs_pLHE_v0/condor_v0_TCHWH.cmd
