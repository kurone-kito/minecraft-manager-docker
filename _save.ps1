Set-StrictMode -Version Latest
$fileName = Get-Date -Format "yyyyMMdd_HHmmss"

$composePrefix = "minecraft-manager-docker"
$src = "data"
$dst = "{0}\.minecraft\saves" -f $env:APPDATA
$world = "world"

$srcMount = "source={0}_minecraft_data,destination=/{1},readonly" -f $composePrefix, $src
$dstMount = "{0}:/dst" -f $dst
$cpSrc = "/{0}/{1}" -f $src, $world

docker-compose down
docker run --rm --mount $srcMount -v $dstMount alpine cp -afr $cpSrc /dst/
docker-compose up -d
