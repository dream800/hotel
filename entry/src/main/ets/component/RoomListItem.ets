import { RoomModel } from '../models/RoomModel';
import { LengthMetrics, router } from '@kit.ArkUI';

@Component
export struct RoomListItem {

  RoomItem: Partial<RoomModel> = {}

  build() {

    Row() {
      Row() {
        Image(this.RoomItem.imageUrl)
          .width(100)
          .aspectRatio(1)

        Column({
          space: 10
        }) {
          Text(this.RoomItem.roomName)
            .fontSize(18)
            .fontWeight(700)
            .width('100%')

          Flex({
            direction: FlexDirection.Row,
            wrap: FlexWrap.Wrap,
            space: {
              main:LengthMetrics.px(3),
              cross:LengthMetrics.px(3)
            }
          }) {
            ForEach(this.RoomItem.labelList, (itemValue: string) => {
              Text(itemValue)
                .border({
                  width: 1,
                  color: Color.Gray,
                  style: BorderStyle.Solid
                })
                .fontSize(12)
                .fontColor('#a1a1a1')
                .borderRadius(3)
                .margin({
                  right: 3,
                  bottom:3
                })
            })
          }


        }
        .justifyContent(FlexAlign.Start)
        .width('40%')
        .margin({
          left: 10
        })
      }

      Column() {
        Row() {
          Text('￥')
            .fontSize(16)
            .fontColor('#673114')
          Text(this.RoomItem.price)
            .fontSize(16)
            .fontColor('#673114')
          Text('起')
            .fontSize(16)
            .fontColor('#673114')
        }
      }
      .height(100)
      .justifyContent(FlexAlign.End)
    }
    .width('100%')
    // .height(150)
    .borderRadius(10)
    .backgroundColor(Color.White)
    .padding(10)
    .justifyContent(FlexAlign.SpaceBetween)
    .onClick(() => {
      router.pushUrl({
        url: "pages/hotelList/RoomDetailPage",
        params: {
          id: this.RoomItem.id,
          roomName: this.RoomItem.roomName,
          price: this.RoomItem.price,
        }
      })
    })

  }

}