$ss = read-host "Enter start time in hh:mm:ss format"
$to = read-host "Enter End time in hh:mm:ss format"
mkdir converted
if ($to)

 {   foreach ($v in Get-childItem *.mp4 | split-path -leaf) {
        
        ffmpeg -i $v -ss $ss -to $to -c copy .\converted\$v
    }}

else 
    
    {foreach ($v in Get-childItem *.mp4 | split-path -leaf) {
        
        ffmpeg -i $v -ss $ss -c copy .\converted\$v
    }
    
}

mkdir original 
Get-childItem -path *.mp4 | mv  -destination .\original 