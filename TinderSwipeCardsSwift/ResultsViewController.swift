//
//  ResultsViewController.swift
//  TinderSwipeCardsSwift
//
//  Created by Shubha Srinivas Raghvendra on 11/19/15.
//

import UIKit

class ResultsViewController: UIViewController {

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        // Do any additional setup after loading the view.
        self.navigationController?.setNavigationBarHidden(true, animated: true)
//        self.navigationController?.setNavigationBarHidden(false, animated: true)
//        self.navigationItem.title = "Results"
//        self.navigationItem.setHidesBackButton(true, animated: true)
//        
//        var myBackButton:UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
//        myBackButton.addTarget(self, action: "popToHome:", forControlEvents: UIControlEvents.TouchUpInside)
//        myBackButton.setTitle("Home", forState: UIControlState.Normal)
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
    
    func popToHome(sender:UIBarButtonItem){
        self.navigationController?.popToRootViewControllerAnimated(true)
//        self.navigationController?.popToViewController(TopResultsViewController(), animated: true)
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
