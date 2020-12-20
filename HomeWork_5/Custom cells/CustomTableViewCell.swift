//
//  CustomTableViewCell.swift
//  HomeWork_5
//
//  Created by Pavel on 18.12.2020.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var cellOne: UILabel!
    
    var delegate: ButtonDelegate?
    
    @IBAction func tapOnButton(_ sender: Any) {
        self.delegate?.buttonTap()
    }
    
    
    func setup() {
        cellOne.backgroundColor = #colorLiteral(red: 1, green: 0.826553762, blue: 0.5110458136, alpha: 1)
        cellOne.layer.cornerRadius = 12
        cellOne.clipsToBounds = true
        buttonOne.backgroundColor = #colorLiteral(red: 0.4400312304, green: 1, blue: 0.5638329983, alpha: 1)
        buttonOne.layer.cornerRadius = 12
        buttonOne.clipsToBounds = true
    }
}
