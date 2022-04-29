$Shutdown = read-host "shutdonw? [y/n]"
$videos =  Get-childItem *.mp4 | split-path -leaf
mkdir converted
foreach ($v in $videos) {

    ffmpeg -i $v  -vcodec libx265 -b:v 2m -maxrate 2m -bufsize 2m -r 25 -preset ultrafast .\converted\$v

}

if ($Shutdown == "y") {Stop-Computer -ComputerName localhost}