//
//  HomeVC.swift
//  Rewards
//
//  Created by Charles on 29/08/23.
//

import UIKit
import Reusable

class HomeVC: UIViewController {
    
    // Mark - Property
    var name:String = ""
    
    // Mark - Outlets
    @IBOutlet weak var titleLbl:UILabel!
    @IBOutlet weak var foodTV:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    private func setup() {
        setTitleLbl()
        registerCells()
    }
    
    private func setTitleLbl() {
        let firstAttribute = "Hello \(name) ".setAttributes(font: UIFont(name: "BrandonGrotesque-LightItalic", size: 20)!,fontColor: UIColor.hexStringToUIColor(hex: "27214D"))
        let secondAttribute = "What fruit salad combo do you want today".setAttributes(font: UIFont(name: "BrandonGrotesque-MediumItalic", size: 20)!, fontColor: UIColor.hexStringToUIColor(hex: "27214D"))
        let resultAttribute = NSMutableAttributedString()
        resultAttribute.append(firstAttribute)
        resultAttribute.append(secondAttribute)
        self.titleLbl.attributedText = resultAttribute
    }
    
    private func registerCells() {
        self.foodTV.register(cellType: FoodFilterCell.self)
        self.foodTV.register(cellType: FoodNonFilterCell.self)
    }
    
    
    func setData(name:String) {
        self.name = name
    }
}

extension HomeVC:UITableViewDataSource,UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell:FoodNonFilterCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        case 1:
            let cell:FoodFilterCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        case 2:
            let cell:FoodNonFilterCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        case 3:
            let cell:FoodFilterCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        case 4:
            let cell:FoodNonFilterCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
