$uri = "https://api.nasa.gov/planetary/apod?api_key=V2PQDwflXvkWutaSwawN6jxuikObYO96Wam7ORjo "
$req = Invoke-RestMethod $uri

$imgURL = $req.hdurl
$date = (Get-Date).Date.ToString("yyyyMMdd")
$dest = "E:\Photos\Space Images\$date.png"

Invoke-WebRequest $imgURL -OutFile $dest

$regPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP"
Set-ItemProperty -Path $RegPath -Name LockScreenImagePath -Value $dest