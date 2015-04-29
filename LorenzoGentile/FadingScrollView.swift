//
//  FadingScrollView.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-19.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

class FadingScrollView: UIScrollView {
    
    let fadePercentage = CGFloat(0.1)
    
    class func yExtension() -> CGFloat {
        
        return CGFloat(200)
        
    }
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        var yInset = self.bounds.size.height * fadePercentage;
        self.contentInset = UIEdgeInsetsMake(yInset, 0.0, yInset, 0.0)
        
        // make the content render outside the frame for the page transitions
        self.contentInset.bottom += FadingScrollView.yExtension()
        self.scrollIndicatorInsets.bottom += FadingScrollView.yExtension()
        self.frame.size.height += FadingScrollView.yExtension()
        
    }

    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        var transparent = UIColor.clearColor().CGColor
        var opaque = UIColor.whiteColor().CGColor
        
        var maskLayer = CALayer()
        maskLayer.frame = self.bounds
        
        var gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRectMake(self.bounds.origin.x, 0, self.bounds.size.width, self.bounds.size.height)
        gradientLayer.colors = [transparent, opaque]
        gradientLayer.locations = [0, fadePercentage * (self.bounds.size.height - FadingScrollView.yExtension()) / self.bounds.size.height]
        
        maskLayer.addSublayer(gradientLayer)
        self.layer.mask = maskLayer
        
    }
    
}
