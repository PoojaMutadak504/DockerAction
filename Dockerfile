# Container image that runs your code
FROM blazerunner/blazemeter:latest

ARG apikey=""
ARG apisecret=""
ARG testid="No"

ENV apikey=${apikey}
ENV apisecret=${apisecret}
ENV testid=${testid}

CMD pwsh /Blazemeter-run.ps1 -apikey $env:apikey -apisecret $env:apisecret -testidinput $env:testid -showtaillog 'true' 