# Container image that runs your code
FROM blazerunner/blazemeter:latest

RUN mkdir /home/blazemeter
WORKDIR /home/blazemeter
COPY entrypoint.sh /home/blazemeter/entrypoint.sh
COPY Blazemeter-run.ps1 /home/blazemeter/Blazemeter-run.ps1
# Code file to execute when the docker container starts up (`entrypoint.sh`)

RUN ["chmod", "+x", "/entrypoint.sh"]
#RUN ["chmod", "+x", "/usr/src/app/docker-entrypoint.sh"]
#CMD pwsh /Blazemeter-run.ps1 -apikey $env:apikey -apisecret $env:apisecret -testidinput $env:testid -showtaillog 'true' 