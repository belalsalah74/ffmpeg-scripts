foreach ($v in Get-ChildItem *.mp4 | Split-Path -leaf) {

    add-content .\video_names.txt "file '$v'"
    
}
ffmpeg -f concat -safe 0 -i .\video_names.txt -c copy all.mp4 
