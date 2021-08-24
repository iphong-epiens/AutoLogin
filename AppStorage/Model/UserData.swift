//
//  UserData.swift
//  AppStorage
//
//  Created by Inpyo Hong on 2021/08/24.
//

import Foundation
import Combine

class UserData: ObservableObject {
   var isLoggedIn: Bool {
        get{
            UserDefaults.standard.bool(forKey: "isLoggedIn")
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "isLoggedIn")
        }
    }
}
