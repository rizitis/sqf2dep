# sqf2dep
With sqf2dep you can download and edit ponce SlackBuilds repo. 
When script finish you will have in /tmp/slackware-current a fork of ponce SlackBuilds repo
edited with slack-required, package.dep and dependees-on files also included if that needed.

Also a SLACKBUILDS.TXT will be there for your package-manager...

## required:
sbopkg and slpkg

## HOWTO
Install sbopkg and synchronize it to ponce repo. READ how inside script if you dont know.
Install slpkg and synchronize it to ponce repo. READ how inside script if you dont know.

Then download sqf2dep 
```
wget https://raw.githubusercontent.com/rizitis/sqf2dep/main/sqf2dep
```
Make it executable
```
chmod +x sqf2dep
```

Finally run it as root  and wait some time until finish. Need about 60 minutes to finish.
```
./sqf2dep
```
Now you have a fork of ponce repo as discribed in first lines.

You can use it as local repo or if you want then maintain it as puplic repo and enjoy your Slackware-based distro or your package-manager in Slackware-current.
If you want to use it as puplic repo, first create a ChangeLog.txt etc.. (alienbob have great scripts for these) and a README.

Ones per week you should run sqf2dep to update your repo.

## TIPS
slack-required files are used in build directories as alternatives to package.info files

You already have package.dep files in case you want to build and provide a binaries repo just add them in slackbuilds...

dependees-on files is something new, if you want to removepkg then from there you can see if other packages dependees on this file.
A binary package-manager exept of .dep files it will be useful to read  dependees-on files and inform user if other packagese dependeed on package before proceed to unistall.
 

Enjoy! and make sqf2dep script better.
