# Minecraft-server manager

The Docker-based tool that manage Minecraft's world.
DockerベースのMinecraftサーバー管理ツールです。

## Dependencies (必要なもの)

- docker
- docker-compose

## Usage (使い方)

### Start

```sh
$ docker-compose up
```

### Stop

```sh
$ docker-compose down
```

## TODO (やること)

- とりあえずワールド作れるの検証しただけで、あまり真面目な検証ができていません。。
- 四半日ごとにバックアップとりたいです。。
- Web ベースのバックアップ管理、ワンクリックリストア
- AWS への配置、簡易的なサービス化とか
