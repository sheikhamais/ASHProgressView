//
//  ExtensionUIView.swift
//  ASHProgressView
//
//  Created by Amais Sheikh	 on 08/08/2022.
//

import Foundation
import UIKit

//MARK: - Main Progress Usage
public struct ASHProgessViewStyle {
    public static var standard: ASHProgressView.ProgressViewStyle = .fourCircles(nil, .black.withAlphaComponent(0.4), [.white])
}

extension UIView {
    public func showProgressView(style: ASHProgressView.ProgressViewStyle = ASHProgessViewStyle.standard) {
        
        //disable interaction
        isUserInteractionEnabled = false
        
        //logic to show view
        if let existingViewInfo = ASHProgressViewCounter.views[self],
           existingViewInfo.0 > 0 {
            //already progress view is displayed, increase counter
                ASHProgressViewCounter.views[self] = (existingViewInfo.0 + 1, existingViewInfo.1)
        } else {
            //show progress view
            let progressView = ASHProgressView(progressViewStyle: style)
            self.addSubview(progressView)
            NSLayoutConstraint.activate([
                progressView.leadingAnchor.constraint(equalTo: leadingAnchor),
                progressView.trailingAnchor.constraint(equalTo: trailingAnchor),
                progressView.topAnchor.constraint(equalTo: topAnchor),
                progressView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
            
            //set value in dictionary
            ASHProgressViewCounter.views[self] = (1, progressView)
        }
    }
    
    public func hideProgressView() {
        if let existingViewInfo = ASHProgressViewCounter.views[self],
           existingViewInfo.0 > 0 {
            
            if existingViewInfo.0 == 1 {
                DispatchQueue.main.async {
                    existingViewInfo.1.removeFromSuperview()
                    self.isUserInteractionEnabled = true
                }
            }
            
            ASHProgressViewCounter.views[self] = (existingViewInfo.0 - 1, existingViewInfo.1)
        }
    }
}

//MARK: - Used Types
extension UIView {
    class ASHProgressViewCounter {
        static var views = [UIView: (Int, UIView)]() //[parent reference view: (times show view called, progress view reference)]
    }
}

//MARK: - Added Functionality
extension UIView {
    public func makeRepeatingRotations(duration: TimeInterval = 1, delay: TimeInterval = 0, animatingOptions: UIView.AnimationOptions = [.curveEaseInOut], angle: CGFloat = .pi) {
        UIView.animate(withDuration: duration, delay: delay, options: animatingOptions) {
            self.transform = CGAffineTransform(rotationAngle: angle)
        } completion: { _ in
            let newAngle = (angle + .pi).truncatingRemainder(dividingBy: (2 * .pi))
            self.makeRepeatingRotations(angle: newAngle)
        }
    }
}
