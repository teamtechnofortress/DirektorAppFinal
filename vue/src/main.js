import { createApp } from 'vue'
import store from './store'
import router from './router'
import './index.css'
import 'v-calendar/dist/style.css';
import App from './App.vue'
import VCalendar from "v-calendar";
// import Loading from 'vue-loading-overlay';
// import './../vue-loading-overlay/dist/vue-loading.css';

createApp(App)
  .use(store)
  .use(VCalendar,{})
  // .use(Loading,{})
  .use(router)
  .mount('#app')
