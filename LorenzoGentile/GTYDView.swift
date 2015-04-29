//
//  GTYDView.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-22.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

class GTYDView: ContentView {
    
    override func layoutPage(width: CGFloat) {
        
        self.addSubviewToBottom(ContentImageView(width: width, imageName: "GTYDLogo", cropAsCircle: false))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "This app was the result of a personal challenge I set for myself to create a game from scratch in one weekend."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "This was also an experiment to see if I could recreate the addictiveness of apps such as Flappy Bird that have a simple concept but are hard to master."))
        self.addPaddingToBottom()
        self.addPaddingToBottom()
        self.addSubviewToBottom(ScreenshotSlideshowView(width: width, screenshotTitle: "GTYDScreen", screenshotCount: 2))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "My main goal for this app was to make a game that was simple and fun, and so far has been a hit with many of my friends and family."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "This app was also my first attempt at making a game using SpriteKit, and utilized features such as particle effects, mask nodes, and collision masks."))
        
    }
   
}
