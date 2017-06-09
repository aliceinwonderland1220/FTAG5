#!/usr/bin/env bash

set -eu

# go to the run directory
cd WorkArea/run

Reco_tf.py \
    --preExec 'from BTagging.BTaggingFlags import BTaggingFlags;BTaggingFlags.CalibrationTag = "BTagCalibRUN12-08-29";BTaggingFlags.ForceMV2CalibrationAlias=False;' \
    --inputAODFile \
    /afs/cern.ch/work/d/dguest/public/mc16_13TeV.410000.PowhegPythiaEvtGen_P2012_ttbar_hdamp172p5_nonallhad.merge.AOD.e3698_s2997_r8903_r8906/AOD.10226638._000222.pool.root.1 \
    --outputDAODFile FTAG5.pool.root \
    --maxEvents 10 \
    --reductionConf FTAG5 | tee log_FTAG5.dat
