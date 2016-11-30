//
//  LoginViewController.swift
//  WangyuxiangLivevideo
//
//  Created by qianfeng on 16/11/28.
//  Copyright © 2016年 wyx. All rights reserved.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    let passwordField=UITextField()
    let nameField=UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor=UIColor.whiteColor()
        
        
        configUI()
    }
    
    func  configUI(){
        let nameLabel=UILabel()
        view.addSubview(nameLabel)
        nameLabel.snp_makeConstraints { (make) in
            make.top.left.equalTo(view).offset(100)
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
        nameLabel.text="用户名"
        
        view.addSubview(nameField)
        nameField.snp_makeConstraints { (make) in
            make.left.equalTo(nameLabel.snp_right).offset(20)
            make.right.top.equalTo(view).offset(100)
            make.height.equalTo(nameLabel)
        }
        nameField.placeholder="请输入用户名"
        
        let passwordLabel=UILabel()
        view.addSubview(passwordLabel)
        passwordLabel.text="密码"
        passwordLabel.snp_makeConstraints { (make) in
            make.left.equalTo(view).offset(100)
            make.width.equalTo(100)
            make.top.equalTo(nameLabel.snp_bottom).offset(20)
            make.height.equalTo(40)
        }
        
        view.addSubview(passwordField)
        passwordField.snp_makeConstraints { (make) in
            make.left.equalTo(passwordLabel.snp_right).offset(20)
            make.top.equalTo(nameField.snp_bottom).offset(20)
            make.height.equalTo(40)
        }
        passwordField.placeholder="请输入密码"
        
        let registerBtn=UIButton()
        view.addSubview(registerBtn)
        registerBtn.setTitle("注册", forState: .Normal)
        registerBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        registerBtn.setTitleColor(UIColor.grayColor(), forState: .Highlighted)
        registerBtn.addTarget(self, action: #selector(clickBtn1), forControlEvents: .TouchUpInside)
        registerBtn.snp_makeConstraints { (make) in
            make.left.equalTo(view).offset(100)
            make.width.equalTo(50)
            make.top.equalTo(passwordLabel.snp_bottom).offset(20)
            make.height.equalTo(40)
        }
        
        let enterBtn=UIButton()
        view.addSubview(enterBtn)
        enterBtn.setTitle("登录", forState: .Normal)
        enterBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        enterBtn.setTitleColor(UIColor.grayColor(), forState: .Highlighted)
        enterBtn.addTarget(self, action: #selector(clickBtn2), forControlEvents: .TouchUpInside)
        enterBtn.snp_makeConstraints { (make) in
            make.left.equalTo(passwordField)
            make.width.equalTo(100)
            make.top.equalTo(passwordField.snp_bottom).offset(20)
            make.height.equalTo(40)
        }
    }
    
    func clickBtn1(){
        //1.判断是否为空
        if self.nameField.text == "" ||  passwordField.text == "" {
            self.showAlert("用户名或密码为空")
            return
        }
        
        //2.注册
        let error=EMClient.sharedClient().registerWithUsername(nameField.text, password:passwordField.text)
        if (error == nil) {
            //失败
            self.showAlert(error.errorDescription)
            
        }else{
            self.showAlert("注册成功")
        }
    }
    
    func clickBtn2(){
        //1.判断是否为空
        if self.nameField.text == "" ||  passwordField.text == "" {
            self.showAlert("用户名或密码为空")
            return
        }
        
        // 2.0 判断是否自动登陆
        let flag=EMClient.sharedClient().options.isAutoLogin
        print(flag)
        if (flag){
            return
        }
        
        //2.1 登陆
        let error=EMClient.sharedClient().loginWithUsername(self.nameField.text, password: self.passwordField.text)
        if (error == nil){
            self.showAlert(error.errorDescription)
        }else{
            //自动登陆默认是关闭的
            //设置自动登陆
            EMClient.sharedClient().options.isAutoLogin=true
            self.showAlert("登陆成功")
            self.view.window?.rootViewController=MainTabBarViewController()
        }
    }
    
    func showAlert(msg:String){
        let ctrl=UIAlertController.init(title: "温馨提示", message: msg, preferredStyle: .Alert)
        //按钮
        let action=UIAlertAction.init(title: "确定" , style: .Default, handler: nil)
        ctrl.addAction(action)
        self.presentViewController(ctrl, animated: true, completion: nil)
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
