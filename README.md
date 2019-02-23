# Minecraft-server manager for docker-compose

The Docker-based tool that manage Minecraft's world.  
Docker ベースの Minecraft サーバー管理ツールです。

## Dependencies (必要なもの)

- docker
- docker-compose

It working with Windows and Mac only.  
Windows と Mac のみで動作確認しています。

## Usage (使い方)

### Prepare (準備)

Clone this repository and open the folder with Terminal (PowerShell in Windows).  
このリポジトリをダウンロード&amp;解凍、もしくは clone して、このフォルダをターミナル(Windows の場合 PowerShell)で開きます。

Depending on the environment such as Linux sudo may be needed, because depending on Docker.  
Docker に依存しているため、Linux など環境次第では `sudo` が必要になる場合があります。

### Start (はじめる)

```sh
$ docker-compose up -d
```

The world data will be built automatically.  
自動的にワールドデータが構築されます。

### Stop (とめる)

```sh
$ docker-compose down
```

Stop the server. The world data will remain.  
サーバーを止めます。ワールドは残ります。

### Uninstall (すてる)

```sh
$ docker-compose down -v
```

Stop the server and uninstall the world data.  
ワールドデータをアンインストールします。

### Backup (ワールドのバックアップをとる)

It'll automatically restart the server.  
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

Backup files must be located in the same folder.  
バックアップファイルは同一フォルダに配置しておく必要があります。

#### download data and play locally (ワールドをダウンロードしてシングルプレイする)

It working with Windows and Mac only.  
現状 Mac と Windows のみの対応です。

```sh
$ ./save
```

You can also perform backup at the same time by adding the `-o` option.  
また、`-o` オプションをつけることでバックアップも同時に行うことができます。

```sh
$ ./save -o
 => 20190810_114514.tar.bz2
$ ./save -o foo
 => foo.tar.bz2
```

### Settings (設定する)

Place the following `.env` file in the same folder.  
下記の内容の `.env` ファイルを、同一フォルダに設置します。

```dotenv
SEED=Kuroneko
OPS=kuronekito
```

たくさんのお馬さんがいる平原にスポーンできます。フゥーー！
