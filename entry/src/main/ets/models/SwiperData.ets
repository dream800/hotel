/**
 * 首页轮播图信息
 */
export class SwiperData {
  imageSrc: Resource;
  name: string;
  param: string;

  constructor(imageSrc: Resource, name: string,  param?: string) {
    this.imageSrc = imageSrc;
    this.name = name;
    this.param = param === undefined ? '' : param;
  }
}