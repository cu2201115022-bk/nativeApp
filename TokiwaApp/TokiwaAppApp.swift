//
//  TokiwaAppApp.swift
//  TokiwaApp
//
//  Created by 柏木万里 on 2026/11/19.
//

import SwiftUI

@main
struct TokiwaAppApp: App {
    var body: some Scene {
        WindowGroup {
            MainTab()
                .preferredColorScheme(.light)
        }
    }
}
