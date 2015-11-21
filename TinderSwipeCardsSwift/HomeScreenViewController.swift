//
//  HomeScreenViewController.swift
//  TinderSwipeCardsSwift
//
//  Created by Shubha Srinivas Raghvendra on 11/19/15.
//

import UIKit
//import <QuartzCore/QuartzCore.h>

class HomeScreenViewController: UIViewController {

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.navigationItem.title = "Home"
    }

}
