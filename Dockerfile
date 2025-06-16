# 1. Build ステージ
FROM node:20-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# 2. Production ステージ
FROM node:20-alpine AS runtime
WORKDIR /app
EXPOSE 3000
COPY --from=build /app/.nuxt ./.nuxt
COPY --from=build /app/package*.json ./
RUN npm ci --omit=dev
CMD ["npm", "run", "start"]