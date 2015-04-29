//
//  ShoppingPrankView.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-21.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

class ShoppingPrankView: ContentView {
    
    override func layoutPage(width: CGFloat) {
        
        self.addSubviewToBottom(ContentImageView(width: width, imageName: "ShoppingPrankLogo", cropAsCircle: false))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "Shopping Prank was the first app I conceived, designed, and created entirely on my own after compelting of the Stanford iOS course."))
        self.addPaddingToBottom()
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentImageView(width: width, imageName: "SPVideoPic", cropAsCircle: false))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "I approached the YouTuber MediocreFilms with my idea to create a companion app for one of his pranks. He liked the idea and agreed to partner with me to promote the app."))
        self.addPaddingToBottom()
        self.addPaddingToBottom()
        self.addSubviewToBottom(ScreenshotSlideshowView(width: width, screenshotTitle: "SPScreen", screenshotCount: 5))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "The app involves making shopping lists in an editable table view which can then be displayed one by one in a page view."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "It generates revenue through ads and in-app purchases, and has maintained a five-star rating on the App Store."))
        
    }
   
}
