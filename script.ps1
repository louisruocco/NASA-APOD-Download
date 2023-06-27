$uri = "https://api.nasa.gov/planetary/apod?api_key=V2PQDwflXvkWutaSwawN6jxuikObYO96Wam7ORjo "
$req = Invoke-RestMethod $uri
$req

$imgURL = $req.hdurl
$imgURL
$date = (Get-Date).Date.ToString("yyyyMMdd")
$date
$dest = "E:\Photos\Space Images\$date.png"

Invoke-WebRequest $imgURL -OutFile $dest
