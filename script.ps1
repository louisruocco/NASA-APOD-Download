$uri = "https://api.nasa.gov/planetary/apod?api_key=V2PQDwflXvkWutaSwawN6jxuikObYO96Wam7ORjo "
$req = Invoke-RestMethod $uri
$req

$imgURL = $req.hdurl
$imgURL
$date = (Get-Date).Date
$dest = "E:\Photos\Space Images\img.png"

Invoke-WebRequest $imgURL -OutFile $dest

# new-item "C:\users\Louis\desktop\test" -Type Directory
# New-Item "C:\users\Louis\desktop\test\$img.jpg"