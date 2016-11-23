//
//  FourDetailViewController1.swift
//  WangyuxiangLivevideo
//
//  Created by wyx on 16/11/9.
//  Copyright © 2016年 . All rights reserved.
//

import UIKit
import Kingfisher
import Alamofire



class FourDetailViewController1: UIViewController,navigationprotocol {
    
    var fourDetailModel:FourImageModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor.whiteColor()
        config()
    }
    
    func config(){
        let imagView=UIImageView(frame: CGRect(x: 0, y: 0, width:UIScreen.mainScreen().bounds.size.width, height:UIScreen.mainScreen().bounds.size.height))
        imagView.image=UIImage(named: "38bg_failed_black@2x.png")
        view.addSubview(imagView)
        addTitle("影片")
        let btn=UIButton(frame: CGRect(x: 150, y: 250, width: 70, height: 70))
        btn.setTitle("点击", forState: .Normal)
        btn.setTitle("播放", forState: .Selected)
        btn.selected = true
        btn.setBackgroundImage(UIImage(named: "bubble.png"), forState: .Normal)
        btn.setTitleColor(UIColor.grayColor(), forState: .Normal)
        btn.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        
        btn.titleLabel?.textAlignment = .Left
        btn.titleLabel?.font=UIFont.systemFontOfSize(20)
        btn.addTarget(self, action: #selector(btnClick(_:)), forControlEvents:.TouchUpInside)
        view.addSubview(btn)
    }
    
    func btnClick(btn:UIButton){
        let alter=UIAlertController(title: "界面数据🏃丢了😭😭😭", message: "是否退出", preferredStyle: .ActionSheet)
        let action1=UIAlertAction(title: "退出", style: .Default, handler: {(a) in
        })
        alter.addAction(UIAlertAction(title: "点击播放动画", style: .Default, handler: { (a) in
        }))
        //添加操作（即按钮）
        alter.addAction(action1)
        // 用模态化呈现UIAlertController
        self.presentViewController(alter, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
