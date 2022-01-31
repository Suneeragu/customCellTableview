//
//  FruitsTableViewCell.swift
//  customCellTableview
//
//  Created by Suneetha Ragupatula on 1/30/22.
//

import UIKit

class FruitsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var fruitView: UIView!
    @IBOutlet weak var fruitImg: UIImageView!
    @IBOutlet weak var fruitLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
