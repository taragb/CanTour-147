//
//  Map6ViewController.swift
//  TinderSwipeCardsSwift
//
//  Created by Tara Balakrishnan on 11/29/15.
//  Copyright (c) 2015 gcweb. All rights reserved.
//

import UIKit

class Map6ViewController: UIViewController {
    var bgImage: UIImageView?
    var count: Int?
    
    
    @IBAction func onTap(sender: AnyObject) {
        print(count, terminator: "")
        if count == 0 {
            print("End Tour", terminator: "")
            performSegueWithIdentifier("EndofTour", sender: nil)
        }
    }
    
    override func viewDidLoad() {
        count = 0
        super.viewDidLoad()
        
        let image: UIImage = UIImage(named: "Map1e")!
        bgImage = UIImageView(image: image)
//        bgImage!.frame = CGRectMake(-958,-621,2074,2276) 
        bgImage!.frame = CGRectMake(-958,-1161,2074,2276)
        self.view.addSubview(bgImage!)
        self.view.sendSubviewToBack(bgImage!)
//        UIView.animateWithDuration(2.5, animations: {
//            self.bgImage!.center.y -= 540
//        })
        performSegueWithIdentifier("EndofTour", sender: nil)
        
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
        
        //        bgImage!.transform = CGAffineTransformMakeScale(2,2)
        //        bgImage!.frame = CGRectMake(20, 20, bgImage!.frame.size.width, bgImage!.frame.size.height);
        print(bgImage!.frame.size.width, terminator: "")
        print("     ", terminator: "")
        print(bgImage!.frame.size.height, terminator: "")
        
        bgImage!.hidden = false
        
        
    }
}
