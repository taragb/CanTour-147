//
//  POI1ViewController.swift
//  TinderSwipeCardsSwift
//
//  Created by Shubha Srinivas Raghvendra on 11/21/15.
//  Copyright (c) 2015 gcweb. All rights reserved.
//

import UIKit

class POI1ViewController: UIViewController {
    var bgImage: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var image: UIImage = UIImage(named: "Map1b")!
        bgImage = UIImageView(image: image)
        bgImage!.frame = CGRectMake(-435,-1089,2074,2276) //750,749)
        self.view.addSubview(bgImage!)
        self.view.sendSubviewToBack(bgImage!)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        // Do any additional setup after loading the view.
        self.navigationController?.setNavigationBarHidden(true, animated: true)

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
