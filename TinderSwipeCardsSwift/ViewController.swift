//
//  ViewController.swift
//
//  Modified by Team Cantour on 11/19/15.
//
//

import UIKit

class ViewController: UIViewController, DraggableViewBackgroundCardsProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        var draggableBackground: DraggableViewBackground = DraggableViewBackground(frame: self.view.frame)
        draggableBackground.delegate = self
        self.view.addSubview(draggableBackground)

      //  draggableBackground.delete()
        
       //draggableBackground.viewController = self
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func draggableViewBackgroundisOutOfCards(draggableView: DraggableViewBackground) {
         performSegueWithIdentifier("QuiztoResults", sender: nil)
    }

}

