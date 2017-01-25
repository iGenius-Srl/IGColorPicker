//
//  ColorPickerViewDelegate.swift
//  Pods
//
//  Created by Andrea Antonioni on 24/01/2017.
//
//

import Foundation

@objc public protocol ColorPickerViewDelegate {

    func colorPickerView(_ colorPickerView: ColorPickerView, didSelectItemAt indexPath: IndexPath)
    
    @objc optional func colorPickerView(_ colorPickerView: ColorPickerView, didDeselectItemAt indexPath: IndexPath)

}
