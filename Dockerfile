# Container image that runs your code
FROM blazerunner/blazemeter:latest



# Code file to execute when the docker container starts up (`entrypoint.sh`)
RUN pwsh /Blazemeter-run.ps1