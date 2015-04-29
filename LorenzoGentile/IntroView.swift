//
//  IntroView.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-20.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

class IntroView: ContentView {
    
    override func layoutPage(width: CGFloat) {
        
        self.addSubviewToBottom(ContentImageView(width: width, imageName: "IntroPic"))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "I am a 19-year-old student and iOS developer from Winnipeg, Canada."))
        self.addPaddingToBottom()
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentImageView(width: width, imageName: "NYPic", cropAsCircle: false))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "I love travelling and spending time with my family."))
        self.addPaddingToBottom()
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentImageView(width: width, imageName: "FishingPic", cropAsCircle: false))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "I'm always staying active and love spending time outdoors."))
        self.addPaddingToBottom()
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentImageView(width: width, imageName: "PianoPic", cropAsCircle: false))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "I'm also very passionate about music and have been playing piano since I was 10 years old."))
        
    }

}
