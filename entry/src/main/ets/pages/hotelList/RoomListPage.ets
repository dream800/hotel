import { RoomListItem } from '../../component/RoomListItem';
import { RoomModel } from '../../models/RoomModel';
import { getRoomListAPI } from '../../api/hotel'
import { router } from '@kit.ArkUI';

@Entry
@Component
struct RoomListPage {
  @State message: string = 'Hello World';

  @State roomList: RoomModel[] = []

  onLoad = async () => {
    const data: RoomModel[]  = await getRoomListAPI()
    this.roomList = data;
  }

  onPageShow(): void {
    this.onLoad()
  }

  build() {
    Column() {
      Stack({ alignContent: Alignment.TopStart }) {
        Row() {
          Text("客房列表").fontColor(Color.Black).fontSize(18).fontWeight(600)
        }
        .justifyContent(FlexAlign.Center)
        .alignItems(VerticalAlign.Center)
        .width('100%')
        .height(50)

        Row() {
          Image($r('app.media.return'))
            .width(20)
            .aspectRatio(1)
            .fillColor(Color.Black)
            .margin({
              left: 10
            })
        }
        .height(50)
        .alignItems(VerticalAlign.Center)
        .onClick(() => {
          router.back() // 回上一页
        })

      }
      .backgroundColor(Color.White)
      .width('100%')
      .height(50)

      Column() {

        List() {
          ForEach(this.roomList, (item: RoomModel) => {
            ListItem() {
              RoomListItem({RoomItem: item})
            }
            .padding(8)
          })
        }
        .width('100%')
        .layoutWeight(1)
      }

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#f5e2d6d6')
  }
}