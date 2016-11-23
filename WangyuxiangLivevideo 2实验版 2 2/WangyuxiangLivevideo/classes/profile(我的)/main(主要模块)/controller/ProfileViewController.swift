//
//  ProfileViewController.swift
//  WangyuxiangLivevideo
//
//  Created by wyx on 16/10/25.
//  Copyright © 2016年 . All rights reserved.
//

import UIKit

class ProfileViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor.whiteColor()
        let label=UILabel(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 220))
        label.backgroundColor=UIColor.orangeColor()
        view.addSubview(label)
        let btn=UIButton(frame: CGRect(x: 40, y: 100, width: 60, height: 60))
        btn.setBackgroundImage(UIImage(named: "default_head_51x51_@1x.png"), forState: .Normal)
        btn.addTarget(self, action: #selector(btnClick(_:)), forControlEvents: .TouchUpInside)
        view.addSubview(btn)
        let label1=UILabel(frame: CGRect(x: 140, y: 110, width: 100, height: 30))
        label1.text="马上登录"
        label1.textColor=UIColor.whiteColor()
        label1.font=UIFont.systemFontOfSize(16)
        view.addSubview(label1)
        
        //下载
        let btn1=UIButton(frame: CGRect(x: screenWidth-140, y: 100, width: 60, height: 60))
        btn1.setImage(UIImage(named: "detail_cache_30x30_@3x.png"), forState: .Normal)
        btn1.addTarget(self, action: #selector(btn1Click(_:)), forControlEvents: .TouchUpInside)
        view.addSubview(btn1)
        
        //分享
        let btn2=UIButton(frame: CGRect(x: screenWidth-70, y: 100, width: 60, height: 60))
        btn2.setImage(UIImage(named: "detail_share_30x30_@2x.png"), forState: .Normal)
        btn2.addTarget(self, action: #selector(btn2Click(_:)), forControlEvents: .TouchUpInside)
        view.addSubview(btn2)
        
        let btnNames=["历史","上传","会员"]
        let btnImage=["ic_my_fav_22x22_@3x.png","ic_my_upload_22x22_@3x.png","ic_my_member_22x22_@3x.png"]
        for i in 0...btnImage.count-1{
            let width=screenWidth/CGFloat(3)
            let btn3=UIButton(frame: CGRect(x: width*CGFloat(i), y: 220, width: screenWidth/3, height: 60))
            btn3.setTitleColor(UIColor.blackColor(), forState: .Normal)
            btn3.setTitle(btnNames[i], forState: .Normal)
            btn3.setImage(UIImage(named: btnImage[i]), forState: .Normal)
            btn3.titleLabel?.textAlignment = .Right
            btn3.tag=100+i
            btn3.addTarget(self, action: #selector(btn3Click(_:)), forControlEvents: .TouchUpInside)
            view.addSubview(btn3)
        }
        
        let btn4=UIButton(frame: CGRect(x:0, y: 280, width: screenWidth-100, height: 40))
        btn4.addTarget(self, action: #selector(btn4Click(_:)), forControlEvents: .TouchUpInside)
        btn4.setTitle("搜索附近的影片", forState: .Normal)
        btn4.setTitleColor(UIColor.blackColor(), forState: .Normal)
        btn4.setBackgroundImage(UIImage(named: "sayhi54_156x26_@2x.png"), forState: .Normal)
        btn4.titleLabel?.textAlignment = .Right
        view.addSubview(btn4)
        
        
        let scrollView=UIScrollView(frame: CGRect(x: 0, y: 320, width: screenWidth, height: 400))
        scrollView.contentSize=CGSize(width: screenWidth, height: 650)
        scrollView.pagingEnabled=true
        let image=UIImageView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 500))
        image.image=UIImage(named: "witch_206x250_@2x.png")
        view.addSubview(scrollView)
        scrollView.addSubview(image)
    }
    
    func btnClick(btn:UIButton){
        let view1=EnterViewController()
        view1.hidesBottomBarWhenPushed=true
        let alter=UIAlertController(title: "已经登录了", message: "是否退出", preferredStyle: .ActionSheet)
        let action1=UIAlertAction(title: "退出", style: .Default, handler: {(a) in
        })
        alter.addAction(UIAlertAction(title: "🙄", style: .Default, handler: { (a) in
        }))
        //添加操作（即按钮）
        alter.addAction(action1)
        // 用模态化呈现UIAlertController
        self.presentViewController(alter, animated: true, completion: nil)
    }
    
    
    func btn1Click(btn1:UIButton){
        let view1=EnshrineViewController()
        view1.hidesBottomBarWhenPushed=true
        navigationController?.pushViewController(view1, animated: true)
        
    }
    
    func btn2Click(btn2:UIButton){
        let view1=ShareViewController()
        view1.hidesBottomBarWhenPushed=true
        navigationController?.pushViewController(view1, animated: true)
        
    }
    func btn3Click(btn3:UIButton){
        if btn3.tag == 100{
            let view1=HistoryViewController()
            view1.hidesBottomBarWhenPushed=true
            navigationController?.pushViewController(view1, animated: true)
        }else if btn3.tag==101{
            let view1=EnshrineViewController()
            view1.hidesBottomBarWhenPushed=true
            navigationController?.pushViewController(view1, animated: true)
        }else if btn3.tag==102{
            let view1=EnshrineViewController()
            view1.hidesBottomBarWhenPushed=true
            navigationController?.pushViewController(view1, animated: true)
        }
    }
    
    func btn4Click(btn4:UIButton){
        let view1=EnshrineViewController()
        view1.hidesBottomBarWhenPushed=true
        navigationController?.pushViewController(view1, animated: true)
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
