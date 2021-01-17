import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: () => ({
    currentPage: 'Home',
    searchPageOpen: false,
  }),
  mutations: {
    Update_currentPage: (state, title) => {
      state.currentPage = title;
    },
    Open_searchPage: (state) => {
      state.searchPageOpen = true;
    },
    Close_searchPage: (state) => {
      state.searchPageOpen = false;
    },
  },
  actions: {},
  modules: {}
})