@Component
struct Home {
  build() {
    Column() {
      Text("Home")
      Button() {
        Text("会员订房")
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
  }
}

export default Home;
