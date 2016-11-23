//
//  DetailViewController.swift
//  WangyuxiangLivevideo
//
//  Created by qianfeng on 16/11/2.
//  Copyright © 2016年 zhb. All rights reserved.
//

import UIKit
import SnapKit

class DetailViewController: UIViewController,UIWebViewDelegate {
    var webView:UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets=false
        webView=UIWebView()
        view.addSubview(webView)
        webView?.snp_makeConstraints(closure: {
            (make) in
            make.edges.equalTo(self.view).inset(UIEdgeInsetsMake(64, 0, 0, 0))
        })
        
        //创建一个url（网址）
        let url=NSURL(string:urlstring!)
        //创建一个请求
        let request=NSURLRequest(URL: url!)
        //加载请求
        webView.loadRequest(request)
        webView.delegate=self
        //self.hidesBottomBarWhenPushed=false
        
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
