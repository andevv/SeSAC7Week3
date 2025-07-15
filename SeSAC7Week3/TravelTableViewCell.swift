//
//  TravelTableViewCell.swift
//  SeSAC7Week3
//
//  Created by andev on 7/14/25.
//

import UIKit

class TravelTableViewCell: UITableViewCell {

    static let identifier = "TravelTableViewCell"
    
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var travelLabel: UILabel!
    
    //let color = Color()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        travelLabel.backgroundColor = Color.jackRed
        travelLabel.text = "테스트"
        travelLabel.font = .boldSystemFont(ofSize: 17)
    }
    
    func configureDateLabel(row: Travel) {
        dateLabel.text = row.name
        dateLabel.backgroundColor = .clear
    }
    
    func configureBackground(row: Travel) {
        if row.like {
            backgroundColor = .yellow
        } else {
            backgroundColor = .clear
        }
    }
    
    func configureTravelLabel(row: Travel) {
        travelLabel.text = row.overview
        travelLabel.numberOfLines = 0
        travelLabel.backgroundColor = .clear
    }
}
