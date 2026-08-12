@testable import InputAutoSwitcher
import Testing

@Suite("Project setup")
struct ProjectSetupTests {
  @Test("Content view can be created")
  func contentViewCanBeCreated() {
    _ = ContentView()
  }
}
