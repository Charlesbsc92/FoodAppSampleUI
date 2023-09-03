//
//  FoodNonFilterCell.swift
//  Rewards
//
//  Created by Charles on 30/08/23.
//

import UIKit
import Reusable


class FoodNonFilterCell: UITableViewCell,NibReusable {
    
    @IBOutlet weak var titleLbl:UILabel!
    @IBOutlet weak var foodCV:UICollectionView!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.setup()
    }
    
    private func setup() {
        self.selectionStyle = .none
        self.foodCV.delegate = self
        self.foodCV.dataSource = self
        self.registerCells()
    }
    
    private func registerCells() {
        self.foodCV.register(cellType: FoodItemCell.self)
    }
}

extension FoodNonFilterCell:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:FoodItemCell = collectionView.dequeueReusableCell(for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width - 20) / 2
        let height = collectionView.frame.height
        return CGSize(width: width, height: height)
        
    }
    
    
}
