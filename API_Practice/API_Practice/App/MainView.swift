//
//  MainView.swift
//  API_Practice
//
//  Created by 신상용 on 2023/06/18.
//

import SwiftUI

struct MainView: View {
  var body: some View {
    TabView {
      ContentView()
        .tabItem {
          Image(systemName: "square.grid.2x2")
          Text("Browse")
        }
      
      
      MapView()
        .tabItem {
          Image(systemName: "map")
          Text("Locations")
        }
      
      GuideLineView()
        .tabItem {
          Image(systemName: "photo")
          Text("Gallery")
        }
    } //: TAB
  }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
