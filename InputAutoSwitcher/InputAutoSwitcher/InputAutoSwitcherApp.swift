//
//  InputAutoSwitcherApp.swift
//  InputAutoSwitcher
//
//  Created by Eden on 2025/3/19.
//

import SwiftUI

@main
struct InputAutoSwitcherApp: App {
  let persistenceController = PersistenceController.shared

  var body: some Scene {
    WindowGroup {
      ContentView()
        .environment(\.managedObjectContext, persistenceController.container.viewContext)
    }
  }
}
