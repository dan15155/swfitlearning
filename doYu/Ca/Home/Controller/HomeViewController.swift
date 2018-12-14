//
//  HomeViewController.swift
//  doYu
//
//  Created by henry on 2018/12/14.
//  Copyright © 2018 henry. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

          setupUI()
        // Do any additional setup after loading the view.
    }
    

}

//设置ui界面
extension HomeViewController{
    
    private func setupUI(){
    
        setupNavigationBar()
    }
    
    private func setupNavigationBar()
    {
        //设置左侧Item
        let btn=UIButton()
        btn.setImage(UIImage(named: "mo.png"), for: .normal)
        btn.sizeToFit()
        navigationItem.leftBarButtonItem =  UIBarButtonItem(customView:btn)
    
        //设置右侧Item
       let size=CGSize(width: 30, height: 30)
       let p = CGPoint(x: 10, y: 10)
        
       //类方法
         //let historyItem = UIBarButtonItem.createItem(imageName: "mo.png", highImggeName: "mo.png", size: size, point: p)
         //let searchItem = UIBarButtonItem.createItem(imageName: "mo.png", highImggeName: "mo.png", size: size, point: p)
         //let qrcodeItem = UIBarButtonItem.createItem(imageName: "mo.png", highImggeName: "mo.png", size: size, point: p)
     //构造函数
        let historyItem = UIBarButtonItem(imageName: "mo.png", highImggeName: "mo.png", size: size, point: p)
        let searchItem = UIBarButtonItem(imageName: "mo.png", highImggeName: "mo.png", size: size, point: p)
        let qrcodeItem = UIBarButtonItem(imageName: "mo.png", highImggeName: "mo.png", size: size, point: p)
        
        navigationItem.rightBarButtonItems=[historyItem,searchItem,qrcodeItem]
    }
}
