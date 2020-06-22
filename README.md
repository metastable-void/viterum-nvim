# ゐてるまのためのneovimコンフィグファイル

TeX, PythonのLanguage-Serverが導入済み

## 使い方

(1). ~/.config直下にgit cloneする。

(2). deinをインストールする。
```
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh

chmod +x installer.sh

./installer.sh ~/.config/nvim/dein
```

(3). 一度nvimを実行する。

(4). 以下のいずれかでpython providerを導入する(うまく行かない場合）
```
pip install pynvim
```
```
pip3 install pynvim
```

(5). haskell-ide-engineを導入してない場合は
```
:CocConfig
```
の中身を削除。
