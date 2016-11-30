//
//  AppDelegate.swift
//  WangyuxiangLivevideo
//
//  Created by qianfeng on 16/10/21.
//  Copyright © 2016年 zhb. All rights reserved.
//1100161128178697#withepotato
//
import UIKit
import Kingfisher
import Alamofire
import MJRefresh
import SnapKit




@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate,EMClientDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        //1,设置引导页
        //let ud = NSUserDefaults.standardUserDefaults()
        window?.rootViewController=GuideViewController()
        
        //2,高德地图配置密钥
        AMapServices.sharedServices().apiKey = "6dbef578cdda73295a97f7bee486a9d5"
        
        
        //3,登录功能的实现
        //注册Appkey
        let options=EMOptions.init(appkey: "1140161128115425#1607chat")
        EMClient.sharedClient().initializeSDKWithOptions(options)
        //设置代理
        //delegateQueue:nil表示在主队列执行
        EMClient.sharedClient().addDelegate(self, delegateQueue: nil)
        
       // 4,分享功能的实现
        
        return true
    }
    
    
    
    
    
    
    // APP进入后台
    func applicationDidEnterBackground(application: UIApplication) {
        EMClient.sharedClient().applicationDidEnterBackground(application)
    }
    
    // APP将要从后台返回
    func applicationWillEnterForeground(application: UIApplication) {
        EMClient.sharedClient().applicationDidEnterBackground(application)
    }
    
    
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    
    
    
    
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

