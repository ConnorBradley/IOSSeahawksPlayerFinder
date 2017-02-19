		//
//  Downvote.swift
//  SeahawksPlayerFinder
//
//  Created by Connor Bradley on 01/12/2016.
//  Copyright © 2016 Connor Bradley. All rights reserved.
//

import UIKit

class Downvote: UIView, Vote {

    var isUpvote = false
    var ratingButtons = [UIButton]()
    let ThumbsDownImage = UIImage(named: "Downvote")
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.setImage(ThumbsDownImage, for: .normal)
        button.addTarget(self, action: #selector(ratingButtonTapped), for: .touchDown)
        ratingButtons += [button]
        addSubview(button)
    }
   
    
    func ratingButtonTapped(button: UIButton) {
        player.votes = player.votes + 1
        //http post to /VotePlayer with the new score
        //refresh rating
        print("Button pressed 👍")
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
