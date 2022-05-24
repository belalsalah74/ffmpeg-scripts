
$dir = Get-Location | Split-Path -Leaf

foreach ($v in Get-ChildItem *.mp4 | Split-Path -leaf) {

    Write-Output "file '$v'" >> video_names.txt
    
}
ffmpeg -f concat -safe 0 -i .\video_names.txt -c copy "$dir full.mp4"


# mkdir full 


Move-Item *full.mp4 .\full