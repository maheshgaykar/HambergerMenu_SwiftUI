//
//  Utilities.swift
//  HambergerMenu
//
//  Created by mahesh gaykar on 28/07/23.
//

import Foundation
import UIKit

class Utilities {
    
    // The static property to access the single instance
    static let shared = Utilities()
    // Private initializer prevents external instantiation
    private init() {}
    
    func checkForTopNotch() -> Bool {
        
        let keyWindow = UIApplication.shared.windows.filter { $0.isKeyWindow }.first
        let topPadding = keyWindow?.safeAreaInsets.top ?? 0
        
        // Typical top-notch height for iPhones is 30 points
        if topPadding > 25 {
            return true
        }else {
            return false
        }
    }
    
}
