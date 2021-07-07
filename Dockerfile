# Container image that runs your code
FROM blazerunner/blazemeter:latest

COPY . /app


COPY entrypoint.sh /app/entrypoint.sh
#COPY test.ps1 /home/test.ps1
# Code file to execute when the docker container starts up (`entrypoint.sh`)

#RUN ["chmod", "+x", "/app/entrypoint.sh"]
#RUN ["chmod", "+x", "/app/entrypoint.sh"]
#RUN ["chmod", "+x", "/usr/src/app/docker-entrypoint.sh"]
CMD pwsh /Blazemeter-run.ps1 -apikey 121 -apisecret 233 -testidinput 2323 -showtaillog 'true' 