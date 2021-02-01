//
//  ContactTableCell.swift
//  simpleTableVIew
//
//  Created by Vijay on 01/02/21.
//

import UIKit

class ContactTableCell: UITableViewCell {

    @IBOutlet weak var imgPhoto: UIImageView!
    @IBOutlet weak var lblMobileNumber: UILabel!
    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imgPhoto.layer.cornerRadius = imgPhoto.frame.height / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
