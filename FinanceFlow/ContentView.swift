import SwiftUI

struct ContentView: View {
    @State private var totalSum = 0
    @State private var inputSum = 0
    var body: some View {
        VStack {
            
            NavigationView {
                Text("\(totalSum)")
                    .navigationBarTitle(Text("Finance"),
                                        displayMode: .inline)
                    .navigationBarItems(trailing:
                                            Button("Help")
                                        {print("Help")})
                    .navigationBarItems(trailing:
                                            Button("Edit")
                                        {print("Edit")})
                    .navigationBarItems(leading:
                                            Button("Settings")
                                        {print("Settings")})
            }
            
            List {
                
            }
            
            TextField("Введите значение", value: $inputSum, formatter: NumberFormatter()) {
            }
            .keyboardType(.decimalPad)
            .textFieldStyle(.roundedBorder)
            .padding()
            
            HStack{
                Button("Minus"){
                    totalSum -= inputSum
                    print("\(totalSum)")
                    inputSum = zero()
                }
                .padding()
                Spacer()
                
                Button("Plus"){
                    totalSum += inputSum
                    print("\(totalSum)")
                    inputSum = zero()
                }
                .padding()
            }
        }
    }
    func zero() -> Int {
        return 0
    }
}
        
#Preview {
    ContentView()
}

