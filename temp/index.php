<?php
header("Content-Type: application/json");



// if ( $_SERVER['REQUEST_URI'] == "/index.php/hotelList") {
//     echo json_encode(
//         json_decode('{
//                     "code": 200,
//                     "msg": "success",
//                     "data":
//                 [
//             {
//               "id": 1,
//               "name": "舜和大酒店（天禧店）111",
//               "totalReviewsNum": "0",
//               "address": "中国济南经十纬五路133号",
//               "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fshgj_tx_icon.png?token=981eda66-75f8-48de-9ff8-d2a863dd79af",
//               "price": "322",
//               "labelList": [
//                 "特价房",
//                 "婚宴厅",
//                 "会议预定"
//               ]
//             },
//             {
//               "id": 3,
//               "name": "舜和大酒店（泉城广场店）",
//               "totalReviewsNum": "0",
//               "address": "济南市历下区泺源大街53号-2",
//               "price": "322",
//               "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsdsh_icon.png?token=6aaec69e-5877-4a73-85c8-e4aeb5bd20a5",
//               "labelList": [
//                 "免费停车",
//                 "豪华床",
//                 "三人床"
//               ]
//             },
//             {
//               "id": 4,
//               "name": "舜和国际酒店（济南店）",
//               "totalReviewsNum": "0",
//               "address": "山东省济南市经十路26008号",
//               "price": "322",
//               "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fshgj_icon.png?token=54e38b5b-7360-4d6e-9102-efc2f249a65f",
//               "labelList": [
//                 "免费停车",
//                 "家庭房",
//                 "双人床"
//               ]
//             },
//             {
//               "id": 5,
//               "name": "舜和国际酒店（枣庄店）",
//               "totalReviewsNum": "0",
//               "address": "枣庄市中区解放北路139号",
//               "price": "322",
//               "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsh_zz_icon.png?token=dfc5d1de-4afe-40c1-9a3f-ade2a957d04c",
//               "labelList": [
//                 "免费停车",
//                 "家庭房",
//                 "双人床"
//               ]
//             },
//             {
//               "id": 7,
//               "name": "舜和大酒店（海那城店）",
//               "totalReviewsNum": "0",
//               "address": "山东省济南市槐荫区二环西路美里路海那城43号楼",
//               "price": "322",
//               "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsh_hnc_icon.png?token=75d7d898-d3f0-44d1-8b9e-a3c68739033c",
//               "labelList": [
//                 "免费停车",
//                 "家庭房",
//                 "双人床"
//               ]
//             },
//             {
//               "id": 8,
//               "name": "舜和大酒店（长清店）",
//               "totalReviewsNum": "0",
//               "address": "山东省济南市长清区平安街道玉清路智造云谷产业园1号楼二层办公室",
//               "price": "342",
//               "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsh_cq_icon.png?token=042509b7-1fdd-4182-914b-6b6b5a48f7df",
//               "labelList": [
//                 "免费停车",
//                 "家庭房",
//                 "双人床"
//               ]
//             },
//             {
//               "id": 9,
//               "name": "舜和大酒店（江宁店）",
//               "totalReviewsNum": "0",
//               "address": "山东省济南市长清区平安街道玉清路智造云谷产业园1号楼三层办公室",
//               "price": "322",
//               "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsh_cq_icon.png?token=042509b7-1fdd-4182-914b-6b6b5a48f7df",
//               "labelList": [
//                 "免费停车",
//                 "家庭房",
//                 "双人床"
//               ]
//             },
//             {
//               "id": 10,
//               "name": "舜和大酒店（南京店）",
//               "totalReviewsNum": "0",
//               "address": "中国南京",
//               "price": "322",
//               "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fshgj_tx_icon.png?token=981eda66-75f8-48de-9ff8-d2a863dd79af",
//               "labelList": [
//                 "特价房",
//                 "婚宴厅",
//                 "会议预定"
//               ]
//             },
//             {
//               "id": 11,
//               "name": "舜和大酒店（江宁广场店）",
//               "totalReviewsNum": "0",
//               "address": "南京市江宁区",
//               "price": "322",
//               "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsdsh_icon.png?token=6aaec69e-5877-4a73-85c8-e4aeb5bd20a5",
//               "labelList": [
//                 "免费停车",
//                 "豪华床",
//                 "三人床"
//               ]
//             },
//             {
//               "id": 12,
//               "name": "舜和国际酒店（苏州店）",
//               "totalReviewsNum": "0",
//               "address": "江苏省苏州市",
//               "price": "322",
//               "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fshgj_icon.png?token=54e38b5b-7360-4d6e-9102-efc2f249a65f",
//               "labelList": [
//                 "免费停车",
//                 "家庭房",
//                 "双人床"
//               ]
//             },
//             {
//               "id": 13,
//               "name": "舜和国际酒店（扬州店）",
//               "totalReviewsNum": "0",
//               "address": "江苏省扬州市",
//               "price": "322",
//               "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsh_zz_icon.png?token=dfc5d1de-4afe-40c1-9a3f-ade2a957d04c",
//               "labelList": [
//                 "免费停车",
//                 "家庭房",
//                 "双人床"
//               ]
//             },
//             {
//               "id": 14,
//               "name": "舜和大酒店（晋江店）",
//               "totalReviewsNum": "0",
//               "address": "江苏省晋江市",
//               "price": "322",
//               "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsh_hnc_icon.png?token=75d7d898-d3f0-44d1-8b9e-a3c68739033c",
//               "labelList": [
//                 "免费停车",
//                 "家庭房",
//                 "双人床"
//               ]
//             },
//             {
//               "id": 15,
//               "name": "舜和大酒店（连云港）",
//               "totalReviewsNum": "0",
//               "address": "江苏省连云港",
//               "price": "322",
//               "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsh_cq_icon.png?token=042509b7-1fdd-4182-914b-6b6b5a48f7df",
//               "labelList": [
//                 "免费停车",
//                 "家庭房",
//                 "双人床"
//               ]
//             },
//             {
//               "id": 16,
//               "name": "舜和大酒店（上海店）",
//               "totalReviewsNum": "0",
//               "address": "中国上海",
//               "price": "322",
//               "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsh_cq_icon.png?token=042509b7-1fdd-4182-914b-6b6b5a48f7df",
//               "labelList": [
//                 "免费停车",
//                 "家庭房",
//                 "双人床"
//               ]
//             }
//           ]
//         }')



//     );
// }

if ( $_SERVER['REQUEST_URI'] == "/index.php/hotelList") {
    echo json_encode(
        json_decode('  [
            {
              "id": 1,
              "name": "舜和大酒店（天禧店）111",
              "totalReviewsNum": "0",
              "address": "中国济南经十纬五路133号",
              "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fshgj_tx_icon.png?token=981eda66-75f8-48de-9ff8-d2a863dd79af",
              "price": "322",
              "labelList": [
                "特价房",
                "婚宴厅",
                "会议预定"
              ]
            },
            {
              "id": 3,
              "name": "舜和大酒店（泉城广场店）",
              "totalReviewsNum": "0",
              "address": "济南市历下区泺源大街53号-2",
              "price": "322",
              "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsdsh_icon.png?token=6aaec69e-5877-4a73-85c8-e4aeb5bd20a5",
              "labelList": [
                "免费停车",
                "豪华床",
                "三人床"
              ]
            },
            {
              "id": 4,
              "name": "舜和国际酒店（济南店）",
              "totalReviewsNum": "0",
              "address": "山东省济南市经十路26008号",
              "price": "322",
              "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fshgj_icon.png?token=54e38b5b-7360-4d6e-9102-efc2f249a65f",
              "labelList": [
                "免费停车",
                "家庭房",
                "双人床"
              ]
            },
            {
              "id": 5,
              "name": "舜和国际酒店（枣庄店）",
              "totalReviewsNum": "0",
              "address": "枣庄市中区解放北路139号",
              "price": "322",
              "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsh_zz_icon.png?token=dfc5d1de-4afe-40c1-9a3f-ade2a957d04c",
              "labelList": [
                "免费停车",
                "家庭房",
                "双人床"
              ]
            },
            {
              "id": 7,
              "name": "舜和大酒店（海那城店）",
              "totalReviewsNum": "0",
              "address": "山东省济南市槐荫区二环西路美里路海那城43号楼",
              "price": "322",
              "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsh_hnc_icon.png?token=75d7d898-d3f0-44d1-8b9e-a3c68739033c",
              "labelList": [
                "免费停车",
                "家庭房",
                "双人床"
              ]
            },
            {
              "id": 8,
              "name": "舜和大酒店（长清店）",
              "totalReviewsNum": "0",
              "address": "山东省济南市长清区平安街道玉清路智造云谷产业园1号楼二层办公室",
              "price": "342",
              "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsh_cq_icon.png?token=042509b7-1fdd-4182-914b-6b6b5a48f7df",
              "labelList": [
                "免费停车",
                "家庭房",
                "双人床"
              ]
            },
            {
              "id": 9,
              "name": "舜和大酒店（江宁店）",
              "totalReviewsNum": "0",
              "address": "山东省济南市长清区平安街道玉清路智造云谷产业园1号楼三层办公室",
              "price": "322",
              "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsh_cq_icon.png?token=042509b7-1fdd-4182-914b-6b6b5a48f7df",
              "labelList": [
                "免费停车",
                "家庭房",
                "双人床"
              ]
            },
            {
              "id": 10,
              "name": "舜和大酒店（南京店）",
              "totalReviewsNum": "0",
              "address": "中国南京",
              "price": "322",
              "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fshgj_tx_icon.png?token=981eda66-75f8-48de-9ff8-d2a863dd79af",
              "labelList": [
                "特价房",
                "婚宴厅",
                "会议预定"
              ]
            },
            {
              "id": 11,
              "name": "舜和大酒店（江宁广场店）",
              "totalReviewsNum": "0",
              "address": "南京市江宁区",
              "price": "322",
              "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsdsh_icon.png?token=6aaec69e-5877-4a73-85c8-e4aeb5bd20a5",
              "labelList": [
                "免费停车",
                "豪华床",
                "三人床"
              ]
            },
            {
              "id": 12,
              "name": "舜和国际酒店（苏州店）",
              "totalReviewsNum": "0",
              "address": "江苏省苏州市",
              "price": "322",
              "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fshgj_icon.png?token=54e38b5b-7360-4d6e-9102-efc2f249a65f",
              "labelList": [
                "免费停车",
                "家庭房",
                "双人床"
              ]
            },
            {
              "id": 13,
              "name": "舜和国际酒店（扬州店）",
              "totalReviewsNum": "0",
              "address": "江苏省扬州市",
              "price": "322",
              "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsh_zz_icon.png?token=dfc5d1de-4afe-40c1-9a3f-ade2a957d04c",
              "labelList": [
                "免费停车",
                "家庭房",
                "双人床"
              ]
            },
            {
              "id": 14,
              "name": "舜和大酒店（晋江店）",
              "totalReviewsNum": "0",
              "address": "江苏省晋江市",
              "price": "322",
              "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsh_hnc_icon.png?token=75d7d898-d3f0-44d1-8b9e-a3c68739033c",
              "labelList": [
                "免费停车",
                "家庭房",
                "双人床"
              ]
            },
            {
              "id": 15,
              "name": "舜和大酒店（连云港）",
              "totalReviewsNum": "0",
              "address": "江苏省连云港",
              "price": "322",
              "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsh_cq_icon.png?token=042509b7-1fdd-4182-914b-6b6b5a48f7df",
              "labelList": [
                "免费停车",
                "家庭房",
                "双人床"
              ]
            },
            {
              "id": 16,
              "name": "舜和大酒店（上海店）",
              "totalReviewsNum": "0",
              "address": "中国上海",
              "price": "322",
              "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/hotel%2Fsh_cq_icon.png?token=042509b7-1fdd-4182-914b-6b6b5a48f7df",
              "labelList": [
                "免费停车",
                "家庭房",
                "双人床"
              ]
            }
          ]
        ')



    );
}




if ( $_SERVER['REQUEST_URI'] == "/index.php/roomList") {
    echo json_encode(json_decode('
    [
        {
          "id": 46,
          "roomName": "高级大床房",
          "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/room%2Froom_icon%2FshunHe_changQing%2Fgj_dc_icon.png?token=a92a4227-2c7e-43f8-84fd-9b83dc4ca054",
          "price": "322",
          "labelList": [
            "20㎡",
            "5层",
            "1.8米大床",
            "有窗"
          ]
        },
        {
          "id": 47,
          "roomName": "高级双人床房",
          "price": "323",
          "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/room%2Froom_icon%2FshunHe_changQing%2Fgj_sc_icon.png?token=ec0ce5c6-4b58-4800-97ab-7f3a44c73ca3",
          "labelList": [
            "20㎡",
            "5层",
            "2张1.1米单人床",
            "有窗"
          ]
        },
        {
          "id": 43,
          "roomName": "商务大床房",
          "price": "321",
          "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/room%2Froom_icon%2FshunHe_changQing%2Fsw_dc_icon.png?token=c42a1853-3856-466a-a7d9-ac6137465deb",
          "labelList": [
            "20㎡",
            "5层",
            "1.8米大床",
            "有窗"
          ]
        },
        {
          "id": 45,
          "roomName": "商务双床房",
          "price": "312",
          "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/room%2Froom_icon%2FshunHe_changQing%2Fsw_sc_icon.png?token=f65422d0-3743-4f07-bb88-ef8f001e70e9",
          "labelList": [
            "20㎡",
            "5层",
            "2张1.2米单人床",
            "有窗"
          ]
        },
        {
          "id": 44,
          "roomName": "商务套房",
          "price": "522",
          "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/room%2Froom_icon%2FshunHe_changQing%2Fsw_tf_icon.png?token=349e87b3-10bc-4819-a099-0f95357917ed",
          "labelList": [
            "45㎡",
            "5层",
            "1.8米大床",
            "有窗"
          ]
        },
        {
          "id": 2,
          "roomName": "雅悦双床房",
          "price": "622",
          "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/room%2Froom_icon%2FshunHeGuoJi_tianXi%2Fyy_sc_icon.png?token=612c00a9-67f7-49da-a4d9-701821780bd3",
          "labelList": [
            "20㎡",
            "2-5层",
            "2张1.2米单人床",
            "有窗"
          ]
        },
        {
          "id": 6,
          "roomName": "和悦双床房",
          "price": "628",
          "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/room%2Froom_icon%2FshunHeGuoJi_tianXi%2Fhy_sc_icon.png?token=d8f66bae-37be-4e8f-a02e-ce8f97789e85",
          "labelList": [
            "18㎡",
            "2-5层",
            "2张1.2米单人床",
            "有窗"
          ]
        },
        {
          "id": 7,
          "roomName": "禧悦大床房",
          "price": "328",
          "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/room%2Froom_icon%2FshunHeGuoJi_tianXi%2Fxy_dc_icon.png?token=5bebf57e-e198-4677-a583-e9372be5e4ff",
          "labelList": [
            "20㎡",
            "5层",
            "1.8米大床",
            "有窗"
          ]
        },
        {
          "id": 3,
          "roomName": "尊悦大床房",
          "price": "329",
          "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/room%2Froom_icon%2FshunHeGuoJi_tianXi%2Fzy_dc_icon.png?token=8be70b74-97ab-4bb5-b40d-6ec6095347b4",
          "labelList": [
            "32㎡",
            "2-5层",
            "1.5米大床",
            "有窗"
          ]
        },
        {
          "id": 1,
          "roomName": "雅悦大床房",
          "price": "621",
          "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/room%2Froom_icon%2FshunHeGuoJi_tianXi%2Fyy_dc_icon.png?token=7d064a52-89ae-43fb-abd8-8ca9e15f35c7",
          "labelList": [
            "18㎡",
            "2-4层",
            "1.5米大床",
            "有窗"
          ]
        },
        {
          "id": 5,
          "roomName": "和悦大床房",
          "price": "326",
          "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/room%2Froom_icon%2FshunHeGuoJi_tianXi%2Fhy_dc_icon.png?token=3db68eea-a7b1-4be5-817f-103fd54a1927",
          "labelList": [
            "20㎡",
            "2-5层",
            "1.8米大床",
            "无窗"
          ]
        },
        {
          "id": 4,
          "roomName": "尊悦套房",
          "price": "322",
          "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/room%2Froom_icon%2FshunHeGuoJi_tianXi%2Fzy_tf_icon.png?token=16ffce26-f2cf-4549-bb68-aa0d85069d03",
          "labelList": [
            "51㎡",
            "2-4层",
            "1.5米大床",
            "有窗"
          ]
        },
        {
          "id": 10,
          "roomName": "和雅高级大床房",
          "price": "322",
          "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/room%2Froom_icon%2FshunHeGuoJi_tianXi%2Fyy_dc_icon.png?token=7d064a52-89ae-43fb-abd8-8ca9e15f35c7",
          "labelList": [
            "29㎡",
            "2-4层",
            "1.8米大床",
            "有窗"
          ]
        },
        {
          "id": 11,
          "roomName": "贵宾大床房",
          "price": "258",
          "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/room%2Froom_icon%2FshunHeGuoJi_tianXi%2Fhy_dc_icon.png?token=3db68eea-a7b1-4be5-817f-103fd54a1927",
          "labelList": [
            "56㎡",
            "2-5层",
            "1.8米大床",
            "有窗"
          ]
        },
        {
          "id": 12,
          "roomName": "尊悦豪华套房",
          "price": "852",
          "imageUrl": "https://agc-storage-drcn.platform.dbankcloud.cn/v0/sunhe-kj08r/room%2Froom_icon%2FshunHeGuoJi_tianXi%2Fzy_tf_icon.png?token=16ffce26-f2cf-4549-bb68-aa0d85069d03",
          "labelList": [
            "55㎡",
            "2-4层",
            "1.8米大床",
            "有窗"
          ]
        }
      ]
    '));
}

if ( $_SERVER['REQUEST_URI'] == "/index.php/delicacyList") {
    echo json_encode(json_decode('
    [
        {
          "shopInfo": {
            "shopId": 9,
            "shopName": "舜和国际酒店（济南店）",
            "image": "/profile/upload/2023/12/19/国际店-展示图_20231219093615A044.png",
            "address": "济南市经十路26008号"
          },
          "packageInfo": {
            "shopMonthlySell": 652,
            "packages": [
              {
                "images": "/profile/upload/2023/12/19/国际店-巴西烤肉单人自助餐_20231219093807A057.png",
                "monthlySell": 100,
                "discountedPrice": 132,
                "price": 139,
                "packageName": "巴西烤肉单人自助餐",
                "id": 20
              },
              {
                "images": "/profile/upload/2023/12/19/国际店-特惠双人自助餐_20231219093818A058.png",
                "monthlySell": 100,
                "discountedPrice": 256,
                "price": 278,
                "packageName": "特惠双人自助餐",
                "id": 20
              },
              {
                "images": "/profile/upload/2023/12/19/国际店-超值家庭票（2大1小）_20231219093826A059.png",
                "monthlySell": 100,
                "discountedPrice": 286,
                "price": 348,
                "packageName": "超值家庭票（2大1小）",
                "id": 22
              },
              {
                "images": "/profile/upload/2024/04/12/龙年好评四人餐_20240412162752A108.jpg",
                "monthlySell": 100,
                "discountedPrice": 299,
                "price": 641,
                "packageName": "龙年好运四人餐",
                "id": 23
              },
              {
                "images": "/profile/upload/2024/04/12/龙年大吉8-10人餐_1__20240412162951A113.jpg",
                "monthlySell": 100,
                "discountedPrice": 1699,
                "price": 2195,
                "packageName": "精致海鲜8-10人餐",
                "id": 24
              }
            ]
          }
        },
        {
          "shopInfo": {
            "shopId": 7,
            "shopName": "舜和大酒店（天禧店）",
            "image": "/profile/upload/2023/12/19/天禧店-展示图_20231219093513A036.png",
            "address": "济南市市中区经十纬五路133号"
          },
          "packageInfo": {
            "shopMonthlySell": 498,
            "packages": [
              {
                "images": "/profile/upload/2024/04/12/5-超值钜惠双人套餐1%20拷贝_20240412162509A101.jpg",
                "monthlySell": 100,
                "discountedPrice": 199,
                "price": 297,
                "packageName": "超值钜惠双人餐",
                "id": 16
              },
              {
                "images": "/profile/upload/2024/04/12/3-鲍鱼大虾（4-6人）套餐1%20拷贝_20240412162526A102.jpg",
                "monthlySell": 100,
                "discountedPrice": 499,
                "price": 1427,
                "packageName": "鲍鱼大虾六人套餐",
                "id": 17
              },
              {
                "images": "/profile/upload/2024/04/12/2-波士顿龙虾8人餐1%20拷贝_20240412162540A103.jpg",
                "monthlySell": 100,
                "discountedPrice": 799,
                "price": 946,
                "packageName": "波士顿龙虾6-8人餐",
                "id": 18
              },
              {
                "images": "/profile/upload/2024/04/12/1-龙虾鲍鱼（8-10人）套餐1%20拷贝_20240412162559A104.jpg",
                "monthlySell": 100,
                "discountedPrice": 1399,
                "price": 2230,
                "packageName": "龙虾鲍鱼8-10人餐",
                "id": 19
              }
            ]
          }
        }
      ]
    '));
}

if ( $_SERVER['REQUEST_URI'] == "/index.php/banquetHotelList") {
    echo json_encode(json_decode('
    [
        {
          "id": 3,
          "hotelName": "舜和国际酒店",
          "hotelAddress": "济南市经十路26008号（近济南西站）",
          "displayImg": "/profile/upload/2024/02/07/宴会酒店列表图_20240207170814A029.png",
          "maxArea": "1300㎡",
          "maxCapacity": "1200人"
        },
        {
          "id": 4,
          "hotelName": "山东舜和酒店",
          "hotelAddress": "山东省济南市历下区泺源大街53号",
          "displayImg": "/profile/upload/2024/02/07/宴会酒店列表图_20240207170705A028.png",
          "maxArea": "200㎡",
          "maxCapacity": "140人"
        },
        {
          "id": 5,
          "hotelName": "舜和国际酒店天禧店",
          "hotelAddress": "山东省济南市中区经十纬五路133号",
          "displayImg": "/profile/upload/2024/02/07/宴会酒店列表图_20240207170846A030.png",
          "maxArea": "200㎡",
          "maxCapacity": "140人"
        },
        {
          "id": 6,
          "hotelName": "舜和枣庄大酒店",
          "hotelAddress": "山东省枣庄市中区解放北路139号",
          "displayImg": "/profile/upload/2024/02/07/宴会酒店列表图_20240207170927A032.png",
          "maxArea": "300㎡",
          "maxCapacity": "240人"
        },
        {
          "id": 7,
          "hotelName": "舜和海鲜（天发店）",
          "hotelAddress": "山东省济南市天桥区堤口路31号（靠近火车站）",
          "displayImg": "/profile/upload/2024/02/07/宴会酒店列表图_20240207170906A031.png",
          "maxArea": "280㎡",
          "maxCapacity": "160人"
        },
        {
          "id": 8,
          "hotelName": "舜和国际酒店(南京店）",
          "hotelAddress": "江苏省南京市",
          "displayImg": "/profile/upload/2024/02/07/宴会酒店列表图_20240207170814A029.png",
          "maxArea": "1300㎡",
          "maxCapacity": "1200人"
        },
        {
          "id": 9,
          "hotelName": "南京舜和酒店",
          "hotelAddress": "江苏省南京市",
          "displayImg": "/profile/upload/2024/02/07/宴会酒店列表图_20240207170705A028.png",
          "maxArea": "200㎡",
          "maxCapacity": "140人"
        },
        {
          "id": 10,
          "hotelName": "舜和国际酒店苏州店",
          "hotelAddress": "江苏省苏州市",
          "displayImg": "/profile/upload/2024/02/07/宴会酒店列表图_20240207170846A030.png",
          "maxArea": "200㎡",
          "maxCapacity": "140人"
        },
        {
          "id": 11,
          "hotelName": "舜和扬州大酒店",
          "hotelAddress": "江苏省扬州市",
          "displayImg": "/profile/upload/2024/02/07/宴会酒店列表图_20240207170927A032.png",
          "maxArea": "300㎡",
          "maxCapacity": "240人"
        },
        {
          "id": 12,
          "hotelName": "舜和海鲜（连云港）",
          "hotelAddress": "江苏省连云港（靠近火车站）",
          "displayImg": "/profile/upload/2024/02/07/宴会酒店列表图_20240207170906A031.png",
          "maxArea": "280㎡",
          "maxCapacity": "160人"
        }
      ]
    '));
}

if ( $_SERVER['REQUEST_URI'] == "/index.php/banquetList") {
    echo json_encode(json_decode('
    [
        {
          "id": 14,
          "banquetName": "401鲁韵厅",
          "labelList": [
            "会议厅"
          ],
          "banner": "/profile/upload/2024/03/06/企业微信截图_17097139656164_20240306163439A015.png"
        },
        {
          "id": 15,
          "banquetName": " 402齐风厅",
          "labelList": [
            "宴会厅"
          ],
          "banner": "/profile/upload/2024/03/06/企业微信截图_17097143202074_20240306163955A020.png"
        },
        {
          "id": 16,
          "banquetName": " 406揽秀厅",
          "labelList": [
            "会议厅"
          ],
          "banner": "/profile/upload/2024/03/06/企业微信截图_17097146751547_20240306164637A024.png"
        },
        {
          "id": 12,
          "banquetName": " 407娥皇厅",
          "labelList": [
            "可容纳240人"
          ],
          "banner": "/profile/upload/2024/03/06/企业微信截图_17097131604034_20240306162200A006.png"
        },
        {
          "id": 13,
          "banquetName": "408女英厅",
          "labelList": [
            "参会可容纳240人",
            "大型会议厅"
          ],
          "banner": "/profile/upload/2024/03/06/企业微信截图_17097135422281_20240306162835A010.png"
        },
        {
          "id": 17,
          "banquetName": "409箫韶厅",
          "labelList": [
            "会议厅"
          ],
          "banner": "/profile/upload/2024/03/06/企业微信截图_17097150251813_20240306165138A027.png"
        },
        {
          "id": 2,
          "banquetName": "410重华厅",
          "labelList": [
            "大型宴会",
            "进口艾迪线阵"
          ],
          "banner": "/profile/upload/2024/02/07/01_20240207171125A035.png"
        },
        {
          "id": 3,
          "banquetName": "重华厅三分之一厅",
          "labelList": [
            "会议厅"
          ],
          "banner": "/profile/upload/2024/02/07/01_20240207171218A037.png"
        },
        {
          "id": 18,
          "banquetName": " 禧八喜",
          "labelList": [
            "会议厅"
          ],
          "banner": "/profile/upload/2024/03/06/企业微信截图_17097152567968_20240306165500A030.png"
        },
        {
          "id": 19,
          "banquetName": " 一楼贵宾室",
          "labelList": [
            "会议厅"
          ],
          "banner": "/profile/upload/2024/03/06/企业微信截图_17097154318107_20240306165812A032.png"
        }
      ]
    '));
}



if ( $_SERVER['REQUEST_URI'] == "/index.php/orderList") {
    echo json_encode(json_decode('
    [
        {
          "id": 1,
          "orderStatus": "13",
          "hotelName": "舜和国际酒店天禧店",
          "roomName": "雅悦双床房",
          "arrDate": "2023-11-24",
          "depDate": "2023-11-25",
          "nights": 1,
          "rmQty": 1,
          "actualPaidPrice": "123"
        },
        {
          "id": 2,
          "orderStatus": "20",
          "hotelName": "舜和国际酒店天禧店",
          "roomName": "雅悦大床房",
          "arrDate": "2024-04-24",
          "depDate": "2024-04-25",
          "nights": 1,
          "rmQty": 1,
          "actualPaidPrice": "134"
        },
        {
          "id": 3,
          "orderStatus": "10",
          "hotelName": "舜和国际酒店天禧店",
          "roomName": "和悦双床房",
          "arrDate": "2023-12-24",
          "depDate": "2023-12-25",
          "nights": 1,
          "rmQty": 1,
          "actualPaidPrice": "124"
        },
        {
          "id": 4,
          "orderStatus": "11",
          "hotelName": "舜和国际酒店天禧店",
          "roomName": "尊悦大床房",
          "arrDate": "2024-04-25",
          "depDate": "2024-04-26",
          "nights": 1,
          "rmQty": 1,
          "actualPaidPrice": "234"
        },
        {
          "id": 5,
          "orderStatus": "20",
          "hotelName": "舜和国际酒店济南店",
          "roomName": "雅悦双床房",
          "arrDate": "2023-11-24",
          "depDate": "2023-11-25",
          "nights": 1,
          "rmQty": 1,
          "actualPaidPrice": "123"
        },
        {
          "id": 6,
          "orderStatus": "20",
          "hotelName": "舜和国际酒店济南店",
          "roomName": "雅悦大床房",
          "arrDate": "2024-04-24",
          "depDate": "2024-04-25",
          "nights": 1,
          "rmQty": 1,
          "actualPaidPrice": "134"
        },
        {
          "id": 7,
          "orderStatus": "10",
          "hotelName": "舜和国际酒店济南店",
          "roomName": "和悦双床房",
          "arrDate": "2023-12-24",
          "depDate": "2023-12-25",
          "nights": 1,
          "rmQty": 1,
          "actualPaidPrice": "124"
        },
        {
          "id": 8,
          "orderStatus": "11",
          "hotelName": "舜和国际酒店济南店",
          "roomName": "尊悦大床房",
          "arrDate": "2024-04-25",
          "depDate": "2024-04-26",
          "nights": 1,
          "rmQty": 1,
          "actualPaidPrice": "234"
        },
        {
          "id": 9,
          "orderStatus": "13",
          "hotelName": "舜和国际酒店枣庄店",
          "roomName": "雅悦双床房",
          "arrDate": "2023-11-24",
          "depDate": "2023-11-25",
          "nights": 1,
          "rmQty": 1,
          "actualPaidPrice": "123"
        },
        {
          "id": 2,
          "orderStatus": "20",
          "hotelName": "舜和国际酒店枣庄店",
          "roomName": "雅悦大床房",
          "arrDate": "2024-04-24",
          "depDate": "2024-04-25",
          "nights": 1,
          "rmQty": 1,
          "actualPaidPrice": "134"
        },
        {
          "id": 3,
          "orderStatus": "15",
          "hotelName": "舜和国际酒店枣庄店",
          "roomName": "和悦双床房",
          "arrDate": "2023-12-24",
          "depDate": "2023-12-25",
          "nights": 1,
          "rmQty": 1,
          "actualPaidPrice": "124"
        },
        {
          "id": 4,
          "orderStatus": "0",
          "hotelName": "舜和国际酒店枣庄店",
          "roomName": "尊悦大床房",
          "arrDate": "2024-04-25",
          "depDate": "2024-04-26",
          "nights": 1,
          "rmQty": 1,
          "actualPaidPrice": "234"
        },
        {
          "id": 5,
          "orderStatus": "20",
          "hotelName": "舜和国际酒店枣庄店",
          "roomName": "雅悦双床房",
          "arrDate": "2023-11-24",
          "depDate": "2023-11-25",
          "nights": 1,
          "rmQty": 1,
          "actualPaidPrice": "123"
        },
        {
          "id": 6,
          "orderStatus": "20",
          "hotelName": "舜和国际酒店枣庄店",
          "roomName": "雅悦大床房",
          "arrDate": "2024-04-24",
          "depDate": "2024-04-25",
          "nights": 1,
          "rmQty": 1,
          "actualPaidPrice": "134"
        },
        {
          "id": 7,
          "orderStatus": "10",
          "hotelName": "舜和国际酒店枣庄店",
          "roomName": "和悦双床房",
          "arrDate": "2023-12-24",
          "depDate": "2023-12-25",
          "nights": 1,
          "rmQty": 1,
          "actualPaidPrice": "124"
        },
        {
          "id": 8,
          "orderStatus": "11",
          "hotelName": "舜和国际酒店枣庄店",
          "roomName": "尊悦大床房",
          "arrDate": "2024-04-25",
          "depDate": "2024-04-26",
          "nights": 1,
          "rmQty": 1,
          "actualPaidPrice": "234"
        },
        {
          "orderStatus": "11",
          "hotelName": "舜和国际酒店枣庄店2",
          "roomName": "尊悦大床房2",
          "arrDate": "2024-04-25",
          "depDate": "depDate",
          "nights": "1",
          "rmQty": "1",
          "actualPaidPrice": "888",
          "id": 10
        },
        {
          "orderStatus": "11",
          "hotelName": "舜和国际酒店枣庄店3",
          "roomName": "尊悦大床房3",
          "arrDate": "2024-04-25",
          "depDate": "depDate",
          "nights": "1",
          "rmQty": "1",
          "actualPaidPrice": "888",
          "id": 11
        },
        {
          "orderStatus": "11",
          "hotelName": "舜和国际酒店枣庄店3",
          "roomName": "尊悦大床房3",
          "arrDate": "2024-04-25",
          "depDate": "depDate",
          "nights": "1",
          "rmQty": "1",
          "actualPaidPrice": "888",
          "id": 12
        },
        {
          "orderStatus": "11",
          "hotelName": "舜和国际酒店枣庄店3",
          "roomName": "尊悦大床房3",
          "arrDate": "2024-04-25",
          "depDate": "depDate",
          "nights": "1",
          "rmQty": "1",
          "actualPaidPrice": "888",
          "id": 13
        },
        {
          "orderStatus": "11",
          "hotelName": "舜和国际酒店枣庄店3",
          "roomName": "尊悦大床房3",
          "arrDate": "2024-04-25",
          "depDate": "depDate",
          "nights": "1",
          "rmQty": "1",
          "actualPaidPrice": "888",
          "id": 14
        },
        {
          "orderStatus": "11",
          "hotelName": "舜和国际酒店天禧店4",
          "roomName": "雅悦双床房5",
          "arrDate": "2023-11-24",
          "depDate": "2023-11-25",
          "nights": "1",
          "rmQty": "1",
          "actualPaidPrice": "45524",
          "id": 15
        },
        {
          "orderStatus": "11",
          "hotelName": "舜和国际酒店枣庄店3",
          "roomName": "尊悦大床房3",
          "arrDate": "2024-04-25",
          "depDate": "2024-04-26",
          "nights": "1",
          "rmQty": "1",
          "actualPaidPrice": "666",
          "id": 16
        },
        {
          "orderStatus": "11",
          "hotelName": "舜和国际酒店枣庄店3",
          "roomName": "尊悦大床房3",
          "arrDate": "2024-04-25",
          "depDate": "2024-04-26",
          "nights": "1",
          "rmQty": "1",
          "actualPaidPrice": "666",
          "id": 17
        },
        {
          "orderStatus": "11",
          "hotelName": "舜和国际酒店天禧店888",
          "roomName": "雅悦双床房5",
          "arrDate": "2023-11-24",
          "depDate": "2023-11-25",
          "nights": "1",
          "rmQty": "1",
          "actualPaidPrice": "312",
          "id": 18
        },
        {
          "orderStatus": "11",
          "hotelName": "舜和国际酒店天禧店999",
          "roomName": "雅悦双床房5",
          "arrDate": "2023-11-24",
          "depDate": "2023-11-25",
          "nights": "1",
          "rmQty": "1",
          "actualPaidPrice": "231",
          "id": 19
        },
        {
          "orderStatus": "11",
          "hotelName": "舜和国际酒店天禧店2223",
          "roomName": "雅悦双床房5",
          "arrDate": "2023-11-24",
          "depDate": "2023-11-25",
          "nights": "1",
          "rmQty": "1",
          "actualPaidPrice": "321",
          "id": 20
        },
        {
          "orderStatus": "222",
          "hotelName": "舜和国际酒店天禧店1111",
          "roomName": "雅悦双床房5",
          "arrDate": "2023-11-24",
          "depDate": "2023-11-25",
          "nights": "1",
          "rmQty": "1",
          "actualPaidPrice": "5324",
          "id": 21
        },
        {
          "orderStatus": "3333",
          "hotelName": "舜和国际酒店天禧店1111",
          "roomName": "雅悦双床房5",
          "arrDate": "2023-11-24",
          "depDate": "2023-11-25",
          "nights": "1",
          "rmQty": "1",
          "actualPaidPrice": "1234",
          "id": 21
        }
      ]
    '));
}

if ( $_SERVER['REQUEST_URI'] == "/index.php/user") {
    echo json_encode(json_decode('
    {
        "id": 1,
        "name": "lisi",
        "nickName": "lisi",
        "sex": "0",
        "tel": "18296498526",
        "birthday": "2001-11-11"
      }
    '));
}


if ( $_SERVER['REQUEST_URI'] == "/index.php/comments") {
    echo json_encode(json_decode('
    [
        {
          "id": 1,
          "commentMakerName": "1***2",
          "comment": "很不错，环境卫生，服务很贴心，用餐体验也可以，菜品新鲜",
          "score": 5,
          "commentTime": "2024-02-26 11:55:31",
          "hotelName": "舜和国际酒店（济南店）"
        },
        {
          "id": 2,
          "commentMakerName": "1***8",
          "comment": "点赞，非常好！",
          "score": 5,
          "commentTime": "2024-02-07 15:20:57",
          "hotelName": "舜和国际酒店（济南店）"
        },
        {
          "id": 3,
          "commentMakerName": "1***6",
          "comment": "很不错，环境卫生，服务很贴心，用餐体验也可以，菜品新鲜,很舒服",
          "score": 5,
          "commentTime": "2024-03-26 11:55:31",
          "hotelName": "舜和国际酒店（济南店）"
        },
        {
          "id": 4,
          "commentMakerName": "1***8",
          "comment": "点赞，非常好！下次还来",
          "score": 5,
          "commentTime": "2024-02-22 15:20:57",
          "hotelName": "舜和国际酒店（济南店）"
        },
        {
          "id": 5,
          "commentMakerName": "1***2",
          "comment": "很不错",
          "score": 5,
          "commentTime": "2024-02-26 11:55:31",
          "hotelName": "舜和国际酒店（天禧店）"
        },
        {
          "id": 6,
          "commentMakerName": "1***8",
          "comment": "点赞！",
          "score": 5,
          "commentTime": "2024-02-07 15:20:57",
          "hotelName": "舜和国际酒店（天禧店）"
        },
        {
          "id": 7,
          "commentMakerName": "1***6",
          "comment": "环境卫生，服务很贴心",
          "score": 5,
          "commentTime": "2024-03-26 11:55:31",
          "hotelName": "舜和国际酒店（天禧店）"
        },
        {
          "id": 8,
          "commentMakerName": "1***8",
          "comment": "下次还来！",
          "score": 5,
          "commentTime": "2024-02-22 15:20:57",
          "hotelName": "舜和国际酒店（天禧店）"
        },
        {
          "id": 9,
          "commentMakerName": "1***2",
          "comment": "入住顺利！",
          "score": 5,
          "commentTime": "2024-02-26 11:55:31",
          "hotelName": "舜和国际酒店（枣庄店）"
        },
        {
          "id": 10,
          "commentMakerName": "1***8",
          "comment": "菜品好吃！",
          "score": 5,
          "commentTime": "2024-02-07 15:20:57",
          "hotelName": "舜和国际酒店（枣庄店）"
        },
        {
          "id": 11,
          "commentMakerName": "1***6",
          "comment": "环境卫生",
          "score": 5,
          "commentTime": "2024-03-26 11:55:31",
          "hotelName": "舜和国际酒店（枣庄店）"
        },
        {
          "id": 12,
          "commentMakerName": "1***8",
          "comment": "服务好！",
          "score": 5,
          "commentTime": "2024-02-22 15:20:57",
          "hotelName": "舜和国际酒店（枣庄店）"
        },
        {
          "id": 13,
          "commentMakerName": "1***2",
          "comment": "很不错",
          "score": 5,
          "commentTime": "2024-02-26 11:55:31",
          "hotelName": "舜和国际酒店（长清店）"
        },
        {
          "id": 14,
          "commentMakerName": "1***8",
          "comment": "点赞！",
          "score": 5,
          "commentTime": "2024-02-07 15:20:57",
          "hotelName": "舜和国际酒店（长清店）"
        },
        {
          "id": 15,
          "commentMakerName": "1***6",
          "comment": "环境卫生，服务很贴心",
          "score": 5,
          "commentTime": "2024-03-26 11:55:31",
          "hotelName": "舜和国际酒店（长清店）"
        }
      ]
    '));
}

if ( $_SERVER['REQUEST_URI'] == "/index.php/winRecord") {
    echo json_encode(json_decode('
    [
        {
          "id": 1,
          "shopName": "43度茅台500ml(价值1099)",
          "image": "https://www.csohoh.com/images/vip.png",
          "expiryDate": "2024.05.20-2024.06.20",
          "status": "1"
        },
        {
          "id": 2,
          "shopName": "53度茅台500ml(价值1499)",
          "image": "https://www.csohoh.com/images/vip.png",
          "expiryDate": "2024.05.20-2024.06.20",
          "status": "1"
        },
        {
          "id": 3,
          "shopName": "iphone15 粉色 128g(价值5999)",
          "image": "https://www.csohoh.com/images/vip.png",
          "expiryDate": "2024.05.20-2024.06.20",
          "status": "1"
        },
        {
          "id": 4,
          "shopName": "iphone15pro 粉色 128g(价值5999)\"",
          "image": "https://www.csohoh.com/images/vip.png",
          "expiryDate": "2024.05.20-2024.06.20",
          "status": "1"
        },
        {
          "id": 5,
          "shopName": "罗技鼠标(价值200)",
          "image": "https://www.csohoh.com/images/vip.png",
          "expiryDate": "2024.05.20-2024.06.20",
          "status": "2"
        },
        {
          "id": 6,
          "shopName": "联想键盘(价值100)",
          "image": "https://www.csohoh.com/images/vip.png",
          "expiryDate": "2024.04.20-2024.05.20",
          "status": "3"
        }
      ]
    '));
}








