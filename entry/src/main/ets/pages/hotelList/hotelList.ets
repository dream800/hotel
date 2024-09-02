import { getHotelListAPI } from '../../api/hotel'
import { HotelListModel } from '../../models/hotel';
import { JSON } from '@kit.ArkTS';
import { HotelListItem } from '../../component/HotelListItem';

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
            HotelListItem({HotelItem: item})
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