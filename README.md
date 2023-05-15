# NOTE 
 I re-write sqf2dep
slpkg removed from script because after latest change in slpkg 4.8.3 version, script was not running properly, Also slpkg needed a lot of time for updated db for ponce and create depeendes-on for all files.
Now we are doing this job in the script and  1 hour script running time saved!
Now script needs only 17 minutes to finish...
But slpkg and its depeendes-on option was the reason for all these here... 
SO! Thank you dimitris for your amazing package manager ;)

```
older version which using slpkg-4.8.2 
https://github.com/rizitis/sqf2dep/tree/sqf2deb-slpkg-4.8.2
```
# sqf2dep
With sqf2dep you can download and edit ponce SlackBuilds repo. 
When script finish you will have in /tmp/slackware-current a fork of ponce SlackBuilds repo
edited with slack-required, package.dep and dependees-on files also included if that needed.

Also a SLACKBUILDS.TXT will be there for your package-manager...

## required:
sbopkg

## HOWTO
Install sbopkg and synchronize it to ponce repo. READ howto inside script if you dont know.

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
Wait 17-20 minute...
Now you have a fork of ponce repo as discribed in first lines.

You can use it as local repo or if you want to maintain it as puplic repo and enjoy your Slackware-based distro or your package-manager in Slackware-current.
If you want to use it as puplic repo, first create a ChangeLog.txt etc.. (alienbob have great scripts for these) and a README.

Ones per week you should run sqf2dep to update your repo.

## TIPS
slack-required files are used in build directories as alternatives to package.info files

You already have package.dep files in case you want to build and provide a binaries repo from these slackbuilds...

dependees-on files is something new, shows packages that dependees on this package.
A binary package-manager exept of .dep files it will be useful to read  dependees-on files and inform user if other packages depending on this package before proceed to unistall or upgrade...
 

Enjoy! and make sqf2dep script better.
