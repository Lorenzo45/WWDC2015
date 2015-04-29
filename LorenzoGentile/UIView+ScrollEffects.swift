//
//  ContentSubview.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-21.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

extension UIView {
    
    func updateEffectsForRatio(ratio: CGFloat) {
        
        if ratio >= 0 && ratio <= 1 {
            
            var newRatio = ratio * 2 - 1 // convert from 0 to 1 -> -1 to 1
            newRatio = newRatio * newRatio * newRatio // make the ratio a exponential function
            
            let angle = CGFloat(20)
            var trans3D = CATransform3DIdentity
            trans3D.m34 = -1.0/300.0
            trans3D = CATransform3DRotate(trans3D, newRatio * angle * CGFloat(M_PI / 180.0), CGFloat(1), CGFloat(0), CGFloat(0))
            
            var scale = CGFloat(1) - fabs(newRatio) * 0.2
            trans3D = CATransform3DScale(trans3D, scale, scale, CGFloat(0))
            
            self.layer.transform = trans3D
            
            self.alpha = 1 - fabs(newRatio);
            
        }
        
    }
    
}
