import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";

router.beforeEach((to, _, next) => {
  document.title = to.meta.title || "Links";
  next();
});

createApp(App).use(router).mount("#app");
