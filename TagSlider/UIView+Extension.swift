//
//  UIView+Extension.swift
//  TagSlider
//
//  Created by WYH IOS  on 09/07/23.
//

import Foundation
import UIKit

extension UIView {
    
    var snapShot : UIImage {
        let renderer = UIGraphicsImageRenderer(bounds: bounds)
        let captureImage = renderer.image { context in
            layer.render(in: context.cgContext)
        }
        return captureImage
    }
}
