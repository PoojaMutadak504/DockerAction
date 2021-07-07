# Container image that runs your code
FROM blazerunner/blazemeter:latest

ARG apikey=""
ARG apisecret=""
ARG testid="No"

# Code file to execute when the docker container starts up (`entrypoint.sh`)
RUN pwsh /Blazemeter-run.ps1 -apikey $apikey -apisecret $apisecret -testidinput $testid -showtaillog 'true' 