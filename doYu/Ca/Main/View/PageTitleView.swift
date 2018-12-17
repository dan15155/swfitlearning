//
//  PageTitleView.swift
//  doYu
//
//  Created by henry on 2018/12/14.
//  Copyright © 2018 henry. All rights reserved.
//

import UIKit

private let scrolllineH : CGFloat = 2

class PageTitleView: UIView {

    //懒加载
    lazy var scrollView:UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator=false
        scrollView.scrollsToTop=false
        scrollView.bounces=false
        scrollView.contentInsetAdjustmentBehavior = UIScrollView.ContentInsetAdjustmentBehavior.never
        return scrollView
        }()
    
    lazy var titleLabels:[UILabel] = [UILabel]()
    
    
    lazy var scrollLine:UIView = {
        let scrollLine = UIView()
        scrollLine.backgroundColor = UIColor.orange
        return scrollLine
    }()
    
    
    //自定义构造函数 必须重写required init
    private var titles : [NSString]
     init?(frame: CGRect,titles:[NSString]) {
        
        self.titles = titles
        super.init(frame:frame)
        
        setupUI()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


//设置ui界面
extension PageTitleView{
    
    private func  setupUI(){
        
        //add scrollView
        addSubview(scrollView)
        scrollView.frame = bounds
        
        //add title 对应的Label
        setupTitlelabel()
        
        //设置底线+滑块
        setupBottomLineAndScrollLine()
    
        
    }
    
    private func setupTitlelabel(){
        
        let labelW :CGFloat = frame.width/CGFloat(titles.count)
        let labelH :CGFloat = frame.height - scrolllineH
        let labelY :CGFloat = 0
        
        for(index,title) in titles.enumerated(){
            
            let label = UILabel()
            label.text = title as String
            label.tag =  index
            label.font = UIFont.systemFont(ofSize: 16.0)
            label.textColor = UIColor.black
            label.textAlignment = .center
            
            let labelX :CGFloat = labelW*CGFloat(index)
            label.frame = CGRect(x: labelX, y: labelY, width: labelW, height: labelH)
            scrollView .addSubview(label)
            
            titleLabels.append(label)
            
        }
    }
    
    private func setupBottomLineAndScrollLine()
    {
        //add BottomLine
        let bottomLine = UIView()
        bottomLine.backgroundColor = UIColor.lightGray
        let lineH : CGFloat = 0.5
        bottomLine.frame = CGRect(x: 0, y:frame.height-lineH, width:frame.width, height:lineH)
        addSubview(bottomLine)
        
        //add scrollLine
        scrollView.addSubview(scrollLine)
        
        //Gets the first label
        guard let firstLabel = titleLabels.first else {
            return
        }
        //设置默认选中颜色
        firstLabel.textColor=UIColor.orange
        
        scrollLine.frame = CGRect(x: firstLabel.frame.origin.x, y:frame.height-scrolllineH, width: firstLabel.frame.size.width, height:scrolllineH)
    }
}

