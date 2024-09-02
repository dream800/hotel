import { http } from '@kit.NetworkKit'

const BASE_URL = 'http://47.120.45.248/index.php'

export interface ResponseData<T> {
  code: number
  msg: string
  data: T
}

export async function requestHttp<T>(url: string, method: http.RequestMethod = http.RequestMethod.GET) {
  let urlStr = BASE_URL + url
  try {
    const res = await http.createHttp().request(urlStr, {
      method,
      extraData: '',
      expectDataType: http.HttpDataType.OBJECT,
      header: {
        ContentType: 'application/json'
      },
      readTimeout: 10000, // 如果多少秒没响应就断开
    })
    const result = res.result as T[]
    return result;
  } catch (err) {
    console.error('error', err)
    return Promise.reject(err)
  }

}


export class Request {
  /** T 代表的接口返回的数据的类型 后端返回的响应体中data的类型 */
  static get<T = null>(url: string): Promise<T[]> {
    return requestHttp<T>(url, http.RequestMethod.GET)
  }
}

