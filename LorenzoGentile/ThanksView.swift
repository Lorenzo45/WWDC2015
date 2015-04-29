//
//  ThanksView.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-25.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

class ThanksView: ContentView {
    
    override func layoutPage(width: CGFloat) {
        
        self.addSubviewToBottom(ContentImageView(width: width, imageName: "ThanksPic"))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "Thank you very much for your time and for considering me as a WWDC Scholarship recipient, I hope to see you there!"))
        self.addPaddingToBottom()
        
    }
   
}
