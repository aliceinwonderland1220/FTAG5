# setup ATLAS
export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
alias setupATLAS='source ${ATLAS_LOCAL_ROOT_BASE}/user/atlasLocalSetup.sh'
echo -n "setting up local ATLAS environment..."
setupATLAS -q
lsetup asetup -q

. $AtlasSetup/scripts/asetup.sh 21.0.11.1,AtlasDerivation,here > /dev/null
echo "done"

