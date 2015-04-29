//
//  ContentLabel.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-20.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

class ContentLabel: UILabel{
    
    class func padding() -> CGFloat {
        
        return CGFloat(15)
        
    }
    
    required init(width: CGFloat, textAlignment: NSTextAlignment, fontName: String, textSize: CGFloat, text: String) {
        
        super.init(frame: CGRectMake(ContentLabel.padding(), 0.0, width - ContentLabel.padding() * 2, 0.0))
        self.numberOfLines = 0
        self.font = UIFont(name: fontName, size: textSize)
        self.textAlignment = textAlignment
        self.text = text
        self.sizeToFit()
        self.center.x = width/2
        
    }
    
    convenience init(width: CGFloat, text: String) {
        
        self.init(width: width, textAlignment: .Center, fontName: "HelveticaNeue-UltraLight", textSize: CGFloat(25), text: text)
        
    }
    
    convenience init(width: CGFloat, textSize: CGFloat, text: String) {
        
        self.init(width: width, textAlignment: .Center, fontName: "HelveticaNeue-UltraLight", textSize: textSize, text: text)
        
    }

    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
   
}
