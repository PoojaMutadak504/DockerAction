# Container image that runs your code
FROM blazerunner/blazemeter:latest


COPY entrypoint.sh /home/entrypoint.sh
# Code file to execute when the docker container starts up (`entrypoint.sh`)

ENTRYPOINT ["RUN ["chmod", "+x", "/usr/src/app/docker-entrypoint.sh"]"]
#RUN ["chmod", "+x", "/usr/src/app/docker-entrypoint.sh"]
#CMD pwsh /Blazemeter-run.ps1 -apikey $env:apikey -apisecret $env:apisecret -testidinput $env:testid -showtaillog 'true' 