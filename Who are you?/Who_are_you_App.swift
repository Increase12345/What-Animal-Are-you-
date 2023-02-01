//
//  Who_are_you_App.swift
//  Who are you?
//
//  Created by Nick Pavlov on 1/31/23.
//

import SwiftUI

@main
struct Who_are_you_App: App {
    let summaryData = SummaryModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(summaryData)
        }
    }
}
