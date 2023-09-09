import SwiftUI
import CoreLocation

struct ContentView: View {
    
    var body: some View {
        Image(uiImage: UIImage(systemName: "person.fill")!)
            .resizable()
            .scaledToFit()
            .frame(width: 74, height: 74)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
