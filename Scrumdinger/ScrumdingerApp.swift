//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Fitsyu  on 19/06/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
