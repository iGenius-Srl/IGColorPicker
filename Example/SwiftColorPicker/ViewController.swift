//
//  ViewController.swift
//  SwiftColorPicker
//
//  Created by Andrea Antonioni on 01/23/2017.
//  Copyright (c) 2017 Andrea Antonioni. All rights reserved.
//

import UIKit
import SwiftColorPicker

class ViewController: UIViewController, ColorPickerViewDelegateFlowLayout {

    @IBOutlet weak var colorPickerView: ColorPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorPickerView.layoutDelegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func colorPickerView(_ colorPickerView: ColorPickerView, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }

}

