//
//  AppDelegateAdaptor.swift
//  Myanmar Song Book
//
//  Created by Aung Ko Min on 9/5/22.
//

import SwiftUI

class AppDelegateAdaptor: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            withAnimation {
                if AppState.shared.userState == .launchAnimation {
                    AppState.shared.userState = .loggedIn
                }
            }
        }

        return true
    }

    func applicationWillTerminate(_ application: UIApplication) {
        Persistence.shared.save()
    }
}