
$ErrorActionPreference = "Stop";

Set-Alias AutoRest.exe autorest.exe

# Initialize the environment

$output="./Generated"
$tmp="./tmp"
$conf="autorest.md"

if( Test-Path $output ) {
    Remove-Item $output -Recurse | Out-Null
}
mkdir $output | Out-Null

if( Test-Path $tmp ) {
    Remove-Item $tmp -Recurse | Out-Null
}

autorest $conf --verbose --debug

# Create PowerShell

Import-Module ..\Tools\PSSwagger\PSSwagger\PSSwagger.psd1 -Force

$spec = (Resolve-Path ".\Artifacts\common.json").ToString()
$path = (Resolve-Path $output).ToString()

$param = @{
    SwaggerSpecUri = $spec
    Path = $path
    Name = "StorageAdmin"
    UseAzureCsharpGenerator = $true
    DefaultCommandPrefix= "Azs"   
}

New-PSSwaggerModule @param

# Generate Code

Import-Module ..\Tools\PSSwagger\PSSwagger\PSSwagger.Common.Helpers -Force
Import-Module ..\Tools\PSSwagger\PSSwagger\PSSwagger.Azure.Helpers -Force
Import-Module "$($param.Path)\$($param.Name)" -Force
Get-Command -Module $param.Name

# Cleanup Envirornment

if( Test-Path $tmp ) {
    Remove-Item $tmp -Recurse
}

