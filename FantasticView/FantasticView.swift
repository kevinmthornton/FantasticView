//
//  FantasticView.swift
//  FantasticView
//
//  Created by Thornton, Kevin (ETW - FLEX Resource) on 3/3/17.
//  Copyright © 2017 kevin. All rights reserved.
//

import UIKit

class FantasticView: UIView {
    //
    let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var colorCounter = 0
    
    // called when a frame is passed to the constructor of FantasticView
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // create a Timer object; schedule a timer with an interval and tell it to repeat the actions
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in
            UIView.animate(withDuration: 2.0) {
                // set the UIView.layer.backgroundColor; don't animate the UIView.backgroundColor because the layer property is animatable, not the UIView property
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
                // add 1 to our counter
                self.colorCounter+=1
            }
        }
        // start it
        scheduledColorChanged.fire()  
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // You don't need to implement this
    }
}
