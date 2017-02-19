//
//  PlayerSearchVC.swift
//  SeahawksPlayerFinder
//
//  Created by Connor Bradley on 17/11/2016.
//  Copyright © 2016 Connor Bradley. All rights reserved.
//

import UIKit

class PlayerSearchVC: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtPosition: UITextField!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    @IBOutlet weak var findPlayer: UIButton!
    @IBAction func btnFindPlayerWIthSender() {
        
        if getPlayer(number: txtNumber.text, name:txtName.text) == false {
            let alert = UIAlertController(title: "Error", message: "No Player Found", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        } else {
            let myVC = storyboard?.instantiateViewController(withIdentifier: "PlayerDetailsVC") as! PlayerDetailsVC
            navigationController?.pushViewController(myVC, animated: true)
        }
    }
    
    
    func getPlayer(number:String?, name:String?) -> Bool {
        //GET to web service to see if player exists in db
        if !(number ?? "").isEmpty {
            return player.getPlayerByNum(Num: 3)
            
        }
        else if !(name ?? "").isEmpty {
            return player.getPlayerByName(Name: name!)
        }
        else {
            return false
        }
    }
}
