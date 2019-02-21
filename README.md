# Minecraft-server manager for docker-compose

The Docker-based tool that manage Minecraft's world.  
Docker ベースの Minecraft サーバー管理ツールです。

## Dependencies (必要なもの)

- docker
- docker-compose

いくつかの管理スクリプトは Windows と Mac のみで動作します。

## Usage (使い方)

### Prepare (準備)

このリポジトリをダウンロード&amp;解凍、もしくは clone して、このフォルダをターミナル(Windows の場合 PowerShell)で開きます。

Docker に依存しているため、Linux など環境次第では `sudo` が必要になる場合があります。

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
 => 20190810_114514.tar.bz2
$ ./backup foo
 => foo.tar.bz2
```

### Restore (バックアップしたワールドを復元する)

```sh
$ ./restore 20190810_114514.tar.bz2
```

バックアップファイルは同一フォルダに配置しておく必要があります。

#### download data and play locally (ワールドをダウンロードしてシングルプレイする)

現状 Mac と Windows のみの対応です。

```sh
$ ./save
```

また、`-o` オプションをつけることでバックアップも同時に行うことができます。

```sh
$ ./save -o
 => 20190810_114514.tar.bz2
$ ./save -o foo
 => foo.tar.bz2
```

### Settings (設定する)

下記の内容の`.env`ファイルを、同一フォルダに設置します。

```dotenv
SEED=Kuroneko
OPS=kuronekito
```

たくさんのお馬さんがいる平原にスポーンできます。フゥーー！
