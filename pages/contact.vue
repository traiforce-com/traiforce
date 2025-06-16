<template>
  <div class="mx-auto">
    <div class="text-center mt-10">
      <h1 class="text-5xl">Contact</h1>
      <p class="mt-3">まずはお気軽にご相談ください。</p>
      <form class="max-w-md mx-auto">
        <label class="block text-left mt-10">お名前</label>
        <input type="text" class="border border-gray-300 rounded-md p-2 w-full" />
        <label class="block text-left mt-4">メールアドレス</label>
        <input type="text" class="border border-gray-300 rounded-md p-2 w-full" />
        <label class="block text-left mt-4">電話番号</label>
        <input type="text" class="border border-gray-300 rounded-md p-2 w-full" />
        <label class="block text-left mt-4">お問い合わせ</label>
        <textarea
          type="text"
          class="border border-gray-300 rounded-md p-2 w-full"
          rows="6"
        />
        <button class="bg-gray-950 text-white w-full py-2 mt-3 rounded-md">送信</button>
      </form>
    </div>
  </div>
</template>
