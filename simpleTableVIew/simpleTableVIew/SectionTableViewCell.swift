//
//  SectionTableViewCell.swift
//  simpleTableVIew
//
//  Created by Vijay on 03/02/21.
//

import UIKit

class SectionTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
