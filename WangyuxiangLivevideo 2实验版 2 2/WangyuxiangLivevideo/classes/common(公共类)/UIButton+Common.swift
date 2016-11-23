//
//  UIButton+Common.swift
//  WangyuxiangLivevideo
//
//  Created by qianfeng on 16/11/4.
//  Copyright © 2016年 zhb. All rights reserved.
//

import Foundation
import UIKit

extension UIButton{
    class func creatBtn(title:String?,bgImageName:String?,highlightImageName:String?,selectImageName:String?,target:AnyObject?,action:Selector)->UIButton{
        let btn=UIButton(type: .Custom)
        
        if let tmpTitle=title{
            btn.setTitle(tmpTitle, forState: .Normal)
            btn.setTitleColor(UIColor.blackColor(), forState: .Normal)
            
        }
        
        if let tmpBgImageName=bgImageName{
            btn.setBackgroundImage(UIImage(named: tmpBgImageName), forState: .Normal)
        }
        if let tmphighlightImageName=highlightImageName{
            btn.setBackgroundImage(UIImage(named: tmphighlightImageName), forState: .Highlighted)
        }
        if let tmpselectImageName=selectImageName{
            btn.setBackgroundImage(UIImage(named: tmpselectImageName), forState: .Selected)
        }
        if target != nil && action != nil{
            btn.addTarget(target, action: action, forControlEvents: .TouchUpInside)
        }
        return btn
    }
}
