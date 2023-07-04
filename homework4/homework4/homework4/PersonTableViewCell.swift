//
//  PersonTableViewCell.swift
//  homework4
//
//  Created by Рената Латыпова on 04.07.2023.
//

import UIKit

struct PersonData {
    let name: String
}

final class PersonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setUpData(_ data: PersonData) {
        nameLabel.text = data.name
    }

}
