//
//  StartMapViewController.swift
//  TinderSwipeCardsSwift
//
//  Created by Tara Balakrishnan on 12/3/15.
//  Copyright (c) 2015 gcweb. All rights reserved.
//

import UIKit

class StartMapViewController: UIViewController {
    var bgImage: UIImageView?
    
//    @IBAction func onTap2(sender: AnyObject) {
//        performSegueWithIdentifier("beginTour", sender: nil)
//    }
//    @IBAction func onTap(sender: AnyObject) {
//        performSegueWithIdentifier("beginTour", sender: nil)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let image: UIImage = UIImage(named: "Map1a")!
        bgImage = UIImageView(image: image)
        bgImage!.frame = CGRectMake(-957,-1250,2074,2276) //750,749)
        self.view.addSubview(bgImage!)
        self.view.sendSubviewToBack(bgImage!)
        
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
