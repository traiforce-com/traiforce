<template>
  <div class="traiforce-font max-w-3xl mx-auto pt-2 pb-20 sm:px-6 lg:px-8">
    <header class="flex justify-between items-baseline max-w-2xl">
      <h1 class="text-2xl font-bold">
        <NuxtLink to="/" class="">Traiforce</NuxtLink>
      </h1>
      <div class="flex justify-end items-baseline gap-3">
        <p>About</p>
        <p>Service</p>
        <NuxtLink to="/contact" class="">Contact</NuxtLink>
      </div>
    </header>
    <slot />
  </div>
</template>

<style scoped>
.traiforce-font {
  font-family: "Noto Sans JP", sans-serif;
  font-optical-sizing: auto;
  font-weight: 100-900;
  font-style: normal;
}
</style>
