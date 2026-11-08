import Foundation

struct plus: Identifiable {
    let Name: String
    let id = UUID()
    var price: Decimal
    var description: String
}

struct minus: Identifiable {
    let Name: String
    let id = UUID()
    var price: Decimal
    var description: String
}
