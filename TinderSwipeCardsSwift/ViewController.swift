//
//  ViewController.swift
//
//  Modified by Team Cantour on 11/19/15.
//
//

import UIKit

class ViewController: UIViewController, DraggableViewBackgroundCardsProtocol {
    var progressView: UIProgressView?
    var progressLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = ""
        // Do any additional setup after loading the view, typically from a nib.
        let draggableBackground: DraggableViewBackground = DraggableViewBackground(frame: self.view.frame)
        draggableBackground.delegate = self
        self.view.addSubview(draggableBackground)
        addControls()
        addHomeBtn()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addHomeBtn() {
        let button   =  UIButton()
        button.frame = CGRectMake(-5, 15, 100, 50)
//        button.backgroundColor = UIColor.greenColor()
        let tealColor = UIColor(
            red: 61.0/255,
            green: 201.0/255,
            blue: 179.0/255,
            alpha: 1.0)
        button.setTitle("Home", forState: UIControlState.Normal)
//        button.titleLabel?.text = "Home"
        button.setTitleColor(tealColor, forState: UIControlState.Normal)
//        button.titleLabel?.textColor = tealColor
        button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(button)
    }
    
    func buttonAction(sender:UIButton!)
    {
        print("Button tapped")
        self.navigationController?.popToRootViewControllerAnimated(true)
//        performSegueWithIdentifier("QuiztoHome", sender: nil)
    }
    
    func addControls() {
        // Create Progress View Control
        progressView = UIProgressView(progressViewStyle: UIProgressViewStyle.Default)
        let greyColor = UIColor(
            red:36.0/255,
            green:40.0/255,
            blue:48.0/255,
            alpha:1.0)
        progressView?.progressTintColor = greyColor
        let barFrame = CGRectMake(view.center.x - 145 , view.center.y + 300, 290, 50)
        progressView?.frame = barFrame
        view.addSubview(progressView!)
        
        // Add Label
//        progressLabel = UILabel()
//        let numFrame = CGRectMake(view.center.x - 25, view.center.y + 250, 100, 50)
//        progressLabel?.frame = numFrame
//        view.addSubview(progressLabel!)
    }
    
    func updateProgress() {
        progressView?.progress += 0.10
//        let progressValue = self.progressView?.progress
//        progressLabel?.text = "\(progressValue! * 100) %"
    }
    
    
    func draggableViewBackgroundisOutOfCards(draggableView: DraggableViewBackground) {
         self.title = "Quiz"
         sleep(1)
         performSegueWithIdentifier("QuiztoResults", sender: nil)
    }
    
    func draggableViewBackgroundOneCardLess(DraggableView: DraggableViewBackground) {
        updateProgress()
    }

}

