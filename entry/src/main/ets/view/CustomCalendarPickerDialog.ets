/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { getMonthDate } from '../component/GetDate';
import { MonthDataSource, Month } from '../component/MonthDataSource';
import { DataManager } from '../component/DataManager';
import { DateModel } from '../component/DateModel'

const MONTHS = 12;
const JANUARY = 1;
const WEEK_NUMBER = 7;
const MONTH_NUMBER = 35;
const GRID_HEIGHT_L = 360;
const GRID_HEIGHT_M = 300;
const MONTH_OPACITY = 0.1;
const ELEMENTS_MARGIN = 12;
const MONDAY = '一';
const TUESDAY = '二';
const WEDNESDAY = '三';
const THURSDAY = '四';
const FRIDAY = '五';
const SATURDAY = '六';
const SUNDAY = '日';

@CustomDialog
export struct CustomCalendarPickerDialog {
  @State contentData: MonthDataSource = new MonthDataSource(); // 列表数据
  @State nextMonth: number = 1; // 初始化下一个月月份
  @State nextYear: number = 1; // 初始化下一个月年份
  @State nextMonthDay: number[] = []; // 初始化下一个月的日期排列数组
  @State currentMonthDay: number[] = []; // 初始化当前月的日期排列数组
  @State initialIndex: number = 0; // List初次加载时视口起始位置
  @Link currentMonth: number; // 当前月份
  @Link currentDay: number; // 当前日
  @Link currentYear: number; // 当前年份
  @StorageLink('selectedDate') dateModel: DateModel = new DateModel(0, 0, 0, 0); // 初始化dateModel数据
  controller: CustomDialogController; // 通过CustomDialogController类显示自定义弹窗
  cancel: () => void = () => {
  }; //点击遮障层退出时的回调
  private week: string[] = [SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY]; // 设置日历周，从周日开始

  // 获取当前月和下个月的日期数据
  aboutToAppear() {
    this.currentMonthDay = getMonthDate(this.currentMonth, this.currentYear);
    // 如果下个月是在下一年，则下个月是1月份，年份要+1
    if (this.currentMonth === MONTHS) {
      this.nextMonth = JANUARY;
      this.nextYear = this.currentYear + 1;
    }
    // 如果下个月是还是当前年，则月份+1，年份不变
    else {
      this.nextMonth = this.currentMonth + 1;
      this.nextYear = this.currentYear;
    }
    this.nextMonthDay = getMonthDate(this.nextMonth, this.nextYear);
    // 获取当前月和下个月的日期数据
    let months: Month[] = [
      {
        month: `${this.currentYear}年 ${this.currentMonth}月`,
        num: this.currentMonth,
        days: this.currentMonthDay
      },
      {
        month: `${this.nextYear}年 ${this.nextMonth}月`,
        num: this.nextMonth,
        days: this.nextMonthDay
      }
    ]
    this.contentData.pushData(months);
    this.initialIndex = this.dateModel.month > this.currentMonth ? 1 : 0; // 设置List初次加载时视口起始位置显示的item的索引值
  }

  // 显示日历布局的每个月上方的年月信息
  @Builder
  itemHead(text: string) {
    Text(text)
      .backgroundColor($r('app.color.ohos_id_color_sub_background'))
      .width('100%')
      .height($r('app.integer.text_height'))
      .textAlign(TextAlign.Center)
  }

  // 自定义日历选取器内容
  build() {
    Column({space: ELEMENTS_MARGIN}) {
      // 显示'出发日期'
      Text($r('app.string.departure_date'))
        .fontSize($r('app.string.ohos_id_text_size_headline'))

      // 显示周信息，从周日开始到周六
      List() {
        // TODO: 高性能知识点: 此处日期固定，使用了ForEach，其他列表数量较多的场景，推荐使用LazyForEach+组件复用+缓存列表项实现
        ForEach(this.week, (weekInformation: string) => {
          ListItem() {
            Text(weekInformation)
              .textAlign(TextAlign.Center)
              .width('100%')
              .height($r('app.string.ohos_id_text_size_headline'))
              .fontColor(weekInformation === SUNDAY || weekInformation === SATURDAY ? $r('app.color.ohos_id_color_warning') : $r('app.color.ohos_id_color_text_primary'))
          }
          .width($r('app.string.week_width'))
        })
      }
      .width('100%')
      .height($r('app.string.ohos_id_text_size_headline'))
      .listDirection(Axis.Horizontal)
      .scrollBar(BarState.Off)

      // 每个月的日期
      List({initialIndex: this.initialIndex}) {
        /**
         * 性能知识点：列表中数据较多且不确定的情况下，使用LazyForEach进行数据循环渲染。
         * 当组件滑出可视区域外时，框架会进行组件销毁回收以降低内存占用。
         * 文档参考链接：https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V2/arkts-rendering-control-lazyforeach-0000001524417213-V2
         */
        LazyForEach(this.contentData, (monthItem: Month) => {
          // 设置ListItemGroup头部组件，显示年份和月份
          ListItemGroup({ header: this.itemHead(monthItem.month) }) {
            ListItem() {
              Stack() {
                Text(monthItem.num.toString())
                  .fontSize($r('app.integer.month_text'))
                  .fontColor($r('app.color.ohos_id_color_palette_aux8'))
                  .opacity(MONTH_OPACITY)
                Grid() {
                  // TODO: 高性能知识点: 此处日期固定，使用了ForEach，其他列表数量较多的场景，推荐使用LazyForEach+组件复用+缓存列表项实现
                  ForEach(monthItem.days, (day: number) => {
                    GridItem() {
                      Text(day.toString())
                        .fontSize($r('app.string.ohos_id_text_size_headline'))
                        .fontColor(day < this.currentDay && monthItem.num ===
                          this.currentMonth ? $r('app.color.ohos_id_color_text_secondary') : $r('app.color.ohos_id_color_text_primary'))
                    }
                    .borderRadius($r('app.string.ohos_id_corner_radius_default_m'))
                    .backgroundColor(day === this.dateModel.day && monthItem.num ===
                    this.dateModel.month ? $r('app.color.ohos_id_color_palette9') : $r('app.color.ohos_id_color_background'))
                    .opacity(day === 0 ? 0 : 1) // 将日期数组中为0的都设置为不显示，即不显示上个月和下个月的内容
                    // 点击选定的日期后，关闭日历弹窗，显示日期改变为选择的日期
                    .onClick(() => {
                      if (day >= this.currentDay || monthItem.num > this.currentMonth) {
                        let weekIndex = monthItem.days.indexOf(day) % WEEK_NUMBER; // 将当前日转换成星期显示
                        this.dateModel.day = day;
                        this.dateModel.week = weekIndex;
                        this.dateModel.month = monthItem.num;
                        DataManager.setDate(getContext(this), this.dateModel, () => {});
                        this.controller.close(); // 关闭自定义弹窗
                      }
                    })
                  })
                }
                .backgroundColor($r('app.color.ohos_id_color_background'))
                .columnsTemplate('1fr 1fr 1fr 1fr 1fr 1fr 1fr')
                // 当前月显示的数组元素个数大于35则显示6行，否则显示5行
                .rowsTemplate(monthItem.days.length > MONTH_NUMBER ? '1fr 1fr 1fr 1fr 1fr 1fr' : '1fr 1fr 1fr 1fr 1fr')
                .height(monthItem.days.length > MONTH_NUMBER ? GRID_HEIGHT_L : GRID_HEIGHT_M)
              }
            }
          }
        })
      }
      .height($r('app.string.calendar_height'))
      .width('100%')
      .edgeEffect(EdgeEffect.None)
      .scrollBar(BarState.Off)
      .sticky(StickyStyle.Header)
    }
    .padding({top: ELEMENTS_MARGIN, bottom: ELEMENTS_MARGIN})
    .width('100%')
    .height('85%')
    .borderRadius({topLeft: $r('app.string.ohos_id_corner_radius_default_l'), topRight: $r('app.string.ohos_id_corner_radius_default_l')})
    .backgroundColor($r('app.color.ohos_id_color_background'))
    .alignItems(HorizontalAlign.Center)
  }
}

@CustomDialog
export struct promptDialog {
  controller: CustomDialogController; // 通过CustomDialogController类显示自定义弹窗
  build() {
    Column() {
      Text($r('app.string.button_text'))
        .fontSize($r('app.string.ohos_id_text_size_headline'))
    }
    .width('90%')
    .height('10%')
    .borderRadius($r('app.string.ohos_id_corner_radius_default_l'))
    .backgroundColor($r('app.color.ohos_id_color_background'))
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .onClick(() => {
      this.controller.close(); // 关闭自定义弹窗
    })
  }
}