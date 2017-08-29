# John Greenan
# 28th August 2017
# Purpose - open each file that meets the file name criterion of "C:\Code\java\*.bat" and 
# then replace every instance found of "-DTargetInstanceName=APPLE" with "-DTargetInstanceName=DESKTOP-4MFUGU4"
$files = Get-ChildItem C:\Code\java\*.bat
foreach ($file in $files) {(Get-Content $file.PSPath) | foreach-object {$_ -replace "-DTargetInstanceName=APPLE", "-DTargetInstanceName=DESKTOP-4MFUGU4"} | set-content $file.PSPath}



