//
//  ColorPickerCell.swift
//  Pods
//
//  Created by Andrea Antonioni on 23/01/2017.
//
//

import UIKit
import M13Checkbox

class ColorPickerCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    /// The reuse identifier used to register the UICollectionViewCell to the UICollectionView
    static let cellIdentifier = String(describing: ColorPickerCell.self)
    /// The checkbox use to show the tip on the cell
    var checkbox = M13Checkbox()
    
    //MARK: - Initializer
    
    init() {
        super.init(frame: CGRect.zero)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private methods
    
    fileprivate func commonInit() {
        self.layer.cornerRadius = self.bounds.width / 2
        
        // Setup of checkbox
        checkbox.isUserInteractionEnabled = false
        checkbox.backgroundColor = .clear
        checkbox.boxLineWidth = 0
        checkbox.setCheckState(.unchecked, animated: false)
        
        self.addSubview(checkbox)
        
        // Setup constraints to checkbox
        checkbox.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraint(NSLayoutConstraint(item: checkbox, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 14))
        self.addConstraint(NSLayoutConstraint(item: checkbox, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 14))
        self.addConstraint(NSLayoutConstraint(item: checkbox, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: -14))
        self.addConstraint(NSLayoutConstraint(item: checkbox, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: -14))
    }
    
}
