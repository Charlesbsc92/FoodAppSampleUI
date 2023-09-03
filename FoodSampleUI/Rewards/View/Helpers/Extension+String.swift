//
//  Extension+Str.swift
//  Rewards
//
//  Created by Charles on 30/08/23.
//

import Foundation
import UIKit



extension String {
    
    
    func setAttributes(font:UIFont,fontColor:UIColor) -> NSMutableAttributedString {
        let attributes = [NSAttributedString.Key.foregroundColor: fontColor, NSAttributedString.Key.font: font]
        return NSMutableAttributedString(string: self, attributes: attributes)
    }
    
    
}
