	//
//  PlayerDetailsVC.swift
//  SeahawksPlayerFinder
//
//  Created by Connor Bradley on 17/11/2016.
//  Copyright © 2016 Connor Bradley. All rights reserved.
//

import UIKit

class PlayerDetailsVC: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblNumber: UILabel!
    @IBOutlet weak var lblPosition: UILabel!
    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var lblWeight: UILabel!
    @IBOutlet weak var lblCollege: UILabel!
    @IBOutlet weak var lblExperience: UILabel!
    @IBOutlet weak var lblVotes: UILabel!
    
    @IBOutlet weak var btnUpvote: RatingControl!
    @IBOutlet weak var btnDownvote: Downvote!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        lblNumber.text = "Number: " + String(player.number)
        lblName.text = "Name: " + player.name
        lblAge.text = "Age: " + String(player.age)
        lblPosition.text = "Position: " + player.position
        lblHeight.text = "Height: " + player.height
        lblWeight.text = "Weight: " + String(player.weight)
        lblCollege.text = "College: " + player.college
        lblExperience.text = "Experience: " + player.experience
        lblVotes.text = "Votes: " + String(player.votes)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
