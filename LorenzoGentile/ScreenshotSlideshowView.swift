//
//  ScreenshotSlideshowView.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-21.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

class ScreenshotSlideshowView: UIImageView {
    
    var imageIndex = 0
    var images = Array<UIImage>()
    var currTimer = NSTimer()
    
    required init(width: CGFloat, screenshotTitle: String, screenshotCount: Int) {
        
        for var i = 0; i < screenshotCount; i++ {
            
            images.append(UIImage(named: screenshotTitle + String(i))!)
            
        }
        
        var initialImage = images[0]
        var imageAspectRatio = initialImage.size.width / initialImage.size.height
        var newWidth = width * 0.7
        var newHeight = newWidth / imageAspectRatio
        
        super.init(frame: CGRectMake(0.0, 0.0, newWidth, newHeight))
        
        self.image = initialImage
        
        currTimer = NSTimer(timeInterval: 3.0, target: self, selector: Selector("fadeToNextImage"), userInfo: nil, repeats: true)
        NSRunLoop.currentRunLoop().addTimer(currTimer, forMode: NSRunLoopCommonModes)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
    func fadeToNextImage() {
        
        self.imageIndex = (imageIndex + 1) % images.count
        let toImage = images[self.imageIndex]
        
        UIView.transitionWithView(self,
            duration:0.5,
            options: UIViewAnimationOptions.TransitionCrossDissolve,
            animations: { self.image = toImage },
            completion: nil)
        
    }

}
