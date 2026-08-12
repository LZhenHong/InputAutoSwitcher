import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(spacing: 12) {
      Image(systemName: "keyboard")
        .font(.system(size: 40))
        .foregroundStyle(.tint)

      Text("InputAutoSwitcher")
        .font(.title2)
        .fontWeight(.semibold)

      Text("Project setup is ready.")
        .foregroundStyle(.secondary)
    }
    .frame(minWidth: 420, minHeight: 260)
    .padding(24)
  }
}

#Preview {
  ContentView()
}
