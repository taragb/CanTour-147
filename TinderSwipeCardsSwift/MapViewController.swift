//
//  MapViewController.swift
//  TinderSwipeCardsSwift
//
//  Created by Tara Balakrishnan on 11/21/15.
//  Copyright (c) 2015 gcweb. All rights reserved.
//

import UIKit

class MapViewController: UIViewController /*, UITableViewDelegate, UITableViewDataSource */{
    
    @IBOutlet weak var Map: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        Map.center.x -= view.bounds.width*2
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.5, animations: {
            self.Map.center.x += self.view.bounds.width
        })
    }
    
    
}
