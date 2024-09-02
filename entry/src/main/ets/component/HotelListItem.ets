import { HotelListModel } from '../models/hotel';
import { router } from '@kit.ArkUI';

@Component
export struct HotelListItem {

  HotelItem: Partial<HotelListModel> = {}

  build() {

    Row() {
      Image(this.HotelItem.imageUrl).width(80).height(120)
        .borderRadius(10)
      Column() {
        Text(this.HotelItem.name)
          .fontSize(16)
          .fontWeight(700)
        Row() {
          Image($r('app.media.comment')).width(12)
          Text(this.HotelItem.totalReviewsNum)
            .fontSize(12)
            .fontColor('#a1a1a1')
          Text('评论')
            .fontSize(12)
            .fontColor('#a1a1a1')
        }

        Text(this.HotelItem.address)
          .fontSize(14)
          .fontColor('#a1a1a1')
        Row() {
          Text('舜和会员权益')
            .fontSize(10)
            .backgroundColor('#ff9d5a5a')
            .fontColor(Color.White)
            .padding(3)
            .borderRadius({
              topLeft: 5,
              bottomLeft: 5
            })
          Text('免费wifi 会员专享价')
            .fontSize(10)
            .backgroundColor('#cbb7ae0a')
            .fontColor(Color.Brown)
            .padding(3)
            .borderRadius({
              topRight: 5,
              bottomRight: 5
            })
        }

        Row({
          space: 4
        }) {
          ForEach(this.HotelItem.labelList, (itemValue: string) => {
            Text(itemValue)
              .border({
                width: 1,
                color: Color.Gray,
                style: BorderStyle.Solid
              })
              .fontSize(12)
              .fontColor('#a1a1a1')
              .borderRadius(3)
          })

          // Text('豪华床')
          //   .border({
          //     width: 1,
          //     color: Color.Gray,
          //     style: BorderStyle.Solid
          //   })
          //   .fontSize(12)
          //   .fontColor('#a1a1a1')
          //   .borderRadius(3)
          // Text('单人床')
          //   .border({
          //     width: 1,
          //     color: Color.Gray,
          //     style: BorderStyle.Solid
          //   })
          //   .fontSize(12)
          //   .fontColor('#a1a1a1')
          //   .borderRadius(3)
        }
      }
      .height(120)
      .justifyContent(FlexAlign.SpaceBetween)
      .alignItems(HorizontalAlign.Start)
      .backgroundColor(Color.White)

      Column() {
        Row() {
          Text('557.7')
            .fontSize(14)
            .fontColor('#a1a1a1')
          Text('km')
            .fontSize(14)
            .fontColor('#a1a1a1')
        }

        Row() {
          Text('￥')
            .fontSize(14)
            .fontColor('#673114')
          Text(this.HotelItem.price)
            .fontSize(14)
            .fontColor('#673114')
          Text('起')
            .fontSize(14)
            .fontColor('#673114')
        }
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .height('100%')
    }
    .width('100%')
    .height(120)
    // .backgroundColor(Color.Pink)
    .justifyContent(FlexAlign.SpaceBetween)
    .onClick(() => {
      router.pushUrl({
        url: "pages/hotelList/RoomListPage",
        params: {
          id: this.HotelItem.id
        }
      })
    })
  }

}