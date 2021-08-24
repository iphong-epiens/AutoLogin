//
//  ContentView.swift
//  AppStorage
//
//  Created by Inpyo Hong on 2021/08/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userData: UserData
    @AppStorage("isLoggedIn") var isLoggedIn : Bool = UserDefaults.standard.bool(forKey: "isLoggedIn")
    
    var body: some View {
        if isLoggedIn {
            LoggedInView()
        } else {
            AuthenticationView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
