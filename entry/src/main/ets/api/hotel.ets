import { Request } from '../utils/request'
import {
  HotelListModel,
} from '../models/hotel'
import { RoomModel } from '../models/RoomModel'

export function getHotelListAPI() {
  return Request.get<HotelListModel>('/hotelList')
}

export function getRoomListAPI() {
  return Request.get<RoomModel>('/roomList')
}
