import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                Text("Welcome")
                    .navigationBarTitle(Text("Finance"),
                                        displayMode: .inline)
                    .navigationBarItems(trailing:
                                            Button("Help")
                                        {print("Help")})
                    .navigationBarItems(trailing:
                                            Button("Edit")
                                        {print("Edit")})
            }
            Button {
                print("button")
            } label: {
                Text("Button")
            }

        }
    }
}
    
#Preview {
    ContentView()
}
