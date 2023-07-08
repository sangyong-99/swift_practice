import SwiftUI
import CoreLocation

struct ContentView: View {
    let location = CLLocation(latitude: coordinate.latitude, longitude: coordinate.longitude)
    let geocoder = CLGeocoder()
    let locale = Locale(identifier: "Ko-kr")
    
    var body: some View {
        geocoder.reverseGeocodeLocation(findLocation, preferredLocale: locale) { [weak self] placemarks, _ in
            guard let placemarks = placemarks,
                  let address = placemarks.last
            else { return }
            DispatchQueue.main.async {
                self?.=-----label.text = "" //하고싶은 액션 적기
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
