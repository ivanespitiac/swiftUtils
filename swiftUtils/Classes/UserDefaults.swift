//
//  UserDefaults.swift
//  iOSUtils
//
//  Created by Ivan Espitia on 27/01/20.
//  Copyright © 2020 Ivan Espitia. All rights reserved.
//

import Foundation

public extension UserDefaults {
    
    /**
     Save custom object in user defaults (needs to be Codeable)
     */
    func save<T: Codable>(value: T, key: String, completion: @escaping((Bool)->Void)) {
        if let data = try? JSONEncoder().encode(value) {
            let json = String(data: data, encoding: String.Encoding.utf8)
            UserDefaults.standard.set(json, forKey: key)
            completion(true)
        } else {
            completion(false)
        }
    }
    
    /**
    Get custom object from user defaults (needs to be Codeable)
    */
    func get<T: Codable>(key: String) -> T? {
        var result: T? = nil
        if let json = UserDefaults.standard.string(forKey: key) {
            if let data = json.data(using: .utf8) {
                if let value = try? JSONDecoder().decode(T.self, from: data) {
                    result = value
                }
            }
        }
        return result
    }
    
}
