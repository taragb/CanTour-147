//
//  POI2ViewController.swift
//  TinderSwipeCardsSwift
//
//  Created by Shubha Srinivas Raghvendra on 11/21/15.
//  Copyright (c) 2015 gcweb. All rights reserved.
//

import UIKit

class POI2ViewController: UIViewController {
    var bgImage: UIImageView?
    
    var count1 = 0
    var count2 = 0
    var count3 = 0
    
    let tealColor = UIColor(
        red: 61.0/255,
        green: 201.0/255,
        blue: 179.0/255,
        alpha: 1.0)
    
    let greyColor = UIColor(
        red:36.0/255,
        green:40.0/255,
        blue:48.0/255,
        alpha:1.0)
    
    let clear = UIColor(white: 1, alpha: 0)
    
    @IBOutlet weak var factLabel: UILabel!
    
    
    func getImageWithColor(color: UIColor, size: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(CGRectMake(0, 0, 100, 100))
        var image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var image: UIImage = UIImage(named: "Map1c")!
        bgImage = UIImageView(image: image)
        bgImage!.frame = CGRectMake(-435,-730,2074,2276)
        self.view.addSubview(bgImage!)
        self.view.sendSubviewToBack(bgImage!)
        
        
        //Button 1
        var button = UIButton.buttonWithType(.Custom) as! UIButton
        button.backgroundColor = greyColor
        //        button.setBackgroundImage(getImageWithColor(tealColor, size: CGSize(width: 25, height: 25)).alpha(0.1), forState: .Highlighted)
        button.frame = CGRectMake(173, 270, 25, 25)
        button.layer.cornerRadius = button.bounds.size.width / 2.0
        button.layer.masksToBounds = true
        button.layer.borderWidth = 2;
        button.layer.borderColor = tealColor.CGColor
        button.setTitle("i", forState: UIControlState.Normal)
        button.setTitleColor(tealColor, forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonAction1:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(button)
        print("createdButton")
        
        //Button 2
        var button2 = UIButton.buttonWithType(.Custom) as! UIButton
        button2.backgroundColor = greyColor
        button2.frame = CGRectMake(140, 300, 25, 25)
        button2.layer.cornerRadius = button.bounds.size.width / 2.0
        button2.layer.masksToBounds = true
        button2.layer.borderWidth = 2;
        button2.layer.borderColor = tealColor.CGColor
        button2.setTitle("i", forState: UIControlState.Normal)
        button2.setTitleColor(tealColor, forState: UIControlState.Normal)
        button2.addTarget(self, action: "buttonAction2:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(button2)
        print("createdButton")
        
        
        //Button 3
        var button3 = UIButton.buttonWithType(.Custom) as! UIButton
        button3.backgroundColor = greyColor
        button3.frame = CGRectMake(245, 218, 25, 25)
        button3.layer.cornerRadius = button.bounds.size.width / 2.0
        button3.layer.masksToBounds = true
        button3.layer.borderWidth = 2;
        button3.layer.borderColor = tealColor.CGColor
        button3.setTitle("i", forState: UIControlState.Normal)
        button3.setTitleColor(tealColor, forState: UIControlState.Normal)
        button3.addTarget(self, action: "buttonAction3:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(button3)
        print("createdButton")

    }
    
    
    func buttonAction1(sender:UIButton!)
    {
        factLabel.textAlignment = NSTextAlignment.Center;
        if (count1 % 2 == 0) {
            println("Button tapped")
            factLabel.text = "Rodin's Balzac is stripped of the writer's usual attributes (pen, book, armchair, etc.)"
            sender.backgroundColor = clear
            sender.setTitle("", forState: UIControlState.Normal)
        }
        else {
            factLabel.text = ""
            sender.backgroundColor = greyColor
            sender.setTitle("i", forState: UIControlState.Normal)
        }
        count1 += 1
    }
    
    
    func buttonAction2(sender:UIButton!)
    {
        factLabel.textAlignment = NSTextAlignment.Center;
        if (count2 % 2 == 0) {
            println("Button tapped")
            factLabel.text = "the fluid surface of the dressing gown was created by stiffening and plastering a real robe"
            sender.backgroundColor = clear
            sender.setTitle("", forState: UIControlState.Normal)
        }
        else {
            factLabel.text = ""
            sender.backgroundColor = greyColor
            sender.setTitle("i", forState: UIControlState.Normal)
        }
        count2 += 1
    }
    
    func buttonAction3(sender:UIButton!)
    {
        factLabel.textAlignment = NSTextAlignment.Center;
        if (count3 % 2 == 0) {
            println("Button tapped")
            factLabel.text = "this statue of 19th century French novelist Balzac was not displayed in public for 41 years due to its controversial nature"
            sender.backgroundColor = clear
            sender.setTitle("", forState: UIControlState.Normal)
        }
        else {
            factLabel.text = ""
            sender.backgroundColor = greyColor
            sender.setTitle("i", forState: UIControlState.Normal)
        }
        count3 += 1
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
