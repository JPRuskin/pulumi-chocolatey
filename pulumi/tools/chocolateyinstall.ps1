$ErrorActionPreference = 'Stop';

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  file64         = "$toolsDir\pulumi-vX.X.X-windows-x64.zip"
}

Install-ChocolateyZipPackage  @packageArgs