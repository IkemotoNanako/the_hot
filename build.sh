#!/bin/bash

# Flutterのビルド
fvm flutter build web --web-renderer canvaskit --base-href /the_hot/

# ビルド成果物をデスクトップにコピー
DESTINATION="$HOME/Desktop/web"
cp -r build/web "$DESTINATION"

# ローカル変更をすべて破棄
git reset --hard

# gh-pagesブランチに切り替え
git checkout gh-pages

# .gitとdotenv以外のファイルをcurrentディレクトリから削除
CURRENT_DIR="./"
find "$CURRENT_DIR" -mindepth 1 -not -path "$CURRENT_DIR/.git*" -not -name "dotenv" -exec rm -rf {} +

# デスクトップのwebディレクトリの中身をcurrentディレクトリにコピー
# cp -r "$DESTINATION"/* "$CURRENT_DIR"


