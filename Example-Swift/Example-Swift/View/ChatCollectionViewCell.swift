//
//  YALChatDemoCollectionViewCell.swift
//  Example-Swift
//
//  Created by Serhii Butenko on 29/8/16.
//  Copyright © 2016 Yalantis. All rights reserved.
//

import UIKit

class ChatCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var chatImageView: UIImageView!
    @IBOutlet private weak var userNameLabel: UILabel!
    @IBOutlet private weak var messageLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var notificationImageView: UIImageView!

    override var selected: Bool {
        didSet {
            notificationImageView.hidden = !selected
            
            if selected {
                backgroundColor = UIColor(red: 108.0/255.0, green: 105.0/255.0, blue: 164.0/255.0, alpha: 1)
            } else {
                backgroundColor = UIColor(red: 102.0/255.0, green: 99.0/255.0, blue: 157.0/255.0, alpha: 1)
            }
        }
    }
    
    func configure(withImage image: UIImage, userName: String, messageText: String, dateText: String) {
        chatImageView.image = image
        userNameLabel.text = userName
        messageLabel.text = messageText
        dateLabel.text = dateText
    }
}
