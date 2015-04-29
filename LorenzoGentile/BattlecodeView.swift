//
//  BattlecodeView.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-22.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

class BattlecodeView: ContentView {
    
    override func layoutPage(width: CGFloat) {
        
        self.addSubviewToBottom(ContentImageView(width: width, imageName: "BCStage", cropAsCircle: false))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "In early 2015 I placed as a finalist in an MIT programming competition in a team with three friends in my faculty."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "After three weeks of programming and qualifying tournaments, we were awarded with a free trip to Boston to attend the final tournament along with some prize money for our performance."))
        self.addPaddingToBottom()
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentImageView(width: width, imageName: "BCGame", cropAsCircle: false))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "The competition involved creating an artificial intelligence program to play a real-time strategy game against artificial intelligence programs created by the other teams."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "Participating in this competition was a fantastic learning experience and exposed me to many new challenges such as managing large amounts of code, working with complex algorithms, working on code as a team using GitHub, and quickly iterating our code based on aggressive deadlines."))
        
    }
   
}
