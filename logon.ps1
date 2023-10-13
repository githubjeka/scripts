if (![System.IO.File]::Exists('Sound_10460.mp3')) {
    Invoke-WebRequest -Uri https://sound-pack.net/download/Sound_10460.mp3 -OutFile Sound_10460.mp3
}

Add-Type -AssemblyName presentationCore
$Player = New-Object system.windows.media.mediaplayer
$Player.open($PSScriptRoot + '\Sound_10460.mp3')
$Player.play()
