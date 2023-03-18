# sqf2dep
With sqf2dep script you can download and edit ponce SlackBuilds repo. 
When script finish you will have in /tmp/slackware-current a fork of ponce SlackBuilds repo
edited with slack-required and package.dep files also included if that needed.

Also a SLACKBUILDS.TXT will be there for your package-manager...

## required:
sbopkg

## HOWTO
Install sbopkg and synchronize it to ponce repo. READ how inside script if you dont know.

Then download sqf2dep 
```
wget https://raw.githubusercontent.com/rizitis/sqf2dep/main/sqf2dep
```
Make it executable
```
chmod +x sqf2dep
```

Finally run it as root  and wait some time until finish.
```
./sqf2dep
```
Now you have a fork of ponce repo or SlackBuilds including  package-name.dep and slack-required files
to the right place. 

You can use it as local repo or maintain it as puplic repo and enjoy your Slackware-based distro or your package-manager in Slackware-current.
If you want to use it as puplic repo, first create a ChangeLog.txt etc.. (alienbob have great scripts for these) and a README.

Ones per week you should run sqf2dep to update your repo.

Enjoy! and make sqf2dep script better.
