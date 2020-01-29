//
//  UILabel.swift
//  iOSUtils
//
//  Created by Ivan Espitia on 27/01/20.
//  Copyright © 2020 Ivan Espitia. All rights reserved.
//

import Foundation
import UIKit

public extension UILabel {
    
    func setLocalized(key: String) {
        self.text = key.getLozalized()
    }
    
}
