//
//  CardView.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-18.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

class CardView: UIView, UIScrollViewDelegate {
    
    private let maxAngle = CGFloat(30)
    private var titleLabel = UILabel()
    private var titleHeight = CGFloat(0)
    private var fadingScrollView = UIScrollView()
    private var contentView = ContentView(width: 0.0)
    private var shouldAnimate = true

    init(frame: CGRect, title: String, content: ContentView) {
        
        super.init(frame: frame)
        self.contentView = content
        
        titleHeight = self.bounds.size.height * 0.15
        let scrollViewHeight = self.bounds.size.height - titleHeight
        
        titleLabel = ContentLabel(width: self.bounds.size.width, textSize: 40.0, text: title)
        if titleLabel.frame.size.height > titleHeight {
            
            titleLabel.adjustsFontSizeToFitWidth = true
            titleLabel.frame.size.height = titleHeight
            titleLabel.frame.size.width = self.bounds.size.width - 3 * ContentLabel.padding()
            
        }
        self.addSubview(titleLabel)
        
        var scrollView = FadingScrollView(frame: CGRectMake(0.0, titleHeight, self.bounds.size.width, scrollViewHeight))
        scrollView.contentSize = CGSizeMake(self.bounds.size.width, content.bounds.size.height)
        scrollView.backgroundColor = UIColor.clearColor()
        scrollView.delegate = self
        scrollView.addSubview(content)
        self.addSubview(scrollView)
        self.fadingScrollView = scrollView
        self.updateTitleSizeForScrollView(self.fadingScrollView)
        
    }

    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
    func startupAnimation() {
        
        if self.contentView.isKindOfClass(IntroView) && shouldAnimate {
            
            self.fadingScrollView.contentOffset = CGPointMake(0.0, 200.0)
            
            UIView.animateWithDuration(2.0, delay: 0.0, options: .CurveEaseInOut, animations: { () -> Void in
                
                self.fadingScrollView.setContentOffset(CGPointMake(0.0, -self.fadingScrollView.contentInset.top), animated: true)
                
            }, completion:{(Bool) in
                    
                self.shouldAnimate = false
                
            })
            
        }
        
    }
    
    func rotateFor(ratio: CGFloat) { // ratio is between -1 and 1
        
        if ratio >= -1 && ratio <= 1 {
            
            var trans3D = CATransform3DIdentity
            trans3D.m34 = -1.0/300.0
            trans3D = CATransform3DRotate(trans3D, ratio * -maxAngle * CGFloat(M_PI / 180.0), CGFloat(0), CGFloat(1), CGFloat(0))
            self.layer.transform = trans3D
            
            self.alpha = 1 - ratio * ratio;
            
        }
        
        if ratio == 0 { // for some reason the animation works best when called here
            
            self.startupAnimation()
            
        }
        
    }
    
    // MARK: UIScrollViewDelegate
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        self.updateTitleSizeForScrollView(scrollView)
        
    }
    
    func updateTitleSizeForScrollView(scrollView: UIScrollView) {
        
        if scrollView == self.fadingScrollView {
            
            if scrollView.contentOffset.y <= 0 || (scrollView.contentOffset.y > 0 && titleLabel.center.y > titleHeight / 2) {
                
                let topSpace = max(titleHeight, titleHeight - scrollView.contentOffset.y) // never let the perceived top space be less than the title height
                
                titleLabel.center = CGPointMake(CGRectGetMidX(self.bounds), topSpace / 2)
                
                let scaleRatio = 1.0 + (topSpace - titleHeight) / titleHeight * 0.2
                
                var trans3D = CATransform3DIdentity
                trans3D.m34 = -1.0/300.0
                trans3D = CATransform3DScale(trans3D, scaleRatio, scaleRatio, 0.0)
                titleLabel.layer.transform = trans3D
                
            }
            
            for viewObj: AnyObject in self.contentView.subviews {
                
                if viewObj.isKindOfClass(UIView) {
                    
                    var view = viewObj as! UIView
                    var parallaxStart = view.frame.origin.y - (self.fadingScrollView.frame.size.height - FadingScrollView.yExtension())
                    var parallaxEnd = view.frame.origin.y + view.frame.size.height
                    var parallaxOffset = scrollView.contentOffset.y - parallaxStart
                    var ratio = parallaxOffset / (parallaxEnd  - parallaxStart)
                    
                    if ratio >= 0 && ratio <= 1 {
                        
                        view.updateEffectsForRatio(ratio)
                        
                    }
                    
                }
                
            }
            
        }
        
    }

}
