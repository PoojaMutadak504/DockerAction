# Container image that runs your code
FROM blazerunner/blazemeter:latest

CMD pwsh /Blazemeter-run.ps1 -apikey $env:INPUT_APIKEY -apisecret $env:INPUT_APISECRET -testidinput $env:INPUT_TESTID -showtaillog 'true' -inputallfiles  '/home/runner/work/GitHubActionTrial/GitHubActionTrial/Supporting Files' -uploadfilechk 'true'