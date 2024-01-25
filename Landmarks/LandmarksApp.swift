import SwiftUI

@main
struct MountainsApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
        #if !os(watchOS)
        .commands {
            LandmarkCommands()
        }
        #endif
    }
}
