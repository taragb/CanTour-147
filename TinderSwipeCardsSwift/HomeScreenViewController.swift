//
//  HomeScreenViewController.swift
//  TinderSwipeCardsSwift
//
//  Created by Shubha Srinivas Raghvendra on 11/19/15.
//  Copyright (c) 2015 gcweb. All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController {

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

}
