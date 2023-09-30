$date = (Get-Date).AddDays(-1)
$path = "~\Downloads\"
Get-ChildItem -Recurse -Path $path | Where-Object -Property CreationTime -CLE $date | Remove-Item -Recurse