# Minecraft-server manager for docker-compose

The Docker-based tool that manage Minecraft's world.  
DockerベースのMinecraftサーバー管理ツールです。

## Dependencies (必要なもの)

- docker
- docker-compose

いくつかの管理スクリプトはWindowsとMacのみで動作します。

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
 => 20190810_114514.tar.bz2
$ ./backup foo
 => foo.tar.bz2
```

### Restore (バックアップしたワールドを復元する)

現在はWindows、もしくはpwshがインストールされた環境専用です。

```PowerShell
> ./restore 20190810_114514.tar.bz2
```

バックアップファイルは同一フォルダに配置しておく必要があります。

#### download data and play locally (ワールドをダウンロードしてシングルプレイする)

現状MacとWindowsのみの対応です。

```sh
$ ./save
```

### Settings (設定する)

下記の内容の`.env`ファイルを、同一フォルダに設置します。

```dotenv
SEED=Kuroneko
OPS=kuronekito
```

たくさんのお馬さんがいる平原にスポーンできます。フゥーー！
