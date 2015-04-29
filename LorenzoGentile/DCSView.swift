//
//  DCSView.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-22.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

class DCSView: ContentView {
    
    override func layoutPage(width: CGFloat) {
        
        self.addSubviewToBottom(ContentImageView(width: width, imageName: "DCSLogo", cropAsCircle: false))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "This was the second app I released to the app store, it was created in collaboration with two specialists in aging and dementia, one of them being my mother."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "This app provides professional advice for difficult situations that may arise when caring for someone with dementia and was designed to be very user friendly."))
        self.addPaddingToBottom()
        self.addPaddingToBottom()
        self.addSubviewToBottom(ScreenshotSlideshowView(width: width, screenshotTitle: "DCSScreen", screenshotCount: 5))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "My main focus when designing this app was to make the content as accessible as possible and make the app look great on any device in any orientation."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "To do this, I utilized many of the new features in iOS 7 and 8 including Dynamic Type, self-sizing table view cells, auto layout, and split view controllers that adjust based on the current size class."))
        
    }
   
}
