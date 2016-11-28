//
//  RefreshProtocol.swift
//  WangyuxiangLivevideo
//
//  Created by wyx on 16/10/24.
//  Copyright © 2016年 . All rights reserved.
//



import Foundation
import UIKit
import MJRefresh

protocol RefreshProtocol:NSObjectProtocol {
    func addRefresh(header:(()->())?,footer:(()->())?)
}

extension RefreshProtocol where Self: UITableViewController{
    func addRefresh(header:(()->())?=nil,footer:(()->())?=nil){
        if header != nil {
            tableView.mj_header=MJRefreshNormalHeader(refreshingBlock: header)
        }
        if footer != nil {
            tableView.mj_footer=MJRefreshAutoNormalFooter(refreshingBlock: footer)
        }
    }
}
