import { getHotelListAPI } from '../../api/hotel'
import { HotelListModel } from '../../models/hotel';
import { JSON } from '@kit.ArkTS';

@Entry
@Component
struct HotelList {
  @State message: string = 'Hello World';

  @State hotelList: HotelListModel[] = []

  onLoad = async () => {
    const data  = await getHotelListAPI()
    this.hotelList = data;
  }

  onPageShow(): void {
    this.onLoad()
  }

  build() {

    Column() {
      Text('酒店列表').fontSize(16)
        .fontWeight(700)
        .margin({
          bottom: 20
        })
        .onClick(() => {
          this.onLoad()
        })

      List() {
        ForEach(this.hotelList, (item: HotelListModel) => {
          ListItem() {
            Row() {
              Image(item.imageUrl).width(80).height(120)
                .borderRadius(10)
              Column() {
                Text(item.name)
                  .fontSize(16)
                  .fontWeight(700)
                Row() {
                  Image($r('app.media.comment')).width(12)
                  Text(item.totalReviewsNum)
                    .fontSize(12)
                    .fontColor('#a1a1a1')
                  Text('评论')
                    .fontSize(12)
                    .fontColor('#a1a1a1')
                }

                Text(item.address)
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
                  ForEach(item.labelList, (itemValue: string) => {
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
                  Text(item.price)
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
          }
          .padding({
            top: 20,
            bottom: 20,
            left: 10,
            right: 10
          })
        })

      }
      .width('100%')
      .layoutWeight(1)
      .divider({
        strokeWidth:2,
        color: '#9fa1a1a1',
        startMargin: 10,
        endMargin:10
      })



    }
  }
}