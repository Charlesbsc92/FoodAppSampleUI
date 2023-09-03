//
//  FoodFilterCell.swift
//  Rewards
//
//  Created by Charles on 30/08/23.
//

import UIKit
import Reusable


class FoodFilterCell: UITableViewCell,NibReusable {
    
    // Mark - Outlets
    
    @IBOutlet weak var categoryCV:UICollectionView!
    @IBOutlet weak var foodCV:UICollectionView!
    
    // Mark - Properties
    var selectedCategoryIndex:Int = 0

    override func awakeFromNib() {
        super.awakeFromNib()
        self.setup()
    }

    private func setup() {
        self.categoryCV.delegate = self
        self.categoryCV.dataSource = self
        self.foodCV.dataSource = self
        self.foodCV.delegate = self
        registerCells()
    }
    
    private func registerCells() {
        self.categoryCV.register(cellType: FoodCategoryCell.self)
        self.foodCV.register(cellType: FoodItemCell.self)
    }
}

extension FoodFilterCell:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case self.foodCV:
            return 5
        case self.categoryCV:
            return 3
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case self.categoryCV:
            let cell:FoodCategoryCell = collectionView.dequeueReusableCell(for: indexPath)
            cell.populated(selectedIndex: self.selectedCategoryIndex, indexPath: indexPath)
            return cell
        case self.foodCV:
            let cell:FoodItemCell = collectionView.dequeueReusableCell(for: indexPath)
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case self.foodCV:
            let width = (collectionView.frame.width - 20) / 2
            let height = collectionView.frame.height
            return CGSize(width: width, height: height)
        case self.categoryCV:
            let width = (collectionView.frame.width / 5)
            let height = collectionView.frame.height
            return CGSize(width: width, height: height)
        default:
            return CGSize()
        }
        
    }
    
    
}
