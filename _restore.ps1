Param([parameter(Mandatory)][string]$Source)
Set-StrictMode -Version Latest

# TODO: カレントディレクトリに存在するかどうか
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

$srcMount = "{0}:/dst" -f $PWD
$dstMount = "source={0}_minecraft_data,destination=/{1}" -f $composePrefix, $dst
$srcPath = "/dst/{0}" -f $file

# docker-compose down
# docker run --rm --mount $srcMount -v $dstMount alpine tar jcf $dstPath $src
# docker-compose up -d
