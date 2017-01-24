//
//  ColorPickerViewDelegateFlowLayout.swift
//  Pods
//
//  Created by Andrea Antonioni on 24/01/17.
//
//

import Foundation

@objc public protocol ColorPickerViewDelegateFlowLayout {
    @objc @available(iOS 6.0, *)
    optional func colorPickerView(_ colorPickerView: ColorPickerView, sizeForItemAt indexPath: IndexPath) -> CGSize
}
