import { createRouter, createWebHistory } from "vue-router";
import EpicmanPage from "@/views/EpicmanPage.vue";
import NotFound from "@/views/NotFound.vue";

const routes = [
  {
    path: "/",
    name: "Epicman212",
    component: EpicmanPage,
    meta: { title: "Epicman212's Socials" },
  },
  {
    path: '/:pathMatch(.*)*',
    name: 'NotFound',
    component: NotFound,
    meta: { title: "Page Not Found | Links" },
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
