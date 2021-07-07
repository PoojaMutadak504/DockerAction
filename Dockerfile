# Container image that runs your code
FROM blazerunner/blazemeter:latest

CMD ["/bin/bash"]
COPY entrypoint.sh /home/entrypoint.sh
# Code file to execute when the docker container starts up (`entrypoint.sh`)

ENTRYPOINT ["/home/entrypoint.sh"]
#CMD pwsh /Blazemeter-run.ps1 -apikey $env:apikey -apisecret $env:apisecret -testidinput $env:testid -showtaillog 'true' 