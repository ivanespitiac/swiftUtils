//
//  String.swift
//  iOSUtils
//
//  Created by Ivan Espitia on 27/01/20.
//  Copyright © 2020 Ivan Espitia. All rights reserved.
//

import Foundation

public extension String {
    
    func removeSpaces() -> String {
        return self.replacingOccurrences(of: " ", with: "")
    }
    
    func isBlank() -> Bool {
        return self.removeSpaces().isEmpty
    }
    
    func toDate(format: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.date(from: self) ?? Date()
    }
    
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
    }
    
    var isNumber: Bool {
        return !isEmpty && rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
    }
    
    /**
     Localized string
     */
    
    func getLozalized() -> String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
    
}
