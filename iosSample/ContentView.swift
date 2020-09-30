
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            CircleImageView()
            DetailCard()
        }.frame(minWidth: 0, maxWidth: .infinity,minHeight: 0, maxHeight: .infinity,alignment: .topLeading)
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
