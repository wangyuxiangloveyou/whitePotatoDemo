//
//  Theme.swift
//  WangyuxiangLivevideo
//
//  Created by wyx on 16/10/24.
//  Copyright © 2016年 . All rights reserved.
//

import Foundation
import UIKit


let screenWidth=UIScreen.mainScreen().bounds.width
let screenHeight=UIScreen.mainScreen().bounds.height
let findUrl="http://discover.api.3g.tudou.com/v4_7/rec_discover?pid=35a871d7c541ba6b&ver=5.8.5&network=WIFI&operator=CMCC_46002"
//搞笑
let cryUrl="http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&cid=5"
let carUrl = "http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&cid=26"
let growUrl="http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&cid=25"
//综艺
let VarietyUrl="http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&cid=31"
let gameUrl="http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&cid=10"
//电视剧
let teleplayUrl="http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&cid=30"
//电影
let movieUrl="http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&cid=22"
//达人直播
let seedingUrl="http://cms.laifeng.com/cms/youku/sdk/center/talent/get?pageNo=1&limit=18"
//关注
let ConcernUrl="http://adash.m.taobao.com/rest/sur?ak=23033760&av=5.8.5&c=0&v=3.0&s=6589aa6282223551d6a4b49a7b0c19364d5e1cff&d=WAgrFKuUIiwDABa4I5GMqRWA&sv=4.3.8&p=a&t=1476975398378&u=&is=1"
//动漫
let AnimationUrl="http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&cid=14"
//音乐music无
let musicUrl="http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&cid=1"
//娱乐无
let amusementUrl="http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&cid=1"
//搞笑
let FunnyUrl = "http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&cid=5"
//少儿Children无
let ChildrenUrl="http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&cid=10001"
//生活life
let lifeUrl = "http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&cid=3"
//会员member
let memberUrl = "http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&cid=422"
//体育url
let sportUrl="http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&cid=15"
//时尚urlfashion
let fashionUrl = "http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&cid=32"
//精彩专题Special
let SpecialUrl="http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&cid=10024"
//原创
let OriginalUrl="http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&_t_=1478175706&network=WIFI&operator=CMCC_46002&cid=99"
//乐活
let happyLifeUrl="http://api.3g.tudou.com/v5/channel/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&cid=3"


let thirdUrl="http://user.api.3g.tudou.com/v4/user/ugc_list?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&user_ids=333057554&page_size=30&sort_desc_by=pub"
//订阅//二次元"
let firistUrl="http://user.api.3g.tudou.com/v4/user/ugc_list?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&user_ids=86317397&page_size=30&sort_desc_by=pub"
let secondUrl="http://user.api.3g.tudou.com/v4/user/ugc_list?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&user_ids=114357319&page_size=30&sort_desc_by=pub"

  let fourUrl="http://api.3g.tudou.com/v4/channel/comic_listing?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&channel_id=0"
let fourUrlDetail="http://rec.api.3g.tudou.com/v5/video/relevan/rec?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&itemCode=gvB83qQ-x2E&pg=1&pz=16"

let collectUrl="http://api.3g.tudou.com/v5/home?pid=35a871d7c541ba6b&network=WIFI&operator=CMCC_46002&excludeNew=0&show_url=1&live=1"
