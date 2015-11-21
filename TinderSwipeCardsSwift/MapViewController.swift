//
//  MapViewController.swift
//  TinderSwipeCardsSwift
//
//  Created by Tara Balakrishnan on 11/21/15.
//  Copyright (c) 2015 gcweb. All rights reserved.
//

import UIKit

class MapViewController: UIViewController /*, UITableViewDelegate, UITableViewDataSource */{
    
    @IBAction func onTap(sender: AnyObject) {
        UIView.animateWithDuration(1, animations: {
            self.Map.center.x -= 100
        })
    }
    //@IBOutlet weak var Map: UIImageView!
    
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
        //let barFrame = CGRectMake(Map.center.x-600, Map.center.y-100, 290, 50)
        //progressView?.frame = barFrame
        
       // Map.center.x -= view.bounds.width*10
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    
        Map.transform = CGAffineTransformMakeScale(2,2)
        Map.frame = CGRect(x: 200, y: 20, width: Map.frame.size.width, height: Map.frame.size.height);

        Map.hidden = false
        
   
    
    }    
}
