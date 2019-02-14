Param([parameter(Mandatory)][string]$Source)
Set-StrictMode -Version Latest

if (!(Test-Path $Source)) {
    Write-Warning ("File: {0} is not found." -f $Source)
    exit 1
}
$file = (Get-ChildItem $Source).Name
if (!(Test-Path $file)) {
    Write-Warning ("File: {0} is not found in here." -f $file)
    exit 2
}

$composePrefix = "minecraft-manager-docker"
$dst = "data"

$srcMount = "{0}:/src" -f $PWD
$dstMount = "source={0}_minecraft_data,destination=/{1}" -f $composePrefix, $dst
$srcPath = "/src/{0}" -f $file

docker-compose down
docker run --rm --mount $dstMount -v $srcMount alpine tar jxf $srcPath
docker-compose up -d
