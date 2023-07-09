//
//  TagSlider.swift
//  TagSlider
//
//  Created by WYH IOS  on 09/07/23.
//

import Foundation
import  UIKit

class Slider : UISlider {
    
    private let baseLayer = CALayer()
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        setup()
    }
    
    private func setup() {
        clear()
        createBaseLayer()
        createThumbImageView()
    }
    
    private func clear() {
        tintColor = .clear
        maximumTrackTintColor = .clear
        backgroundColor = .clear
        thumbTintColor = .clear
    }
    
    private func createBaseLayer() {
        baseLayer.backgroundColor = UIColor.black.cgColor
        baseLayer.frame = .init(x: 0, y: frame.height/2, width: frame.width, height: 4)
        baseLayer.cornerRadius = 2.5
        layer.insertSublayer(baseLayer, at: 0)
    }
    
    private func createThumbImageView() {
        let thumbSize = (3 * frame.height) / 4.3
        let thumbView = ThumbView(frame: .init(x: 0,
                                               y: 0,
                                               width: thumbSize,
                                               height: thumbSize + 2))
        let thumbSnapshot = thumbView.snapShot
        setThumbImage(thumbSnapshot, for: .normal)
        setThumbImage(thumbSnapshot, for: .highlighted)
        setThumbImage(thumbSnapshot, for: .application)
        setThumbImage(thumbSnapshot, for: .disabled)
        setThumbImage(thumbSnapshot, for: .focused)
        setThumbImage(thumbSnapshot, for: .reserved)
        setThumbImage(thumbSnapshot, for: .selected)

    }
}



