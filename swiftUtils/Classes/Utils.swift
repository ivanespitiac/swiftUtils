//
//  Utils.swift
//  iOSUtils
//
//  Created by Ivan Espitia on 27/01/20.
//  Copyright © 2020 Ivan Espitia. All rights reserved.
//

import Foundation
import UIKit

public class Utils {
    
    // Screen width.
    public static var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    // Screen height.
    public static var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    public static var isDebug: Bool {
        #if DEBUG
        return true
        #else
        return false
        #endif
    }
    
}
