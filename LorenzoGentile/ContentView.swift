//
//  ContentView.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-20.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

class ContentView: UIView {
    
    let padding = CGFloat(20)
    
    required init(width: CGFloat) {
        
        super.init(frame: CGRectMake(0.0, 0.0, width, 0.0))
        
        self.layoutPage(width)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
    func layoutPage(width: CGFloat) {
        
        self.addSubviewToBottom(ContentLabel(width: width, text: "Default content (should be overridden)"))
        
    }
    
    func addSubviewToBottom(view: UIView) {
        
        view.frame.origin.y = self.bounds.size.height
        view.center.x = self.center.x
        self.frame.size.height += view.bounds.size.height
        self.addSubview(view)
        
    }
    
    func addPaddingToBottom(amount: CGFloat) {
        
        self.frame.size.height += amount
        
    }
    
    func addPaddingToBottom() {
        
        self.frame.size.height += padding
        
    }
    
}
