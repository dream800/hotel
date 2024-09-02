@Component
export struct Icon {

  txt: string = "";

  imageUrl: ResourceStr = "";

  build() {
    Column() {
      Image(this.imageUrl)
        .width(20)
        .fillColor(Color.Black)
      Text(this.txt)
        .fontSize(12)
        .margin({
          top: 3
        })
    }
  }
}

@Component
export struct TxtItem {
  txt1 : string = "";
  txt2 : string = "";

  build() {
    Row() {
      Text(this.txt1)
        .fontSize(14)
        .fontColor('#a1a1a1')

      Text(this.txt2)    .fontSize(12)
        .fontColor('#111')
        .margin({
          left: 15
        })

    }

  }
}