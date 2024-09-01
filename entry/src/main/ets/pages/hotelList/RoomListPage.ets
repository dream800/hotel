@Entry
@Component
struct RoomListPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('客房列表')

      Column() {
        Row() {

        }
        .width('100%')
        .height(200)
        .backgroundColor(Color.White)
      }


    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Gray)
  }
}