//
//  ContentView.swift
//  SQLite_practice
//
//  Created by 신상용 on 2023/05/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            databaseview()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
