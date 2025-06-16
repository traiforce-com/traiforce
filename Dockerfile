# Dockerfile
FROM node:20-alpine

# 作業ディレクトリ作成
WORKDIR /app

# 依存ファイルコピー＆インストール
COPY package*.json ./
RUN npm install

# アプリ全体をコピー
COPY . .

# ポート開放
EXPOSE 3000

# デフォルトコマンド（devサーバ）
CMD ["npm", "run", "build"]