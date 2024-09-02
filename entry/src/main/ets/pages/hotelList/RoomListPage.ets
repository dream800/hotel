import { RoomListItem } from '../../component/RoomListItem';
import { RoomModel } from '../../models/RoomModel';
import { getRoomListAPI } from '../../api/hotel'

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
      Text('客房列表')

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
    .backgroundColor('#ffe2d6d6')
  }
}