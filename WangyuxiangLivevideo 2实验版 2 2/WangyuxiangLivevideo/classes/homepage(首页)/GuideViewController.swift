//
//  GuideViewController.swift
//  WangyuxiangLivevideo
//
//  Created by wyx on 16/11/9.
//  Copyright © 2016年 . All rights reserved.
//

import UIKit


class GuideViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
    }
    
    func config(){
        let scrollView=UIScrollView(frame: UIScreen.mainScreen().bounds)
        scrollView.pagingEnabled=true
        view.backgroundColor=UIColor.grayColor()
        view.addSubview(scrollView)
        //循环添加图片
        //guideView_1 guideView_2 guideView_3 guideView_4
        for i in 1...3{
            let frame=CGRect(x: screenWidth*CGFloat(i-1), y: 0, width: screenWidth, height: screenHeight)
            let imageView=UIImageView(frame: frame)
            //imageView.image=UIImage(named: "guideView_bg")
            scrollView.addSubview(imageView)
            
            //图片
            let tmpImageView=UIImageView(frame: imageView.bounds)
            tmpImageView.image=UIImage(named:NSString(format:"guideImage%ld_640x960_@1x.png", i) as String )
            imageView.addSubview(tmpImageView)
            if i==3{
                imageView.userInteractionEnabled=true
                // 按钮
                let btn=UIButton(type: .Custom)
                btn.frame=CGRect(x: 150, y: screenHeight-240, width: 170, height: 200)
                btn.addTarget(self, action: #selector(clickBtn), forControlEvents: .TouchUpInside)
                imageView.addSubview(btn)
            }
        }
        scrollView.contentSize=CGSizeMake(screenWidth*3, 0)
    }
    
    func clickBtn(){
        
//        view.window?.rootViewController=MainTabBarViewController()
        
        //创建视图控制器
        //Main.storyboard
//        let sb=UIStoryboard.init(name: "Login", bundle: nil);
//      let tabCtrl=sb.instantiateInitialViewController() 
////        UITabBarController *tabCtrl = [sb instantiateInitialViewController];
////
//        //切换到主界面
//        let appDele=UIApplication.sharedApplication().delegate
//        appDele?.window!!.rootViewController=LoginViewController()
        view.window?.rootViewController=LoginViewController()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
