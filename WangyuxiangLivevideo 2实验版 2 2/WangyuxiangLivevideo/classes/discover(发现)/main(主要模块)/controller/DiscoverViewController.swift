//
//  DiscoverViewController.swift
//  WangyuxiangLivevideo
//
//  Created by wyx on 16/10/25.
//  Copyright © 2016年 . All rights reserved.
//

import UIKit

class DiscoverViewController: BaseViewController {
    var jumpClosure:IngreJumpClosure?
    override func viewDidLoad() {
        super.viewDidLoad()
        let homeView = CollectView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight-64))
        self.view.addSubview(homeView)
        homeView.jumpClosure = {
            (str) in
            let web=DetailViewController()
            urlstring=str
            web.hidesBottomBarWhenPushed=true
            self.navigationController?.pushViewController(web, animated: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
