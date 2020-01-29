//
//  UITextField.swift
//  iOSUtils
//
//  Created by Ivan Espitia on 24/01/20.
//  Copyright © 2020 Ivan Espitia. All rights reserved.
//

import Foundation
import UIKit

public extension UITextField {
    
    func setLocalizedText(key: String) {
        self.text = key.getLozalized()
    }
    
    func setLocalizedHint(key: String) {
        self.text = key.getLozalized()
    }
    
    func removeSpaces() -> String {
        if let text = self.text {
            return text.removeSpaces()
        }
        return ""
    }
    
}
