import { RoomCount } from '../models/RoomModel';
import { RoomStore } from '../utils/RoomStore';

@Preview
@Component
export struct RoomAdd {
  roomCount: RoomCount = new RoomCount()

  @StorageLink('room_list')
  roomList: RoomCount[] = []
  //
  getCount() {
    const index = this.roomList.findIndex((listItem: RoomCount) => listItem.id === this.roomCount.id)
    return this.roomList[index]?.selectCount || 0
  }

  @State selectCount: number = 0;

  build() {
    Row({ space: 8 }) {
      Row() {
        Image($r('app.media.jian'))
          .width(20)
          .aspectRatio(1)
          .fillColor(Color.Gray)
      }
      .width(16)
      .aspectRatio(1)
      .justifyContent(FlexAlign.Center)
      .backgroundColor(Color.White)
      .borderRadius(4)
      .border({ width: 0.5, color: '#f8c74e' })
      .onClick(() => {
        this.selectCount--;
        // RoomStore.addCut(this.roomCount, false)
      })

      // Text(this.getCount.toString()).fontSize(14)
      Text(this.selectCount.toString()).fontSize(14)

      Row() {
        Image($r('app.media.jia'))
          .width(25)
          .aspectRatio(1)
          .fillColor('#f5f5840b')
      }
      .width(16)
      .aspectRatio(1)
      .justifyContent(FlexAlign.Center)
      .backgroundColor(Color.White)
      .borderRadius(4)
      .onClick(() => {
        this.selectCount++;
        // RoomStore.addCut(this.roomCount, true)
      })
    }
  }
}