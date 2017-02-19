//
//  NextGameViewController.swift
//   SeahawksPlayerFinder
//
//  Created by Connor Bradley on 04/12/2016.
//  Copyright © 2016 Connor Bradley. All rights reserved.
//

import UIKit
import MapKit

class NextGameViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var lblOpponents: UILabel!
    @IBOutlet weak var lblOppWins: UILabel!
    @IBOutlet weak var lblPointsAgainst: UILabel!
    @IBOutlet weak var lblOppPointsFor: UILabel!
    @IBOutlet weak var lblOppLoses: UILabel!
    @IBOutlet weak var lblOppBye: UILabel!
    
    override func viewDidLoad() {
        lblOpponents.text = NextGame.opponent
        lblOppWins.text = String(NextGame.Wins)
        lblOppLoses.text = String(NextGame.Loses)
        lblOppPointsFor.text = String(NextGame.pointsFor)
        lblPointsAgainst.text = String(NextGame.pointsAgainst)
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        centerMapOnLocation(location: NextGame.location)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
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
