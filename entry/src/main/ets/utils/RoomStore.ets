import { RoomCount } from '../models/RoomModel';

PersistentStorage.persistProp('room_list', [])

export class RoomStore {

  static addCut(roomCount: RoomCount, flag: boolean = true) {
    const list = AppStorage.get<RoomCount[]>('room_list')!
    const index = list.findIndex((listItem: RoomCount) => listItem.id === roomCount.id)
    if (flag) {
      if (index < 0) {
        const roomModel: RoomCount = new RoomCount();
        roomModel.selectCount = roomCount.selectCount
        roomModel.id = roomCount.id
        list.unshift(roomModel)
      } else {
        (list[index].selectCount as number)++
        list.splice(index, 1, list[index])
      }
    } else {
      (list[index].selectCount as number)--
      if (list[index].selectCount === 0) {
        list.splice(index, 1)
      } else {
        list.splice(index, 1, list[index])
      }
    }
    AppStorage.setOrCreate('room_list', list)
  }

  static clearCart(){
    AppStorage.setOrCreate('room_list',[])
  }
}