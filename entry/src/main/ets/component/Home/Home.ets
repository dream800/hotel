import { router } from '@kit.ArkUI'

@Component
struct Home {

  @Styles
  tempBtn() {
    .width(50)
    .height(30)
  }


  build() {
    Column({
      space: 15
    }) {
      Text("Home")
      Button() {
        Text("会员订房")
          .onClick(() => {
            router.pushUrl({
              url: "pages/hotelList/hotelList"
            })
          })
      }
      Button() {
        Text("美食团购")
      }
      Button() {
        Text("我的订单")
      }
      Button() {
        Text("客人说")
      }
    }
    .width('100%')
    .height('100%')
  }
}

export default Home;
