//
//  LoggedInView.swift
//  AppStorage
//
//  Created by Inpyo Hong on 2021/08/24.
//

import SwiftUI

struct LoggedInView: View {
    @EnvironmentObject var userData: UserData
//    @AppStorage("isLoggedIn") var isLoggedIn : Bool = UserDefaults.standard.bool(forKey: "isLoggedIn")

    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            if userData.isLoggedIn {
                Button(action: {
                    userData.isLoggedIn = false
                }) {
                    Text("로그아웃")
                }
            }
        }
    }
}

struct LoggedInView_Previews: PreviewProvider {
    static var previews: some View {
        LoggedInView()
    }
}
