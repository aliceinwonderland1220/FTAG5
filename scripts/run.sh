#!/usr/bin/env bash

set -eu

# go to the run directory
mkdir -p run
cd run

Reco_tf.py \
    --preExec 'from BTagging.BTaggingFlags import BTaggingFlags;BTaggingFlags.CalibrationTag = "BTagCalibRUN12-08-29";BTaggingFlags.ForceMV2CalibrationAlias=False;' \
    --inputAODFile \
    /afs/cern.ch/user/d/dguest/afswork/data/mc16_13TeV.410501.PowhegPythia8EvtGen_A14_ttbar_hdamp258p75_nonallhad.merge.AOD.e5458_s3126_r9364_r9315/*.root* \
    --outputDAODFile FTAG2.pool.root \
    --maxEvents 10 \
    --reductionConf FTAG2 | tee log_FTAG2.dat
