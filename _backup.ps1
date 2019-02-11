Param([string]$fileName = (Get-Date -Format "yyyyMMddHHmmss"))
Set-StrictMode -Version Latest

$composePrefix = "minecraft-manager-docker"
$src = "data"
$dst = "{0}.tar.bz2" -f $fileName

$srcMount = "source={0}_minecraft_data,destination=/{1},readonly" -f $composePrefix, $src
$dstMount = "{0}:/dst" -f $PWD
$dstPath = "/dst/{0}" -f $dst

docker-compose down
docker run --rm --mount $srcMount -v $dstMount alpine tar jcf $dstPath $src
docker-compose up -d
