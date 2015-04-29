//
//  WhyWWDCView.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-21.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

class WhyWWDCView: ContentView {
    
    override func layoutPage(width: CGFloat) {
        
        self.addSubviewToBottom(ContentImageView(width: width, imageName: "WWDCLogo"))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "Developing iOS applications has been an amazing experience for me so far and I would absolutely love the opportunity to completely envelop myself in the iOS community."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "Even as a new developer last year, I watched many of the WWDC lectures online and imagined what a phenomenal experience it would be to physically be at WWDC; not only for the presentations but also to be surrounded by people who love iOS and people I can learn from."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentImageView(width: width, imageName: "AxiomZenOffice", cropAsCircle: false))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "This year will be particularly valuable for me because of the internship I will be doing this summer. Axiom Zen is the type of company that is always working with the latest SDKs, so I will likely be working with many of the new features announced at WWDC. Having a week to completely indulge in all the new SDKs and features would be phenomenal for the knowledge I'll be able to bring back to the office and apply to projects."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "I've spoken to them about the possibility of going to WWDC and they're fully on board. In fact, they encourage their employees to further their education and are willing to give me financial support for my trip in addition to giving me the time off."))
        
    }
   
}
