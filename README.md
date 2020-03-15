# PiStarter

## バックアップ
- Win32DiskImager でイメージをバックアップしておく
    - https://app.smileboom.com/pistarter/forum/viewtopic.php?f=3&t=12

## Pi Zero W 初期設定
- アクティベーションをCtrl-cでキャンセル、Linuxのコンソール画面へ行く
- 無線LAN設定
    - $sudo raspi-config - Network Options - WiFi - Japan - SSIDとパスフレーズの入力
    - $sudo shutdown -r now
    - この時点でネットにつながるのでPiStarterをアクティベーションしておく
    - ESCでPiStarterのコマンドラインモードへ、quitでLinuxコンソールへ行ける

- SSH有効化
    - $sudo raspi-config - Interfacing Options - SSH - Yes

- Samba
    - $sudo apt-get update
        - アップデートを先にしないとSambaのインストールでこけた
    - $sudo apt-get install -y samba
    - $sudo apt-get upgrade
        - 一応アップグレードもしておく
    - この時点でホスト名(raspberrypi.local)でpingが通るようになる
        - ping raspberrypi.local
    - Power Shell や [RLogin](http://nanno.dip.jp/softlib/man/rlogin/)等からホスト名でログインできるようになる
    - Windowsのエクスプローラーから\\\raspberrypiでアクセスできるようになっている
        - ただ見えるだけ、後はSambaの設定しだい
        - 設定ファイルは/etc/samba/smb.conf
            ~~~
            [workspace]
            comment = SmileBASIC-R workspace
            path = /boot/SMILEBOOM/SMILEBASIC-R/workspace
            guest ok = yes
            writeable = yes
            force user = root
            force group = root
            force create mode = 0755
            force directory mode = 0755
            ~~~
- VNC
    - $sudo raspi-config - Interfacing Options - VNC - Yes
    - Xのインストール
        - $sudo apt-get install -y --no-install-recommends xserver-xorg
        - $sudo apt-get install -y --no-install-recommends xinit
        - $sudo apt-get install -y raspberrypi-ui-mods
    - $startx
        - 右上のV2を右クリック - Options - TroubleShooting - Enable direct capture mode にチェック
        - 左上のラズベリーパイのアイコン - Shutdown - Exit to command line でコンソールに戻る
    - 起動時にXが立ち上がるようになっているので、元の挙動に戻しておく
        - $sudo raspi-config - Boot Options - Desktop/CLI - Console Autologin... 
    - [VNCViewer](https://www.realvnc.com/en/connect/download/viewer/)等でログインする
        - PiStarter内だと直接つないだキーボードでないと操作できない…
            - Linuxコンソールに戻るとVNCから操作できる
            - Xを立ち上げるとVNCから操作できる
        - Pi Zeroだとむちゃくちゃ重い…

## 他
- ESCでPiStarterのコマンドラインモードへ、quitでLinuxコンソールへ行ける
- PiStarterのコマンドラインでは!をつけるとLinuxコマンドが使える
    - !ls -l
- PiStarterが立ち上がっているときのカレントディレクトリは/boot/SMILEBOOM/SMILEBASIC-R/workspace
- ワークスペース
    - .bashrc
    ~~~
    alias workspace="pushd /boot/SMILEBOOM/SMILEBASIC-R/workspace/PROJECT"
    ~~~
- 外部エディタで編集する場合はUTF-8, LFにする
    - VSCodeなら右下から変更できる
