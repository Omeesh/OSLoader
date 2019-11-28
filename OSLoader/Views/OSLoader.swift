//
//  OSLoader.swift
//  OSLoader
//
//  Created by apple on 28/11/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit
import Lottie

class OSLoader: UIView {
    
    public var userInteractionEnable : Bool = false

    func startLoader(){
        DispatchQueue.main.async {
            if let _ = self.viewWithTag(303030) {
                //View is already locked
            }
            else {
                self.isUserInteractionEnabled = self.userInteractionEnable
                
                let animation = AnimationView(name: "lottie_loader")
                animation.frame =  CGRect(x: 0, y: 0, width: self.frame.size.width / 4.5, height: self.frame.size.width / 4.5)
                animation.contentMode = .scaleAspectFill
                animation.loopMode = .loop
                animation.animationSpeed = 1.5
                animation.play()
                
                let lockView = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.size.width / 4.5, height: self.frame.size.width / 4.5))
                lockView.backgroundColor = UIColor.black.withAlphaComponent(0.6)
                lockView.tag = 40
                lockView.alpha = 0.0
                self.circularShadow(rad: 15, color: .black, shadowView: lockView)
                
                animation.center = lockView.center
                lockView.addSubview(animation)
                
                self.addSubview(lockView)
                UIView.animate(withDuration: 0.2) {
                    lockView.alpha = 1.0
                }
                lockView.center = self.center
            }
        }
    }
    
    
    func stopLoader() {
        DispatchQueue.main.async {
            self.isUserInteractionEnabled = true
            if let spinnerView = self.viewWithTag(303030) {
                UIView.animate(withDuration: 0.2, animations: {
                    spinnerView.alpha = 0.0
                }) { finished in
                    spinnerView.removeFromSuperview()
                    
                }
            }
        }
    }

    func circularShadow(rad: CGFloat , color: UIColor, shadowView: UIView){
        
        // add the shadow to the base view
        shadowView.clipsToBounds = true
        shadowView.layer.cornerRadius = rad
        shadowView.layer.masksToBounds = false
        
        shadowView.backgroundColor = UIColor.white
        shadowView.layer.shadowColor = color.cgColor
        shadowView.layer.shadowOffset = CGSize.zero
        shadowView.layer.shadowOpacity = 0.4
        shadowView.layer.shadowRadius = 2.0
        shadowView.layoutIfNeeded()
        
        shadowView.layer.shadowPath = UIBezierPath(roundedRect: shadowView.bounds, cornerRadius: rad).cgPath
        shadowView.layer.shouldRasterize = true
        shadowView.layer.rasterizationScale = UIScreen.main.scale
        
    }
    
}
