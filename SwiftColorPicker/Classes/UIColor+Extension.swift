//
//  Colors.swift
//  Crystal_iOS
//
//  Created by Andrea Antonioni on 08/11/16.
//  Copyright © 2016 Andrea Antonioni. All rights reserved.
//

import Foundation


// TODO: - Add link to gist
extension UIColor {
    
    var redValue: CGFloat{
        return cgColor.components! [0]
    }
    
    var greenValue: CGFloat{
        return cgColor.components! [1]
    }
    
    var blueValue: CGFloat{
        return cgColor.components! [2]
    }
    
    var alphaValue: CGFloat{
        return cgColor.components! [3]
    }
    
    var isWhiteText: Bool {
        
        let red = self.redValue * 255
        let green = self.greenValue * 255
        let blue = self.blueValue * 255
        
        // https://en.wikipedia.org/wiki/YIQ
        // https://24ways.org/2010/calculating-color-contrast/
        let yiq = ((red * 299) + (green * 587) + (blue * 114)) / 1000
        return yiq < 192
    }
    
}
