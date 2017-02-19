//
//  RatingControl.swift
//  SeahawksPlayerFinder
//
//  Created by Connor Bradley on 17/11/2016.
//  Copyright © 2016 Connor Bradley. All rights reserved.
//

import UIKit

class RatingControl: UIView, Vote {
    
    var isUpvote = true
    var ratingButtons = [UIButton]()
    let ThumbsUpImage = UIImage(named: "Upvote")


    required init?(coder aDecoder: NSCoder) {
     super.init(coder: aDecoder)
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
            button.setImage(ThumbsUpImage, for: .normal)
        button.addTarget(self, action: #selector(ratingButtonTapped), for: .touchDown)
            ratingButtons += [button]
            addSubview(button)
    }
    
    
    
    func ratingButtonTapped(button: UIButton) {
        //http post to /VotePlayer with the
        player.votes = player.votes + 1
        print("Button pressed")
    }
    
    override func layoutSubviews() {
        var buttonFrame = CGRect(x: 0, y: 0, width: 44, height: 44)
        
        // Offset each button's origin by the length of the button plus spacing.
        for (index, button) in ratingButtons.enumerated() {
            buttonFrame.origin.x = CGFloat(index * (44 + 5))
            button.frame = buttonFrame
        }
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 240, height: 44)
    }
    
    
}
 
