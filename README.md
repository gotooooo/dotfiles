# dotfiles

## 前準備

### Command Line Tools をインストール

see :eyes: https://developer.apple.com/download/more/

### Command Line Tools を利用する

```shell
sudo xcode-select --switch /Library/Developer/CommandLineTools
```

### Homebrew をインストール

https://brew.sh

### rosseta をインストール

```shell
sudo softwareupdate --install-rosetta
```

## 設定

### zimfw をインストール

https://zimfw.sh/#install

### powerlevel10k をインストール

https://github.com/romkatv/powerlevel10k#installation

### git, macOSの設定

以下のスクリプトを実行する

```shell
./update_zshrc.sh
./git_files.sh
./configure_macos_env.sh
```

macOSの設定を反映するためPCを再起動する

### Homebrew でアプリケーションをインストール

```shell
brew bundle
```

nerdctl などで lima を使いたい場合

```shell
limactl start
```

バグかわからないが一度 `limactl stop` してから再度 `limactl start` するとうまくいく
`limactl stop` 自体もエラーとなる

### Git User と Email を設定する

`.gitconfig.github` の内容を自分のアカウントの情報に変更する

### vim (neovim の apple silicon 対応待ち)

適当なファイルをvimで開く
しばらく待つとプラグインがインストールされる

## ローカル設定

`.zshrc.local` はgit管理されていないので、ここに追記する

## その他

### ssh key を作る

```
ssh-keygen -t ed25519 -C "{your_email_address}"
```

passphrase は10桁以上にしておかないと解析されるリスクがあります

### ssh key の passphrase を KeyChain に登録する

```
$ ssh-add -K ~/.ssh/id_ed25519
Enter passphrase for /User/{user_name}/.ssh/id_ed25519:
Identity added: /Users/{user_name}/.shh/id_ed25519
```

### iTerm2 の設定

example is below

- Profiles
  - Colors
    - Color Presets: Pastel
  - Text
    - FontSize: 14
  - Window
    - Column: 200
    - Rows: 50
    - Transparency: 25



### IME の設定

- ABC削除のため、かな入力の英字にチェックを入れる
- 日本語: ひらがな(google) を追加
- 英語: 英数(google) を追加
- 日本語やABCなどデフォルトのものを削除
- 再起動
