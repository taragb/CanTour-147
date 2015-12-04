//
//  Map3ViewController.swift
//  TinderSwipeCardsSwift
//
//  Created by Shubha Srinivas Raghvendra on 11/21/15.
//  Copyright (c) 2015 gcweb. All rights reserved.
//

import UIKit

class Map3ViewController: UIViewController {
    var bgImage: UIImageView?
    var count: Int?
    
    
    @IBAction func onTap(sender: AnyObject) {
        print(count)
        if count == 0 {
            UIView.animateWithDuration(1, animations: {
                self.bgImage!.center.y += 113
            })
            count! += 1
        } else if count == 1 {
            UIView.animateWithDuration(1.1, animations: {
                self.bgImage!.center.x -= 133
            })
            count! += 1
        }
        else if count == 2 {
            UIView.animateWithDuration(2, animations: {
                self.bgImage!.center.y += 243
            })
            count! += 1
        }
        else if count == 3 {
            performSegueWithIdentifier("seePOI3", sender: nil)
        }
        
    }
    
    override func viewDidLoad() {
        count = 0
        super.viewDidLoad()
        
        var image: UIImage = UIImage(named: "Map1c")!
        bgImage = UIImageView(image: image)
        bgImage!.frame = CGRectMake(-435,-730,2074,2276)
        self.view.addSubview(bgImage!)
        self.view.sendSubviewToBack(bgImage!)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        self.navigationController?.setNavigationBarHidden(true, animated: true)
//        self.navigationItem.setHidesBackButton(true, animated: true)
//
//        var myBackButton:UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
//        myBackButton.addTarget(self, action: "doNothing:", forControlEvents: UIControlEvents.TouchUpInside)
//        myBackButton.setTitle("Results", forState: UIControlState.Normal)
//        let tealColor = UIColor(
//            red:61.0/255,
//            green:201.0/255,
//            blue:179.0/255,
//            alpha:1.0)
//        myBackButton.setTitleColor(tealColor, forState: UIControlState.Normal)
//        myBackButton.sizeToFit()
//        var myCustomBackButtonItem:UIBarButtonItem = UIBarButtonItem(customView: myBackButton)
//        self.navigationItem.leftBarButtonItem  = myCustomBackButtonItem
    }
    
    
    func doNothing(sender:UIBarButtonItem){
//        print("going to results")
        //self.navigationController?.popToRootViewControllerAnimated(true)
//        self.navigationController?.popToViewController(TopResultsViewController(), animated: true)
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
