//
//  MapView.swift
//  API_Practice
//
//  Created by 신상용 on 2023/06/18.
//

import SwiftUI

struct MapView: View {
    @EnvironmentObject var coordinateToZscodeManager: CoordinateToZscodeManager
    
    var body: some View {
        VStack {
            Text((coordinateToZscodeManager.zscodeDatas?.documents[0].code)!)
        }
        .padding()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
