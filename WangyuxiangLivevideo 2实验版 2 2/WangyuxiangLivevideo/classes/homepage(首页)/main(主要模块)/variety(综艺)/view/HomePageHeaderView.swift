//
//  HomePageHeaderView.swift
//  WangyuxiangLivevideo
//
//  Created by qianfeng on 16/10/26.
//  Copyright © 2016年 zhb. All rights reserved.
//

import UIKit

class HomePageHeaderView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        //设置背景颜色
        backgroundColor=UIColor(white: 0.9, alpha: 1.0)
        
        //文本输入框
        
        let textField1=UITextField(frame: CGRect(x: 10, y: 4, width: bounds.size.width-20, height: 30))
        textField1.placeholder="请输入要查找的名字"
        textField1.borderStyle = .RoundedRect
        addSubview(textField1)
        //设置搜索图片
        let image=UIImage(named: "search1")
        let imageView=UIImageView(image: image)
        imageView.frame=CGRectMake(0, 0, 15, 15)
        
        textField1.leftView=imageView
        textField1.leftViewMode = .Always
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

