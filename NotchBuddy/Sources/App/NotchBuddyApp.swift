import SwiftUI
import AppKit

@main
struct MauMauApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        Settings {
            SettingsView()
        }
        #if !APPSTORE
        .commands {
            // ⌘, and MauMau → Settings… open the notch's pages of the MauMau window.
            CommandGroup(replacing: .appSettings) {
                Button(NSLocalizedString("Settings…", comment: "")) {
                    delegate.openSettings()
                }
                .keyboardShortcut(",")
            }
        }
        #endif
    }
}
