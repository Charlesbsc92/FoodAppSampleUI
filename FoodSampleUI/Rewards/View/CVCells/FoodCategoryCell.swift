//
//  FoodCategoryCell.swift
//  Rewards
//
//  Created by Charles on 30/08/23.
//

import UIKit
import Reusable

class FoodCategoryCell: UICollectionViewCell,NibReusable {
    
    // Mark - Outlets
    @IBOutlet weak var categoryLbl:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    
    func populated(selectedIndex:Int,indexPath:IndexPath) {
        if selectedIndex == indexPath.row {
            self.categoryLbl.font = UIFont(name: "BrandonGrotesque-MediumItalic", size: 17)
            self.categoryLbl.textColor = UIColor.hexStringToUIColor(hex: "#27214D")
        }else {
            self.categoryLbl.font = UIFont(name: "BrandonGrotesque-MediumItalic", size: 14)
            self.categoryLbl.textColor = UIColor.hexStringToUIColor(hex: "#938DB5")
        }
    }

}
