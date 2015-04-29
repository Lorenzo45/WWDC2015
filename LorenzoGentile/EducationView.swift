//
//  EducationView.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-21.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

class EducationView: ContentView {
    
    override func layoutPage(width: CGFloat) {
        
        self.addSubviewToBottom(ContentImageView(width: width, imageName: "GradPic"))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "I'm a second-year student at the University of Manitoba majoring in computer science."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "I've managed to maintain a GPA of 4.2 out of 4.5 and made the Dean's Honor Roll in my first year."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentImageView(width: width, imageName: "UofMPic"))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "My education so far has covered topics such as general programming practices, data structures, object orientation, memory management, and algorithm analysis."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "I've also gained experience with many programming languages including Java, C, C++, and Ruby."))
        self.addPaddingToBottom()
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentImageView(width: width, imageName: "StanfordCoursePic"))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "Last year, I also took the initiative to complete the online course 'Developing iOS 7 Apps for iPhone and iPad' from Stanford University on iTunesU."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "I watched every lecture and completed all six assignments in my spare time over the course of around six months."))
        self.addPaddingToBottom()
        self.addSubviewToBottom(ContentLabel(width: width, text: "This gave me an amazing jump start into iOS development, covering topics including the MVC architectual pattern, working with UIViews and UITableViews, multithreaded network calls, background fetching, and core data."))
        
    }
   
}
