//
//  POI1ViewController.swift
//  TinderSwipeCardsSwift
//
//  Created by Shubha Srinivas Raghvendra on 11/21/15.
//  Copyright (c) 2015 gcweb. All rights reserved.
//

import UIKit

class POI1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        // Do any additional setup after loading the view.
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = "Point of Interest"
        
        var myBackButton:UIButton = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        myBackButton.addTarget(self, action: "goToMap:", forControlEvents: UIControlEvents.TouchUpInside)
        myBackButton.setTitle("Back To Map", forState: UIControlState.Normal)
        let tealColor = UIColor(
            red:61.0/255,
            green:201.0/255,
            blue:179.0/255,
            alpha:1.0)
        myBackButton.setTitleColor(tealColor, forState: UIControlState.Normal)
        myBackButton.sizeToFit()
        var myCustomBackButtonItem:UIBarButtonItem = UIBarButtonItem(customView: myBackButton)
        self.navigationItem.leftBarButtonItem  = myCustomBackButtonItem
    }

    func goToMap(sender:UIBarButtonItem){
        self.navigationController?.popToRootViewControllerAnimated(true)
        
//        let switchViewController = self.navigationController?.viewControllers[1]
//        for (var i = 0; i < self.navigationController?.viewControllers.count; i++) {
//            if(self.navigationController?.viewControllers[i].isKindOfClass(TopResultsViewController) == true) {
//                
//                self.navigationController?.popToViewController(self.navigationController!.viewControllers[i] as! UIViewController, animated: true)
//                
//                break;
//            }
//        }
        print (" trying to segue to results screen")
        self.navigationController?.popToViewController(self.navigationController!.viewControllers[1] as! UIViewController, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
