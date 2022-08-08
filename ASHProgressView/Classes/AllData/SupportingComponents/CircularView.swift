//
//  CircularView.swift
//  ASHProgressView
//
//  Created by Amais Sheikh	 on 08/08/2022.
//

import Foundation

class CircularView: UIView {
    
    //MARK: - Section Name
    override var bounds: CGRect {
        didSet {
            self.layer.cornerRadius = bounds.height / 2
        }
    }
}
