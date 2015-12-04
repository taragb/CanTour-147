//
//  noAnimationSegueUnwind.swift
//  TinderSwipeCardsSwift
//
//  Created by Tara Balakrishnan on 11/29/15.
//  Copyright (c) 2015 gcweb. All rights reserved.
//

import UIKit

class noAnimationSegueUnwind: UIStoryboardSegue {
    
    override func perform() {
        let src: UIViewController = self.sourceViewController 
        let dst: UIViewController = self.destinationViewController 
        let transition: CATransition = CATransition()
        let timeFunc : CAMediaTimingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.duration = 0.25
        transition.timingFunction = timeFunc
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromLeft
        src.navigationController!.view.layer.addAnimation(transition, forKey: kCATransition)
        src.navigationController!.pushViewController(dst, animated: false)
        
//        let src = self.sourceViewController as UIViewController
//        let dst = self.destinationViewController as UIViewController
//        
//        src.view.superview?.insertSubview(dst.view, belowSubview: src.view)
//        src.view.transform = CGAffineTransformMakeTranslation(0, 0)
//        
//        UIView.animateWithDuration(0.25,
//            delay: 0.0,
//            options: UIViewAnimationOptions.CurveEaseInOut,
//            animations: {
//                src.view.transform = CGAffineTransformMakeTranslation(src.view.frame.size.width, 0)
//            },
//            completion: { finished in
//                src.dismissViewControllerAnimated(false, completion: nil)
//            }
//        )
    }
   
}
