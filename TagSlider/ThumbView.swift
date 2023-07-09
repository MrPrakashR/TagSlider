//
//  ThumbView.swift
//  TagSlider
//
//  Created by WYH IOS  on 09/07/23.
//

import Foundation
import UIKit

class ThumbView : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        backgroundColor = .clear
        
        let path = UIBezierPath()
        path.lineJoinStyle = .round
        path.addClip()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: frame.width, y: 0))
        path.addLine(to: CGPoint(x: frame.width, y: frame.height/1.5))
        path.addLine(to: CGPoint(x: frame.width/2, y: frame.height))
        path.addLine(to: CGPoint(x: 0, y: frame.height/1.5))
        path.addLine(to: .zero)
        path.close()
  
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.fillColor = UIColor.black.cgColor
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.lineCap = .round
        shapeLayer.lineJoin = .round
        shapeLayer.path = path.cgPath
        layer.addSublayer(shapeLayer)
        
    }
}
