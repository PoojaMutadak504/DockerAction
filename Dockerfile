# Container image that runs your code
FROM blazerunner/blazemeter:latest

WORKDIR /home
COPY entrypoint.sh /home/entrypoint.sh
COPY Blazemeter-run.ps1 /home/Blazemeter-run.ps1
# Code file to execute when the docker container starts up (`entrypoint.sh`)

RUN ["chmod", "+x", "/home/entrypoint.sh"]
#RUN ["chmod", "+x", "/usr/src/app/docker-entrypoint.sh"]
#CMD pwsh /Blazemeter-run.ps1 -apikey $env:apikey -apisecret $env:apisecret -testidinput $env:testid -showtaillog 'true' 