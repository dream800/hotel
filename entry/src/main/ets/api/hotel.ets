import { Request } from '../utils/request'
import {
  HotelListModel,
} from '../models/hotel'

export function getHotelListAPI() {
  return Request.get<HotelListModel[]>('/hotelList')
}
