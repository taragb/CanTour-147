//
//  noAnimationSegue.swift
//  TinderSwipeCardsSwift
//
//  Created by Tara Balakrishnan on 11/29/15.
//  Copyright (c) 2015 gcweb. All rights reserved.
//

import UIKit

class noAnimationSegue: UIStoryboardSegue {
    override func perform() {
        // Assign the source and destination views to local variables.
//        var firstVCView = self.sourceViewController.view as UIView!
//        var secondVCView = self.destinationViewController.view as UIView!
        let src = self.sourceViewController as UIViewController
        let dst = self.destinationViewController as UIViewController
//        src.navigationController.pushViewController(dst, animated:false)
        src.navigationController?.pushViewController(dst, animated: false)

        
//        self.sourceViewController.presentViewController(self.destinationViewController as UIViewController, animated: false, completion: nil)
        
        
    }
    
    
}
