//
//  EnterViewController.swift
//  WangyuxiangLivevideo
//
//  Created by qianfeng on 16/11/16.
//  Copyright © 2016年 zhb. All rights reserved.
//

import UIKit
import Kingfisher
import SnapKit

class EnterViewController: UIViewController,navigationprotocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor=UIColor.whiteColor()
        addBarButton("登录", bgImageName: nil, postion: .left, select: #selector(LeftClick(_:)))
        addBarButton("注册", bgImageName: nil, postion: .right, select: #selector(rightClick(_:)))
        configUi()
        
    }
    
    func configUi(){
        let textFile=UITextField(frame: CGRect(x: 80, y: 100, width: screenWidth, height: 50))
        textFile.placeholder="请输入邮箱和手机号"
        view.addSubview(textFile)
        let textFile1=UITextField(frame: CGRect(x: 80, y: 150, width: screenWidth, height: 50))
        textFile1.placeholder="请输入密码"
        view.addSubview(textFile1)
        
        
        let btn=UIButton()
        view.addSubview(btn)
        btn.snp_makeConstraints { (make) in
            make.left.right.equalTo(view).offset(20)
            make.top.equalTo(textFile1.snp_bottom).offset(18)
            make.height.equalTo(40)
        }
        btn.setBackgroundImage(UIImage(named: "bg_show_qishu_320x50_@2x.png"), forState: .Normal)
        btn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        btn.setTitle("登录", forState: .Normal)
        btn.titleLabel?.textAlignment = .Left
        
        
        
        
        
        
        
        
    }
    func LeftClick(lBtn:UIButton){
        
    }
    func rightClick(rBtn:UIButton){
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
