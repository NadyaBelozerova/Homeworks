//
//  SettingsTableViewCell.swift
//  дз10-1
//
//  Created by Nadya Belozerova on 29.11.2020.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var nameOfSetting: UILabel!
    
    @IBOutlet weak var labelOfSettings: UILabel!
    
    @IBOutlet weak var iconOfSetting: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
