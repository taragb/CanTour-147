//
//  ViewController.swift
//
//  Modified by Team Cantour on 11/19/15.
//
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        var draggableBackground: DraggableViewBackground = DraggableViewBackground(frame: self.view.frame)
        self.view.addSubview(draggableBackground)
      //  draggableBackground.delete()
        
       //draggableBackground.viewController = self

        performSegueWithIdentifier("QuiztoResults", sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func toResults () -> Void {
        performSegueWithIdentifier("QuiztoResults", sender: nil)

    }

}

