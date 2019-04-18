﻿
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  softwareName  = 'bépo'

  url           = 'https://download.tuxfamily.org/dvorak/windows/bepo-azerty.exe'
  checksumType  = 'sha256'
  checksum      = '2b6ac53d72b33f01a61d95e6257a8da567c3a3fceef50a82ecad948c5af94895'
  fileType      = 'exe'
}

Install-ChocolateyPackage @packageArgs