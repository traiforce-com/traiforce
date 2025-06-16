export default defineNuxtConfig({
  modules: ['@nuxtjs/tailwindcss'],
  css: ['@/assets/css/tailwind.css'],
  compatibilityDate: '2025-05-15',
  devtools: {
    enabled: true,

    timeline: {
      enabled: true
    }
  },
  vite: {
    server: {
      watch: {
        usePolling: true,
        interval: 100 // ポーリング間隔を短くして変更検出を高速化
      },
      hmr: {
        protocol: 'ws',
        host: '0.0.0.0',
        port: 24678
      }
    }
  },
  // ページの自動インポートを有効にする
  pages: true,
  // 開発サーバーの設定
  devServer: {
    port: 3000,
    host: '0.0.0.0'
  },
  // ホットリロードの設定
  watchers: {
    webpack: {
      poll: true
    }
  }
})