@CustomDialog
@Component
export struct HmConfirm {
  controller: CustomDialogController
  message: string = '确认退出登录吗?'
  buttonList: HmConfirmButton[] = []

  build() {
    Row() {
      Column() {
        Row() {
          Text(this.message)
            .fontSize(16)
            .fontColor(Color.Black)
        }
        .width('100%')
        .height(88)
        .justifyContent(FlexAlign.Center)
        .border({
          color: Color.Black,
          width: {
            bottom: 0.5
          }
        })

        Row() {
          ForEach(this.buttonList, (item: HmConfirmButton, index: number) => {
            Text(item.text)
              .fontSize(item.fontSize || 16)
              .textAlign(TextAlign.Center)
              .fontColor(item.fontColor || Color.Black)
              .layoutWeight(1)
              .border({
                color: Color.Black,
                width: {
                  right: this.buttonList.length > 1 && index !== this.buttonList.length - 1
                    ? 0.5 : 0
                }
              })
              .height('100%')
              .onClick(async () => {
                if (item.action) {
                  await item.action()
                }
                this.controller.close()
              })
          })
        }
        .height(49)
        .width('100%')
      }
    }
    .width(278)
    .borderRadius(12)
    .backgroundColor(Color.White)
  }
}

class HmConfirmButton {
  fontColor?: ResourceStr = ''
  fontSize?: number = 16
  text: string = ""
  action?: () => void = () => {
  }
}