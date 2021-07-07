# Container image that runs your code
FROM blazerunner/blazemeter:latest

ENV apikey=""
ENV apisecret=""
ENV testid="No"

# Code file to execute when the docker container starts up (`entrypoint.sh`)
RUN pwsh /Blazemeter-run.ps1 -apikey $env:apikey -apisecret $env:apisecret -testidinput $env:testid -showtaillog 'true' 