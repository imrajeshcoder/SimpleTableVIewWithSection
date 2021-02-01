//
//  ListTableViewCell.swift
//  simpleTableVIew
//
//  Created by Vijay on 01/02/21.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
