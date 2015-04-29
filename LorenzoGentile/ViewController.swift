//
//  ViewController.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-18.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    private var cardSV = CardScrollView()
    private var BGSV = UIScrollView()
    private var bgImage = BackgroundImageView()
    private var contentArray = Array<(contentTitle: String, contentView: ContentView)>()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.initializeContentArray()
        
        self.BGSV.frame = self.view.frame
        self.BGSV.contentSize = CGSizeMake(self.view.frame.height * 2, self.view.frame.height)
        self.view.addSubview(self.BGSV)
        
        self.bgImage = BackgroundImageView(frame: CGRectMake(0.0, 0.0, self.BGSV.contentSize.width, self.BGSV.contentSize.height))
        self.BGSV.addSubview(self.bgImage)
        
        self.cardSV.frame = self.view.frame
        self.cardSV.backgroundColor = UIColor.clearColor()
        self.cardSV.pagingEnabled = true
        self.cardSV.delegate = self
        
        var cardWidth = self.view.frame.size.width
        var cardHeight = self.view.frame.size.height
        var startingY = CGFloat(0)
        var startingX = CGFloat(0)
        
        for (contentTitle: String, contentView: ContentView) in contentArray {
            
            var card = CardView(frame: CGRectMake(startingX, startingY, cardWidth, cardHeight), title: contentTitle, content: contentView)
            self.cardSV.cards.append(card)
            self.cardSV.addSubview(card)
            
            startingX += cardWidth
            
        }
        
        self.cardSV.contentSize = CGSizeMake(cardWidth * CGFloat(contentArray.count), self.view.frame.size.height)
        self.view.addSubview(self.cardSV)
        self.updateScrollEffects(self.cardSV)
        self.startupAnimation()
        
    }

    func initializeContentArray() {
        
        contentArray.append(contentTitle: "Hi, I'm Lorenzo", contentView: IntroView(width: self.view.bounds.size.width) as ContentView)
        contentArray.append(contentTitle: "Education", contentView: EducationView(width: self.view.bounds.size.width) as ContentView)
        contentArray.append(contentTitle: "Work Experience", contentView: WorkView(width: self.view.bounds.size.width) as ContentView)
        contentArray.append(contentTitle: "Shopping Prank", contentView: ShoppingPrankView(width: self.view.bounds.size.width) as ContentView)
        contentArray.append(contentTitle: "Dementia Caregiver Solutions", contentView: DCSView(width: self.view.bounds.size.width) as ContentView)
        contentArray.append(contentTitle: "Get the Yellow Dot!", contentView: GTYDView(width: self.view.bounds.size.width) as ContentView)
        contentArray.append(contentTitle: "Battlecode", contentView: BattlecodeView(width: self.view.bounds.size.width) as ContentView)
        contentArray.append(contentTitle: "Why WWDC?", contentView: WhyWWDCView(width: self.view.bounds.size.width) as ContentView)
        contentArray.append(contentTitle: "Thanks!", contentView: ThanksView(width: self.view.bounds.size.width) as ContentView)
        
    }
    
    func startupAnimation() {
        
        self.cardSV.alpha = 0.0
        var rect = self.cardSV.bounds
        rect.origin.x += self.cardSV.bounds.width
        
        UIView.animateWithDuration(0.1, animations: { () -> Void in
            
            self.cardSV.scrollRectToVisible(rect, animated: false)
            
        })
        
        UIView.animateWithDuration(1.5, delay: 0.1, options: .CurveEaseInOut, animations: { () -> Void in
            
            self.cardSV.scrollRectToVisible(CGRectMake(0.0, 0.0, self.cardSV.bounds.width, self.cardSV.bounds.height), animated: false)
            self.cardSV.alpha = 1.0
            
        }, completion: nil)
        
    }
    
    // MARK: UIScrollViewDelegate
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        self.updateScrollEffects(scrollView)
        
    }
    
    private func updateScrollEffects(scrollView: UIScrollView) {
        
        if scrollView == self.cardSV {
            
            var horizontalOffset = self.cardSV.contentOffset.x
            var viewWidth = self.view.bounds.width
            
            // update page transforms
            for card in self.cardSV.cards {
                
                var scrollViewCenter = horizontalOffset + self.cardSV.bounds.size.width / 2
                var cardRatio = (card.center.x - scrollViewCenter) / ((self.cardSV.bounds.size.width + card.bounds.size.width) / 2)
                
                if cardRatio >= -1 && cardRatio <= 1 {
                    
                    card.rotateFor(cardRatio)
                    
                }
                
            }
            
            // update background offset and image
            var edgeBuffer = self.view.frame.size.width / 2
            var cardCountRatio = (CGFloat(self.contentArray.count)-1.0) / CGFloat(self.contentArray.count)
            var BGOffset = edgeBuffer + (self.BGSV.contentSize.width - edgeBuffer * 2) * cardCountRatio * (horizontalOffset / (self.cardSV.contentSize.width + edgeBuffer * 2))
            self.BGSV.contentOffset.x = BGOffset
            
            
            if (horizontalOffset > 2 * viewWidth) {
                
                self.bgImage.updateImage2(min(1.0, (horizontalOffset - 2 * viewWidth) / viewWidth))
                
            }
            
            if (horizontalOffset > 5 * viewWidth) {
                
                self.bgImage.updateImage3(min(1.0, (horizontalOffset - 5 * viewWidth) / viewWidth))
                
            }
            
        }
        
    }

}
