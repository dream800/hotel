import { router } from '@kit.ArkUI';
import { Icon, TxtItem } from '../../component/icon';

import dayjs from "dayjs";
import { CustomCalendarPickerDialog } from '../../view/CustomCalendarPickerDialog';
import { DateModel } from '../../component/DateModel';
import { getRealTimeDate } from '../../component/GetDate';
import { RoomAdd } from '../../component/RoomAdd';
import { DataManager } from '../../component/DataManager';
import { RoomModel } from '../../models/RoomModel';
import { RoomCount } from '../../models/RoomModel';

interface IconItemModel {
  imageUrl: ResourceStr,
  txt: string
}

@Entry
@Component
struct RoomDetailPage {
  @State message: string = 'Hello World';
  IconList: IconItemModel[] = [
    {
    imageUrl: $r('app.media.mi'),
    txt: "20㎡"
  },
    {
      imageUrl: $r('app.media.lou'),
      txt: "2-5层"
    },
    {
      imageUrl: $r('app.media.wifi'),
      txt: "免费wifi"
    },
    {
      imageUrl: $r('app.media.dow'),
      txt: "有窗"
    },
    {
      imageUrl: $r('app.media.bed'),
      txt: "1.2米床"
    }];
  private week: string[] = ['日', '一', '二', '三', '四', '五', '六']; // 设置日历周，从周日开始
  @State currentMonth: number = 1; // 当前月份
  @State currentDay: number = 1; // 当前日
  @State currentYear: number = 1; // 当前年分

  @State nextMonth: number = 1; // 下一天月份
  @State nextDay: number = 1; // 下一天日
  @State nextYear: number = 1; // 下一天年分

  @State nextWeek: string = '';

  roomCount: RoomCount = new RoomCount();

  roomDetailItem: Partial<RoomModel> = {};

  @StorageLink('selectedDate') dateModel: DateModel = new DateModel(0, 0, 0, 0); // 初始化dateModel数据


  // 获取当前日期
  aboutToAppear(): void {
    let dateModel: DateModel = getRealTimeDate(); // 获取当前年月日信息
    this.dateModel = getRealTimeDate();
    // console.log("dataModel ", JSON.stringify(dateModel))
    this.currentMonth = dateModel.month; // 获取当前月份
    this.currentDay = dateModel.day; // 获取当前日
    this.currentYear = dateModel.year; // 获取当前年份

    this.nextMonth = dateModel.month;
    this.nextDay = dateModel.day + 1;
    this.nextYear = dateModel.year;

    this.nextWeek = this.week[dateModel.week + 1 == 7 ? 0 : dateModel.week + 1];

    const param = router.getParams() as RoomModel
    this.roomDetailItem = param;
    this.roomCount.id = param?.id || 0;
  }

  getNewNextWeek() {
    console.log("-----------------------------------------------------------")
    // this.nextWeek = this.week[this.dateModel.week+1 == 7 ? 0 : this.dateModel.week+1];
    // console.log("cur: ", this.week[this.dateModel.week])
    // console.log("cur num: " ,this.dateModel.week)
    // console.log(this.nextWeek)
    // console.log("dataModel ", JSON.stringify(this.dateModel))
  }

  // TODO: 知识点：通过CustomDialogController类显示自定义弹窗
  dialogController: CustomDialogController = new CustomDialogController({
    builder: CustomCalendarPickerDialog({
      currentMonth: this.currentMonth,
      currentDay: this.currentDay,
      currentYear: this.currentYear,
      cancel: this.onCancel
    }),
    alignment: DialogAlignment.Bottom, // 自定义弹窗底端对齐
    customStyle: true // 弹窗样式自定义
  })

  // 点击遮障层退出时的回调
  onCancel() {
  }

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
                Text(this.roomDetailItem ? this.roomDetailItem.roomName : '雅悦双床房')
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

            Text() {
              Span("￥")
              Span(this.roomDetailItem ? this.roomDetailItem.price : '323')
            }
              .fontColor('#f5f5840b')
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
            // 当前日期显示
            Row({ space: 5 }) {
              Text(`${this.dateModel.month}月${this.dateModel.day}日`)
                .fontSize($r('app.string.ohos_id_text_size_headline'))
              Text(`星期${this.week[this.dateModel.week]}`)
                .fontSize(12)
                .fontColor('#a1a1a1')
            }
            .justifyContent(FlexAlign.Start)
            .onClick(() => {
              // 点击当前日期后打开自定义弹窗显示日历
              this.dialogController.open()
              this.getNewNextWeek();
            })

            Text('-')
              .fontColor('#a1a1a1')
              .fontSize(20)
              .width(20)

            // 当前日期显示
            Row({ space: 5 }) {
              Text(`${this.dateModel.month}月${this.dateModel.day+1}日`)
                .fontSize($r('app.string.ohos_id_text_size_headline'))
              Text(`星期${this.week[this.dateModel.week + 1 == 7 ? 0 : this.dateModel.week + 1]}`)
                .fontSize(12)
                .fontColor('#a1a1a1')
            }
            .justifyContent(FlexAlign.Start)
            .onClick(() => {
              // 点击当前日期后打开自定义弹窗显示日历
              this.dialogController.open()
            })
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
          RoomAdd({
            roomCount: this.roomCount
          })

        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .padding({
        left: 5,
        right: 5,
        top: 15,
        bottom: 15
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
        ForEach(this.IconList, (IconItem: IconItemModel) => {
          Icon({
            imageUrl: IconItem.imageUrl,
            txt: IconItem.txt
          })
        })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({
        left: 10,
        right: 10,
        top: 15,
        bottom: 15
      })

      Divider()
        .strokeWidth(5)
        .color('#2ca1a1a1')
        .lineCap(LineCapStyle.Round)// .width(this.currentIndex === index ? 23 : 0)
        .animation({
          duration: 300
        })

      Column({
        space: 10
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

      Blank()

      Button("预定房间")
        .width('100%')
        .backgroundColor('#eed77534')
        .onClick((event: ClickEvent) => {

        })
        .margin({
          top: 20,
          bottom: 30
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