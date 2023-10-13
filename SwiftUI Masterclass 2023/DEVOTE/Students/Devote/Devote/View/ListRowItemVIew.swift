//
//  ListRowItemVIew.swift
//  Devote
//
//  Created by 신상용 on 2023/08/14.
//

import SwiftUI

struct ListRowItemVIew: View {
    @Environment(\.managedObjectContext) var viewContext
    @ObservedObject var item: Item
    
    var body: some View {
        Toggle(isOn: $item.completion) {
            Text(item.task ?? "")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(item.completion ? Color.pink : Color.primary)
                .padding(.vertical, 12)
                .animation(.default)
        } //: TOGGLE
        .toggleStyle(CheckboxStyle())
        .onReceive(item.objectWillChange, perform: {_ in
            if self.viewContext.hasChanges {
                try? self.viewContext.save()
            }
        })
    }
}

