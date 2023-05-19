//
//  ContentView.swift
//  View_Sketch
//
//  Created by 신상용 on 2023/05/05.
//

import SwiftUI



struct ContentView: View {
    
    @State private var currentLine:[CGPoint] = []
    @State private var lines: [[CGPoint]] = []
    var body: some View {
        VStack {
            
            Canvas { context, size in
                for line in lines {
                    var path = Path()
                    path.addLines(line)
                    context.stroke(path, with: .color(Color.black), lineWidth: 2)
                }
                
                
                
            }.gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
            .onChanged({value in
                let newPoint = value.location
                currentLine.append(newPoint)
                self.lines.append(currentLine)
            })
                .onEnded({value in
                    self.currentLine = []
                })
            )
            .background(Color.gray)
            .cornerRadius(20)
            .frame(width: 329, height: 219)
        }
        .frame(minWidth:400, minHeight: 400)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
