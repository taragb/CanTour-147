//
//  EndTourViewController.swift
//  TinderSwipeCardsSwift
//
//  Created by Tara Balakrishnan on 12/3/15.
//  Copyright (c) 2015 gcweb. All rights reserved.
//

import UIKit

class EndTourViewController: UIViewController {
    var bgImage: UIImageView?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let image: UIImage = UIImage(named: "Map1e")!
        bgImage = UIImageView(image: image)
        //        bgImage!.frame = CGRectMake(-958,-621,2074,2276)
        bgImage!.frame = CGRectMake(-958,-1161,2074,2276)
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
