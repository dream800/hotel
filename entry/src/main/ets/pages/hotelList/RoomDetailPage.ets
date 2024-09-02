import { router } from '@kit.ArkUI';
import { Icon, TxtItem } from '../../component/icon';

@Entry
@Component
struct RoomDetailPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Stack({ alignContent: Alignment.TopStart }) {
        Row() {
          Text("房间详情").fontColor(Color.Black).fontSize(18).fontWeight(600)
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


      Row() {
        Column() {
          Row() {
            Image($r('app.media.room_detail_01'))
              .width('100%')
          }

          Stack({ alignContent: Alignment.BottomEnd }) {
            Column() {
              Row() {
                Text('雅悦双床房')
                  .fontSize(16)
                  .fontWeight(600)
                Text('不含早')
                  .border({
                    width: 1,
                    color: Color.Gray,
                    style: BorderStyle.Solid
                  })
                  .fontColor(Color.Gray)
                  .fontSize(10)
                  .padding({
                    top: 3,
                    left: 5,
                    right: 5,
                    bottom: 3
                  })
                  .borderRadius(4)
                  .margin({
                    left: 20
                  })
              }

              Text('价格可能浮动，建议尽快预定')
                .fontSize(12)
                .fontColor('#f5f5840b')
                .margin({
                  top: 5
                })
            }
            .alignItems(HorizontalAlign.Start)
            .width('100%')

            Text("￥348").fontColor('#f5f5840b')
          }
          .padding({
            top: 15,
            bottom: 15,
            left: 5,
            right: 5
          })
        }
      }
      .width('100%')


      Divider()
        .strokeWidth(5)
        .color('#2ca1a1a1')
        .lineCap(LineCapStyle.Round)// .width(this.currentIndex === index ? 23 : 0)
        .animation({
          duration: 300
        })


      Column({
        space: 15
      }) {
        Row() {
          Row() {
            Row() {
              Text('05月22日 ')
                .fontSize(14)
              Text('周三')
                .fontSize(12)
                .fontColor('#a1a1a1')
            }

            Text('-')
              .fontColor('#a1a1a1')

            Row() {
              Text('05月23日')
                .fontSize(14)
              Text('周四')
                .fontSize(12)
                .fontColor('#a1a1a1')
            }
          }
          .justifyContent(FlexAlign.SpaceBetween)
          .layoutWeight(1)

          Row() {
            Text('共1晚')
              .fontSize(14)
              .fontWeight(600)
          }
          .margin({
            left: 40
          })
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .width('100%')

        Divider()
          .strokeWidth(1)
          .color('#2ca1a1a1')
          .lineCap(LineCapStyle.Round)// .width(this.currentIndex === index ? 23 : 0)
          .animation({
            duration: 300
          })

        Row() {
          Text('房间数量')
            .fontSize(14)
            .fontColor(Color.Gray)

          Row({
            space: 10
          }) {
            Image($r('app.media.jian'))
              .width(20)
              .aspectRatio(1)
              .fillColor(Color.Gray)
            Text('1')
            Image($r('app.media.jia'))
              .width(25)
              .aspectRatio(1)
              .fillColor('#f5f5840b')
          }

        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .padding({
        left: 5,
        right: 5,
        top: 15,
        bottom:15
      })
      .width('100%')


      Divider()
        .strokeWidth(5)
        .color('#2ca1a1a1')
        .lineCap(LineCapStyle.Round)// .width(this.currentIndex === index ? 23 : 0)
        .animation({
          duration: 300
        })

      Row() {
        Icon({
          imageUrl: $r('app.media.mi'),
          txt: "20㎡"
        })
        Icon({
          imageUrl: $r('app.media.lou'),
          txt: "2-5层"
        })
        Icon({
          imageUrl: $r('app.media.wifi'),
          txt: "免费wifi"
        })
        Icon({
          imageUrl: $r('app.media.dow'),
          txt: "有窗"
        })
        Icon({
          imageUrl: $r('app.media.bed'),
          txt: "1.2米床"
        })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({
        left: 10,
        right: 10,
        top: 15,
        bottom:15
      })

      Divider()
        .strokeWidth(5)
        .color('#2ca1a1a1')
        .lineCap(LineCapStyle.Round)// .width(this.currentIndex === index ? 23 : 0)
        .animation({
          duration: 300
        })

      Column({
        space:10
      }) {
        TxtItem({
          txt1: '便利设施',
          txt2: '雨伞、书麋、熨衣设备、多种规格电源插座、110V电压插座、房内保险箱、空调、衣柜/衣棚、暖气、闹钟、针线包、220V电压插座、自动窗帘、电子秤、房间内高速上网、客房WVIFI免费'
        })
        TxtItem({
          txt1: '媒体科技',
          txt2: '国内长途电话、国际长途电话、有线频道、液晶电视机、音响'
        })
        TxtItem({
          txt1: '食品饮品',
          txt2: '电热水壶、茶壶、瓶装水免费、迷你吧、小冰箱'
        })
      }
      .width('100%')
      .margin({
        top: 30
      })


      Button("预定房间")
        .width('100%')
        .backgroundColor('#eed77534')
        .onClick((event: ClickEvent) => {

        })
        .margin({
          top: 20
        })


    }
    .padding({
      left: 15,
      right: 15
    })
    .height('100%')
    .width('100%')
    .backgroundColor(Color.White)
  }
}