Param([switch]$output, [string]$fileName = (Get-Date -Format "yyyyMMdd_HHmmss"))
Set-StrictMode -Version Latest

$composePrefix = "minecraft-manager-docker"
$src = "data"
$dstSave = "{0}\.minecraft\saves:/dst" -f $env:APPDATA
$world = "world"

$srcMount = "source={0}_minecraft_data,destination=/{1},readonly" -f $composePrefix, $src
$cpSrc = "/{0}/{1}" -f $src, $world

docker-compose down
if ($output) {
    $dstMount = "{0}:/dst" -f $PWD
    $dstPath = "/dst/{0}.tar.bz2" -f $fileName

    docker run --rm --mount $srcMount -v $dstMount alpine tar jcf $dstPath $src
}
docker run --rm --mount $srcMount -v $dstSave alpine cp -afr $cpSrc /dst/
docker-compose up -d
