# Container image that runs your code
FROM blazerunner/blazemeter:latest

#COPY entrypoint.sh /entrypoint.sh

#RUN ["chmod", "+x", "/entrypoint.sh"]

CMD pwsh /Blazemeter-run.ps1 -apikey $env:INPUT_APIKEY -apisecret $env:INPUT_APISECRET -testidinput $env:INPUT_TESTID -showtaillog 'true' 