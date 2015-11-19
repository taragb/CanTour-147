//
//  OverlayView.swift
//
//  Modified by Team Cantour on 11/19/15.
//
//

import Foundation
import UIKit

enum GGOverlayViewMode {
    case GGOverlayViewModeLeft
    case GGOverlayViewModeRight
}

class OverlayView: UIView{
    var _mode: GGOverlayViewMode! = GGOverlayViewMode.GGOverlayViewModeLeft
    var imageView: UIImageView!

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0)
        imageView = UIImageView(image: UIImage(named: "final_cross"))
        //imageView.backgroundColor = UIColor.blueColor()
        self.addSubview(imageView)
    }

    func setMode(mode: GGOverlayViewMode) -> Void {
        if _mode == mode {
            return
        }
        _mode = mode

        if _mode == GGOverlayViewMode.GGOverlayViewModeLeft {
            imageView.image = UIImage(named: "final_cross")
        } else {
            imageView.image = UIImage(named: "final_heart")
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = CGRectMake(50, 50, 100, 100)
    }
}