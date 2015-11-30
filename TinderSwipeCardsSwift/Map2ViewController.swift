//
//  Map2ViewController.swift
//  TinderSwipeCardsSwift
//
//  Created by Shubha Srinivas Raghvendra on 11/21/15.
//  Copyright (c) 2015 gcweb. All rights reserved.
//

import UIKit

class Map2ViewController: UIViewController {
    var bgImage: UIImageView?
    var count: Int?
    
    
    @IBAction func onTap(sender: AnyObject) {
        print(count)
        if count == 0 {
            UIView.animateWithDuration(1, animations: {
                self.bgImage!.center.y += 359
            })
            count! += 1
        }
        else if count == 1 {
            print(" going to map 3")
            performSegueWithIdentifier("seePOI2", sender: nil)
        }
        
    }
    
    override func viewDidLoad() {
        count = 0
        super.viewDidLoad()
        
        var image: UIImage = UIImage(named: "Map1b")!
        bgImage = UIImageView(image: image)
        bgImage!.frame = CGRectMake(-435,-1154,2074,2276) //750,749)
        self.view.addSubview(bgImage!)
        self.view.sendSubviewToBack(bgImage!)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        //let barFrame = CGRectMake(Map.center.x-600, Map.center.y-100, 290, 50)
        //progressView?.frame = barFrame
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        // Map.center.x -= view.bounds.width*10
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        print(bgImage!.frame.size.width)
        print("     ")
        print(bgImage!.frame.size.height)
        
        bgImage!.hidden = false
        
        
    }

}
