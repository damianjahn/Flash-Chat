//
//  MessageCell.swift
//  Flash Chat
//
//  Created by Damian Jahn on 23/07/2020.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var MessageBuble: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        MessageBuble.layer.cornerRadius = MessageBuble.frame.size.height / 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
