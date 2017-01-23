//
//  ColorPickerCell.swift
//  Pods
//
//  Created by Andrea Antonioni on 23/01/2017.
//
//

import UIKit

class ColorPickerCell: UICollectionViewCell {
    
    static let cellIdentifier = String(describing: ColorPickerCell.self)
    
    func setup() {
        self.layer.cornerRadius = self.bounds.width / 2
    }
    
    //MARK: - Initializer
    
    init() {
        super.init(frame: CGRect.zero)
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
