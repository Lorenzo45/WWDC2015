//
//  WorkView.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-25.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

class WorkView: ContentView {
    
    override func layoutPage(width: CGFloat) {
        
        self.addSubviewToBottom(ContentImageView(width: width, imageName: "VancouverPic", cropAsCircle: false))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "I've been offered and accepted an internship in Vancouver this summer as an iOS engineer at Axiom Zen."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "Axiom Zen is a software startup that is always working with the latest technologies and is very involved in the iOS ecosystem."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentImageView(width: width, imageName: "AZLogo"))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "They recently released a news app called Timeline that was featured in the App Store, and was written entirely in Swift."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "In the interview process, I was told that I will be working with the latest iOS SDK's including WatchKit, and will be encouraged to develop in Swift."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "This will be my first experience working on large-scale projects with others in an office environment, but I wouldn't have gotten here if it weren't for the apps I developed on my own."))
    
    }
   
}
