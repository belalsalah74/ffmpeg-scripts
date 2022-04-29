$videos = Get-Childitem  *.mp4 | Split-Path -Leaf
ffmpeg -i "INPUT.mp4" -vf crop=720:576-84-56:0:84 "OUTPUT.mp4"


Stop-Computer -ComputerName localhost





