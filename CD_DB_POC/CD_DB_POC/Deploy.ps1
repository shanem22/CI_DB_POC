$TargetConnectionString = $OctopusParameters["ConnectionString"]
$smartDefaults = $OctopusParameters["GenerateSmartDefaults"]
$dataLoss = $OctopusParameters["BlockOnPossibleDataLoss"]
 
if (!$smartDefaults) {
    $smartDefaults = "False"
}
 
if (!$dataLoss) {
    $dataLoss = "True"
}
 
if (!$TargetConnectionString) {
    throw "Target connection parameter missing!"   
}
 
Write-Host "Deploying database now..." -NoNewline
 
New-Alias -Name sqlpackage -Value "C:\Program Files (x86)\Microsoft SQL Server\110\DAC\bin\sqlpackage.exe"
sqlpackage /Action:Publish /SourceFile:"CD_DB_POC.dacpac" /tcs:$TargetConnectionString `
    /p:GenerateSmartDefaults=$smartDefaults /p:BlockOnPossibleDataLoss=$dataLoss
 
Write-Host "deployed"