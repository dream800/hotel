import Home from '../component/Home/Home';
import Member from '../component/Member/Member';
import Profile from '../component/Profile/Profile';

interface MyToolbarItem {
  text: string;
  color: ResourceColor;
  icon: Resource;
  activeIcon: Resource;
  activeColor: ResourceColor;
  value: number;
}

interface MyToolbars {
  items: MyToolbarItem[]
}

const toolbars: MyToolbars = {
  items: [
    {
      text: "首页",
      color: Color.Black,
      icon: $r("app.media.home"),
      activeIcon: $r("app.media.home_fill"),
      activeColor: Color.Red,
      value: 0,
    },
    {
      text: "会员",
      color: Color.Black,
      icon: $r("app.media.vip"),
      activeIcon: $r("app.media.vip_fill"),
      activeColor: Color.Red,
      value: 1,
    },
    {
      text: "我的",
      color: Color.Black,
      icon: $r("app.media.customer_bussinessman"),
      activeIcon: $r("app.media.customer_businessman_fill"),
      activeColor: Color.Red,
      value: 2,
    },
  ]
}

@Entry
@Component
struct Index {
  @Provide("indexPageStack") pageStack: NavPathStack = new NavPathStack();
  @State selectIndex: number = 0;

  @Builder
  tabBuilder() {
    Row() {
      ForEach(toolbars.items, (it: MyToolbarItem) => {
        Column() {
          Image(this.selectIndex === it.value ? it.activeIcon : it.icon)
            .width("30vp")
            .height("30vp")
          Text(it.text)
            .fontColor(this.selectIndex === it.value ? it.activeColor : it.color)
        }
        .height("100%")
        .layoutWeight(1)
        .justifyContent(FlexAlign.End)
        .padding({ top: 5, bottom: 5 })
        .onClick(() => {
          this.selectIndex = it.value;
        })
      }, (it: MyToolbarItem) => `${it.value}`)
    }
    .height(50)
    .width('100%')
  }

  build() {
    Navigation(this.pageStack) {
      Column() {
        if (this.selectIndex === 0) {
          Home()
        } else if (this.selectIndex === 1) {
          Member()
        } else if (this.selectIndex === 2) {
          Profile()
        }
      }
      .height("100%")
      .width("100%")
    }
    .mode(NavigationMode.Auto)
    .toolbarConfiguration(this.tabBuilder)
    .height("100%")
    .width("100%")
  }
}
