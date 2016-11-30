//
//  HomePageViewController.swift
//  WangyuxiangLivevideo
//
//  Created by wyx on 16/10/24.
//  Copyright © 2016年 . All rights reserved.
//,navigationprotocol,RefreshProtocol

import UIKit
import Foundation
import Alamofire
import MJRefresh

var currentUrl :String = movieUrl
//let textFiled=UITextField()
class HomePageViewController: BaseViewController{
    var dataArray:[AnyObject]=[]
    var currentPage=1
    var currentIndex = 0
    var currentVC:UIViewController?//记录当前视图控制器
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor.whiteColor()
        //滚动视图或者其子视图放在导航下面，会自动加一个上面的间距,我们要取消这个间距
        automaticallyAdjustsScrollViewInsets = false
        configUI()
        self.homeView!.loadData(currentUrl)
//        let tapGestureRecongnizer=UITapGestureRecognizer.init(target: self, action: #selector(click(_:)))
//        tapGestureRecongnizer.cancelsTouchesInView=false
//        self.view.addGestureRecognizer(tapGestureRecongnizer)
        view.endEditing(true)
    }
    
    func click(tap:UITapGestureRecognizer){
//    textFiled.resignFirstResponder()
       
    }
    
    func configUI(){
        let segmentedControl=UISegmentedControl(frame: CGRect(x: 0, y: 0, width: screenWidth-30, height: 40))
        segmentedControl.insertSegmentWithTitle("电影", atIndex: 0, animated: true)
        segmentedControl.insertSegmentWithTitle("原创", atIndex: 1, animated: true)
        segmentedControl.insertSegmentWithTitle("游戏", atIndex: 2, animated: true)
        segmentedControl.insertSegmentWithTitle("时尚", atIndex: 3, animated: true)
        segmentedControl.insertSegmentWithTitle("汽车", atIndex: 4, animated: true)
        segmentedControl.insertSegmentWithTitle("搞笑", atIndex: 5, animated: true)
        segmentedControl.insertSegmentWithTitle("乐活", atIndex: 6, animated: true)
        segmentedControl.insertSegmentWithTitle("综艺", atIndex: 7, animated: true)
        segmentedControl.momentary=true
        segmentedControl.tintColor = UIColor.brownColor()
        segmentedControl.backgroundColor = UIColor.whiteColor()
        segmentedControl.multipleTouchEnabled=false
        segmentedControl.addTarget(self, action: #selector(segmentedClick(_:)), forControlEvents: .ValueChanged)
        let titleView:UIView = UIView.init(frame: CGRect(x: 0, y: 42, width: screenWidth-30, height: 40))
        titleView.addSubview(segmentedControl)
        self.navigationItem.titleView = titleView
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.tintColor=UIColor.orangeColor()
        segmentedControl.momentary=false
    }
    
    lazy var homeView:HomePageView? = {
        let homeView=HomePageView(frame: CGRect(x: 0, y: 64, width: screenWidth, height: screenHeight-64))
        self.view.addSubview(homeView)
        homeView.jumpClosure={
            [weak self] jumUrl in
            let web=DetailViewController()
            urlstring=jumUrl
            web.hidesBottomBarWhenPushed=true
            self!.navigationController?.pushViewController(web, animated: true)
        }
        return homeView
    }()
    
    func segmentedClick(segControl:UISegmentedControl){
        let index=Int(segControl.selectedSegmentIndex)
        switch index {
        case 0:
            currentUrl = movieUrl
            self.homeView!.loadData(movieUrl)
            break
        case 1:
            currentUrl = OriginalUrl
            self.homeView!.loadData(OriginalUrl)
            break;
        case 2:
            currentUrl = gameUrl
            self.homeView!.loadData(gameUrl)
            break
        case 3:
            currentUrl = fashionUrl
            self.homeView!.loadData(fashionUrl)
            break
        case 4:
            currentUrl = carUrl
            self.homeView!.loadData(carUrl)
            break
        case 5:
            currentUrl = cryUrl
            self.homeView!.loadData(cryUrl)
            break
        case 6:
            currentUrl = happyLifeUrl
            self.homeView!.loadData(happyLifeUrl)
            break
        case 7:
            currentUrl = VarietyUrl
            self.homeView!.loadData(VarietyUrl)
            break
        default:
            currentUrl = movieUrl
            break
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}





