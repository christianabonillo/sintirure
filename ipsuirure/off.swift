import SwiftUI

struct FlagLabel: View {
    var label: String
    var color: Color
    
    var body: some View {
        Text(label)
            .padding()
            .background(color)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            FlagLabel(label: "USA", color: .red)
                .containerRelativeShape(Rectangle())
            FlagLabel(label: "UK", color: .blue)
                .containerRelativeShape(Capsule())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
