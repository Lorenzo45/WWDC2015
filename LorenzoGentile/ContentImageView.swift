//
//  ContentImageView.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-21.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

class ContentImageView: UIImageView {
    
    required init(width: CGFloat, imageName: String, cropAsCircle: Bool) {
        
        var newWidth = width * 0.8
        
        super.init(image: UIImage(named: imageName))
        
        self.frame = CGRectMake(0.0, 0.0, newWidth, newWidth)
        self.contentMode = .ScaleAspectFill
        
        if cropAsCircle {
            
            self.layer.cornerRadius = newWidth * CGFloat(0.5)
            
        } else {
            
            self.layer.cornerRadius = newWidth * CGFloat(0.25)
            
        }
        
        self.layer.masksToBounds = true
        
    }
    
    convenience init(width: CGFloat, imageName: String) {
        
        self.init(width: width, imageName: imageName, cropAsCircle: true)
        
    }

    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
   
}
