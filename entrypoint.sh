#!/bin/sh -l
 
cd $GITHUB_WORKSPACE

export GH_TOKEN=${1}
export BRANCH=${2}

#pwsh /home/Blazemeter-run.ps1 -apikey asas -apisecret asas -testidinput asas -showtaillog 'true' 
