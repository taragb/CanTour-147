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
    var count: Int?
    
    
    @IBAction func onTap(sender: AnyObject) {
        print(count)
        if count == 0 {
            UIView.animateWithDuration(1, animations: {
                self.bgImage!.center.x += 389
            })
            count! += 1
        } else if count == 1 {
            UIView.animateWithDuration(1, animations: {
                self.bgImage!.center.y += 121
            })
            count! += 1
        }
        else if count == 2 {
            UIView.animateWithDuration(1, animations: {
                self.bgImage!.center.x += 133
            })
            count! += 1
        }
        else if count == 3 {
            UIView.animateWithDuration(1, animations: {
                self.bgImage!.center.y += 40
            })
            count! += 1
        }
        else if count == 4 {
            performSegueWithIdentifier("seePOI1", sender: nil)
        }

    }
    
    override func viewDidLoad() {
        count = 0
        super.viewDidLoad()
        
        var image: UIImage = UIImage(named: "Map1a")!
        bgImage = UIImageView(image: image)
        bgImage!.frame = CGRectMake(-957,-1250,2074,2276) //750,749)
        self.view.addSubview(bgImage!)
        self.view.sendSubviewToBack(bgImage!)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //any additional setup here
        //let barFrame = CGRectMake(Map.center.x-600, Map.center.y-100, 290, 50)
        //progressView?.frame = barFrame
        
       // Map.center.x -= view.bounds.width*10
//        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.navigationItem.setHidesBackButton(true, animated: true)
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
