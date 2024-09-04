export interface RoomModel {
  id: number;
  roomName: string | null;
  imageUrl: string | null;
  price: string | null;
  labelList: string[] | null;
  selectCount: number;
}

export class  RoomCount {
  id: number = 1;

  selectCount : number = 0;
}

