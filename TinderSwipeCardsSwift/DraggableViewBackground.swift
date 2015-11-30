//
//  DraggableViewBackground.swift
//
//  Modified by Team Cantour on 11/19/15.
//
//

import Foundation
import UIKit

protocol DraggableViewBackgroundCardsProtocol {
    func draggableViewBackgroundisOutOfCards(draggableView:DraggableViewBackground)
    func draggableViewBackgroundOneCardLess(DraggableView: DraggableViewBackground)
}

extension Array {
    mutating func shuffle() {
        if count < 2 { return }
        for i in 0..<(count - 1) {
            let j = Int(arc4random_uniform(UInt32(count - i))) + i
            swap(&self[i], &self[j])
        }
    }
}

class DraggableViewBackground: UIView, DraggableViewDelegate {
    var exampleCardLabels: [String]!
    var exampleCardLocations: [String]!
    var allCards: [DraggableView]!

    let MAX_BUFFER_SIZE = 2
    let CARD_HEIGHT: CGFloat = 386
    let CARD_WIDTH: CGFloat = 290

    var cardsLoadedIndex: Int!
    var loadedCards: [DraggableView]!
    var menuButton: UIButton!
    var messageButton: UIButton!
    var checkButton: UIButton!
    var xButton: UIButton!
    var delegate : DraggableViewBackgroundCardsProtocol?

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        super.layoutSubviews()
        self.setupView()
        exampleCardLabels = ["", "", "", "", "", "", "", "", "", "", ""]
        exampleCardLocations = ["Artboard 1.png", "Artboard 2.png", "Artboard 3.png", "Artboard 4.png", "Artboard 5.png", "Artboard 6.png", "Artboard 7.png", "Artboard 8.png", "Artboard 9.png", "Artboard 10.png"]
        exampleCardLocations.shuffle()
        exampleCardLocations.append("Artboard Blank")
        allCards = []
        loadedCards = []
        cardsLoadedIndex = 0
        self.loadCards()
    }
    
    
    func setupView() -> Void {
   //     self.backgroundColor = UIColor(red: 0.92, green: 0.93, blue: 0.95, alpha: 1)

        xButton = UIButton(frame: CGRectMake((self.frame.size.width - CARD_WIDTH)/2 + 35, self.frame.size.height/2 + CARD_HEIGHT/2, 59, 59))
        xButton.setImage(UIImage(named: "color_cross"), forState: UIControlState.Normal)
        xButton.addTarget(self, action: "swipeLeft", forControlEvents: UIControlEvents.TouchUpInside)

        checkButton = UIButton(frame: CGRectMake(self.frame.size.width/2 + CARD_WIDTH/2 - 95, self.frame.size.height/2 + CARD_HEIGHT/2, 59, 59))
        checkButton.setImage(UIImage(named: "color_heart"), forState: UIControlState.Normal)
        checkButton.addTarget(self, action: "swipeRight", forControlEvents: UIControlEvents.TouchUpInside)

        self.addSubview(xButton)
        self.addSubview(checkButton)
    }

        //test comment
    func createDraggableViewWithDataAtIndex(index: NSInteger) -> DraggableView {
        var draggableView = DraggableView(frame: CGRectMake((self.frame.size.width - CARD_WIDTH)/2, (self.frame.size.height - CARD_HEIGHT)/2 - 25, CARD_WIDTH, CARD_HEIGHT))
        draggableView.information.text = exampleCardLabels[index]
        draggableView.self.backgroundColor = UIColor(patternImage: UIImage(named: exampleCardLocations[index])!) //make this dynamic
        draggableView.delegate = self
        
      //  self.backgroundColor = UIColor(red: 0.92, green: 0.93, blue: 0.95, alpha: 0)

        return draggableView
    }
    
    
    func loadCards() -> Void {
        if exampleCardLabels.count > 0 {
            let numLoadedCardsCap = exampleCardLabels.count > MAX_BUFFER_SIZE ? MAX_BUFFER_SIZE : exampleCardLabels.count
            for var i = 0; i < exampleCardLabels.count; i++ {
                var newCard: DraggableView = self.createDraggableViewWithDataAtIndex(i)
                allCards.append(newCard)
                if i < numLoadedCardsCap {
                    loadedCards.append(newCard)
                }
            }

            for var i = 0; i < loadedCards.count; i++ {
                if i > 0 {
                    self.insertSubview(loadedCards[i], belowSubview: loadedCards[i - 1])
                } else {
                    self.addSubview(loadedCards[i])

                }
                cardsLoadedIndex = cardsLoadedIndex + 1
            }
            
        }
    }

    func cardSwipedLeft(card: UIView) -> Void {
        delegate?.draggableViewBackgroundOneCardLess(self)
        loadedCards.removeAtIndex(0)

        print(cardsLoadedIndex)
        
        if cardsLoadedIndex < allCards.count {
            loadedCards.append(allCards[cardsLoadedIndex])
            cardsLoadedIndex = cardsLoadedIndex + 1
            self.insertSubview(loadedCards[MAX_BUFFER_SIZE - 1], belowSubview: loadedCards[MAX_BUFFER_SIZE - 2])
        } else {
            delegate?.draggableViewBackgroundisOutOfCards(self)
        }
    }
    
    func cardSwipedRight(card: UIView) -> Void {
        delegate?.draggableViewBackgroundOneCardLess(self)
        loadedCards.removeAtIndex(0)
        
        print(cardsLoadedIndex)
        
        if cardsLoadedIndex < allCards.count {
            loadedCards.append(allCards[cardsLoadedIndex])
            cardsLoadedIndex = cardsLoadedIndex + 1
            self.insertSubview(loadedCards[MAX_BUFFER_SIZE - 1], belowSubview: loadedCards[MAX_BUFFER_SIZE - 2])
        } else {
            delegate?.draggableViewBackgroundisOutOfCards(self)
        }
    }

    func swipeRight() -> Void {
        if loadedCards.count <= 0 {
            return
        }
        var dragView: DraggableView = loadedCards[0]
        dragView.overlayView.setMode(GGOverlayViewMode.GGOverlayViewModeRight)
        UIView.animateWithDuration(0.2, animations: {
            () -> Void in
            dragView.overlayView.alpha = 1
        })
        dragView.rightClickAction()
    }

    func swipeLeft() -> Void {
        if loadedCards.count <= 0 {
            return
        }
        var dragView: DraggableView = loadedCards[0]
        dragView.overlayView.setMode(GGOverlayViewMode.GGOverlayViewModeLeft)
        UIView.animateWithDuration(0.2, animations: {
            () -> Void in
            dragView.overlayView.alpha = 1
        })
        dragView.leftClickAction()
    }
}