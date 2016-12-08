//
//  CardCell.swift
//  
//
//  Created by Christine Wu on 12/7/16.
//
//

import UIKit

@objc
protocol DeckCardCellDelegate {
    @objc optional func toggleRightPanel()
    @objc optional func setMainDeck(deckName: String)
}

class DeckCardCell: UICollectionViewCell {
    @IBOutlet weak var deckCardImage: UIImageView!
    
    @IBAction func deckCardButton(_ sender: Any) {
        delegate?.toggleRightPanel?()
        delegate?.setMainDeck!(deckName: deckCardLabel.text!)
        print("main deck set:")
    }
    
    @IBOutlet weak var deckCardLabel: UILabel!
    
    var delegate: DeckCardCellDelegate?
}
