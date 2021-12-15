@echo off
title Jetdown Windows Crack Tool Rider by Cutie Lewko
echo if you installed jetbrains somewhere differntly change the current path this script is using to it
path = "D:\JetBrainsRider\plugins"
echo current path is set to %path%
:cd 
pause

move "%cd%\eval-restart" %path% && ( 
  echo successfully moved you will find Eval Reset in Help menu ignore it being there twice
) || (
 echo failed/error
)

pause