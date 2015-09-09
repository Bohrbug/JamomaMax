if ( -Not $env:APPVEYOR_REPO_BRANCH -eq "master"){
	Write-Host "We are not on master branch. Don't deploy."
	exit
}

if ( $env:APPVEYOR_REPO_TAG ){
	Write-Host "This is a release deployment."
	$archiveName = "JamomaMax-$env:DATE-$env:TIME-Windows_$env:PLATFORM-Release-$env:APPVEYOR_REPO_TAG_NAME.zip"
  $destFolder = "/Volumes/ThorData/WebServer/Jamoma/nanoc-website/output/download/JamomaMax/releases/"
} else {
	Write-Host "This is debug deployment."
	$archiveName = "JamomaMax-$env:DATE-$env:TIME-Windows_$env:PLATFORM-$env:APPVEYOR_REPO_COMMIT.substring(0,7).zip"
  $destFolder = "/Volumes/ThorData/WebServer/Jamoma/nanoc-website/output/download/JamomaMax/nightly-builds/"
}

cmake -DBUILD_TYPE=Release -DCMAKE_INSTALL_COMPONENT=JamomaMax -P cmake_install.cmake > nul
cd JamomaInstall\JamomaMax
7z a $archiveName Jamoma > nul
move /Y $archiveName.zip %APPVEYOR_BUILD_FOLDER%
cd  %APPVEYOR_BUILD_FOLDER%
c:\projects\JamomaMax\WinScp.com /command "option batch abort" "open sftp://jamomabuild@thor.bek.no/ -privatekey=id_rsa -hostkey=""ssh-rsa 2048 d1:79:9a:fd:b5:8d:f5:5e:ae:05:6d:92:6c:6f:06:ff""" "put $archiveName $destFolder" "exit"
