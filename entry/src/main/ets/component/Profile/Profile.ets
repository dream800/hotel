@Component
struct Profile {
  build() {
    Column() {
      Text("Profile")
      Button() {
        Text("我的订单")
      }
      Button() {
        Text("账号设置")
      }
      Button() {
        Text("我的中奖")
      }
    }
  }
}

export default Profile;
