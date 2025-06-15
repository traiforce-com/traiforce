# ─── build stage ───
FROM node:20-alpine AS builder
WORKDIR /app

# 依存だけ先にインストール（キャッシュ活用）
COPY package*.json ./
RUN npm ci --omit=dev

# ソースコードをコピーしてビルド
COPY . .
RUN npm run build

# ─── production stage ───
FROM node:20-alpine AS production
WORKDIR /app

# 本番依存のみインストール
COPY package*.json ./
RUN npm ci --production

# ビルド成果物だけをコピー
COPY --from=builder /app/.output ./.output

EXPOSE 3000
ENV NODE_ENV=production

# 本番サーバ起動
CMD ["node", ".output/server/index.mjs"]
