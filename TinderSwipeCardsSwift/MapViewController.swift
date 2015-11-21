//
//  MapViewController.swift
//  TinderSwipeCardsSwift
//
//  Created by Tara Balakrishnan on 11/21/15.
//  Copyright (c) 2015 gcweb. All rights reserved.
//

import UIKit

class MapViewController: UIViewController /*, UITableViewDelegate, UITableViewDataSource */{
    var bgImage: UIImageView?
    
    @IBAction func onTap(sender: AnyObject) {
        UIView.animateWithDuration(1, animations: {
            self.Map.center.x -= 100
        })
    }
    //@IBOutlet weak var Map: UIImageView!
    
    @IBOutlet weak var Map: UIImageView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        var image: UIImage = UIImage(named: "Map1a")!
        bgImage = UIImageView(image: image)
        bgImage!.frame = CGRectMake(-500,-500,2074,2276) //750,749)
        self.view.addSubview(bgImage!)
        
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
        Map.frame = CGRectMake(20, 20, Map.frame.size.width, Map.frame.size.height);
        print(Map.frame.size.width)
        print("     ")
        print(Map.frame.size.height)

        Map.hidden = false
//        
//        bgImage = UIImageView(image: image)
//        bgImage!.frame = CGRectMake(0,0,100,200)
//        self.view.addSubview(bgImage!)
//        
   
    
    }    
}
