<template>
  <div class="assist-btn-wrapper">
    <div class="assist-btn">
      <div class="btn-img">
        <img src="/img/btn/plus.svg" />
      </div>
    </div>
    <div class="assist-menu">
      <div class="assist-menu-item">
        <div class="btn-img">
          <img src="/img/btn/plus.svg" />
        </div>
        <label></label>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "assist-btn",
  mounted() {
    document.querySelector(".app-view").addEventListener("scroll", function () {
      var scrollTop = document.querySelector(".app-view").scrollTop;
      var btnClasses = document.querySelector(".assist-btn-wrapper").classList;
      var topPlusBtn = document.querySelector("#topbar-plus-btn").classList;
      if (scrollTop >= 100) {
        if (btnClasses.contains("assist-btn-hide") === false) {
          btnClasses.toggle("assist-btn-hide");
        }
        if (topPlusBtn.contains("topbar-plus-btn-show") === false) {
          topPlusBtn.toggle("topbar-plus-btn-show");
        }
      } else {
        if (btnClasses.contains("assist-btn-hide") === true) {
          btnClasses.toggle("assist-btn-hide");
        }
        if (topPlusBtn.contains("topbar-plus-btn-show") === true) {
          topPlusBtn.toggle("topbar-plus-btn-show");
        }
      }
    });
  },
};
</script>

<style lang="scss" scoped>
.assist-btn-wrapper {
  position: absolute;
  z-index: 8;
  width: 66px;
  height: 66px;
  bottom: 120px;
  right: 40px;
  transition: all 0.3s;
  .assist-btn {
    width: 66px;
    height: 66px;
    display: flex;
    justify-content: center;
    align-items: center;
    background: linear-gradient(139.07deg, #3c6697 20.27%, #1e9f13 99.96%);
    border: 2px solid #ffffff;
    filter: drop-shadow(0px 5px 10px rgba(0, 0, 0, 0.2));
    border-radius: 100%;
    .btn-img {
      width: 25px;
      height: 25px;
      img {
        width: 100%;
        height: 100%;
      }
    }
  }
}

//move to top
.assist-btn-hide {
  bottom: calc(100vh - 72px);
  right: 98px;
  transform: scale(0.5);
  transition: all 0.5s;
  opacity: 0;
}

//minimize
// .assist-btn-hide {
//   transform: scale(0.5);
//   transition: all 0.2s;
//   opacity: 0;
// }
.assist-menu {
  .assist-menu-item {
    width: 50px;
    height: 50px;
    display: flex;
    justify-content: center;
    align-items: center;
    background: linear-gradient(139.07deg, #3c6697 20.27%, #1e9f13 99.96%);
    border: 2px solid #ffffff;
    filter: drop-shadow(0px 5px 10px rgba(0, 0, 0, 0.2));
    border-radius: 100%;
  }
}
</style>