/*
 * 设置项的数据类
 */
export class DateModel {
  day: number;
  week: number;
  month: number;
  year: number;

  constructor(day: number, week: number, month: number, year: number) {
    this.day = day;
    this.week = week;
    this.month = month;
    this.year = year;
  }
}