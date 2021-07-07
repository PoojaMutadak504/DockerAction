# Container image that runs your code
FROM blazerunner/blazemeter:latest



# Code file to execute when the docker container starts up (`entrypoint.sh`)
CMD pwsh /Blazemeter-run.ps1 -apikey $env:apikey -apisecret $env:apisecret -testidinput $env:testid -showtaillog 'true' 