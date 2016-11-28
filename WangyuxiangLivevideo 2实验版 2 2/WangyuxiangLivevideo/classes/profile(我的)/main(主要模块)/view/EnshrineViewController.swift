//
//  EnshrineViewController.swift
//  WangyuxiangLivevideo
//
//  Created by wyx on 16/11/11.
//  Copyright © 2016年 . All rights reserved.
//

import UIKit

class EnshrineViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor.whiteColor()
        let imagView=UIImageView(frame: CGRect(x: 0, y: 0, width:UIScreen.mainScreen().bounds.size.width, height:UIScreen.mainScreen().bounds.size.height))
        imagView.image=UIImage(named: "cache_233x348_@2x.png")
        view.addSubview(imagView)
        // Do any additional setup after loading the view.
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
