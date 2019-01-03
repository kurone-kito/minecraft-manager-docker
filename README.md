# Minecraft-server manager for docker-compose

The Docker-based tool that manage Minecraft's world.  
DockerベースのMinecraftサーバー管理ツールです。

## Dependencies (必要なもの)

- docker
- docker-compose

## Usage (使い方)

### Prepare (準備)

このリポジトリをダウンロード&amp;解凍、もしくはcloneして、このフォルダをターミナル(Windowsの場合PowerShell)で開きます。

### Start (はじめる)

```sh
$ docker-compose up -d
```

自動的にワールドデータが構築されます。

### Stop (とめる)

```sh
$ docker-compose down
```

サーバーを止めます。ワールドは残ります。

### Uninstall (すてる)

```sh
$ docker-compose down -v
```

ワールドデータをアンインストールします。

### Backup (ワールドのバックアップをとる)

自動的にサーバーの再起動も行います。

```sh
$ ./backup
```

## TODO (やること)

- とりあえずワールド作れるの検証しただけで、あまり真面目な検証ができていません。。
- もっとわかりやすいドキュメント作りたいです。。
- 四半日ごとにバックアップとりたいです。。
- Web ベースのバックアップ管理、ワンクリックリストア
- AWS への配置、簡易的なサービス化とか
