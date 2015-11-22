//
//  Map5ViewController.swift
//  TinderSwipeCardsSwift
//
//  Created by Shubha Srinivas Raghvendra on 11/21/15.
//  Copyright (c) 2015 gcweb. All rights reserved.
//

import UIKit

class Map5ViewController: UIViewController {
    var bgImage: UIImageView?
    var count: Int?
    
    
    @IBAction func onTap(sender: AnyObject) {
        print(count)
        if count == 0 {
            UIView.animateWithDuration(1, animations: {
                self.bgImage!.center.y -= 247
            })
            count! += 1
        }
        else if count == 1 {
            UIView.animateWithDuration(1, animations: {
                self.bgImage!.center.x -= 148
            })
            count! += 1
        }
        else if count == 2 {
            UIView.animateWithDuration(1, animations: {
                self.bgImage!.center.y -= 540
            })
            count! += 1
        }
        else if count == 3 {
            print(" End Tour")
//            performSegueWithIdentifier("seePOI4", sender: nil)
        }
        
    }
    
    override func viewDidLoad() {
        count = 0
        super.viewDidLoad()
        
        var image: UIImage = UIImage(named: "Map1e")!
        bgImage = UIImageView(image: image)
        bgImage!.frame = CGRectMake(-810,-374,2074,2276)
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
        
        // Map.center.x -= view.bounds.width*10
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        //        bgImage!.transform = CGAffineTransformMakeScale(2,2)
        //        bgImage!.frame = CGRectMake(20, 20, bgImage!.frame.size.width, bgImage!.frame.size.height);
        print(bgImage!.frame.size.width)
        print("     ")
        print(bgImage!.frame.size.height)
        
        bgImage!.hidden = false
        
        
    }

}
