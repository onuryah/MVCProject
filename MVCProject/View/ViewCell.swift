//
//  ViewCell.swift
//  MVCProject
//
//  Created by Ceren Çapar on 5.11.2021.
//

import UIKit

class ViewCell: UITableViewCell {
    @IBOutlet weak var nameLabelField: UILabel!
    @IBOutlet weak var leaderImageView: UIImageView!
    @IBOutlet weak var commentLabelField: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
