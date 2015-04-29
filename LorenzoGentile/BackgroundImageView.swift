//
//  BackgroundImageView.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-25.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

class BackgroundImageView: UIView {
    
    private var bgImage2 = UIImageView()
    private var bgImage3 = UIImageView()

    required override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        var bgImage = UIImageView(image: UIImage(named: "BlurBG"))
        bgImage.frame = self.frame
        bgImage.contentMode = .ScaleAspectFill
        self.addSubview(bgImage)
        
        self.bgImage2 = UIImageView(image: UIImage(named: "BlurBG2"))
        self.bgImage2.frame = self.frame
        self.bgImage2.contentMode = .ScaleAspectFill
        self.bgImage2.alpha = 0;
        self.addSubview(self.bgImage2)
        
        self.bgImage3 = UIImageView(image: UIImage(named: "BlurBG3"))
        self.bgImage3.frame = self.frame
        self.bgImage3.contentMode = .ScaleAspectFill
        self.bgImage3.alpha = 0;
        self.addSubview(self.bgImage3)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
    func updateImage2(ratio: CGFloat) { // between 0 and 1
        
        self.bgImage2.alpha = ratio;
        
    }
    
    func updateImage3(ratio: CGFloat) { // between 0 and 1
        
        self.bgImage3.alpha = ratio;
        
    }

}
