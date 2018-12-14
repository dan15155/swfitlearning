//
//  UIBarButtonItem-Extension.swift
//  doYu
//
//  Created by henry on 2018/12/14.
//  Copyright © 2018 henry. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    
    /*
     //类方法
    class  func  createItem(imageName: String,highImggeName:NSString,size:CGSize,point:CGPoint)->UIBarButtonItem
    {
        let btn = UIButton()
        btn.setImage(UIImage(named:imageName), for: .normal)
        btn.setImage(UIImage(named:imageName), for: .normal)
        btn.frame=CGRect(origin: point, size: size)
        return  UIBarButtonItem(customView: btn)
    }
    */
    
     //构造函数->便利构造函数  1 convenience 开头   2 在构造函数中必须明确调用一个设计的构造函数（self）
    convenience init(imageName: String,highImggeName:NSString,size:CGSize ,point:CGPoint) {
        
        let btn = UIButton()
        btn.setImage(UIImage(named:imageName), for: .normal)
        btn.setImage(UIImage(named:imageName), for: .normal)
        btn.frame=CGRect(origin: point, size: size)
        
        self.init(customView : btn)
    }
}
