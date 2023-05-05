//
//  ContentView.swift
//  View_Sketch
//
//  Created by 신상용 on 2023/05/05.
//

import SwiftUI

struct Line {
    var points = [CGPoint]()
    var color: Color = .black
    var lineWidth: Double = 2
    
}

struct ContentView: View {
    
    @State private var currentLine = Line()
    @State private var lines: [Line] = []
    var body: some View {
        VStack {
            
            Canvas { context, size in
                for line in lines {
                    var path = Path()
                    path.addLines(line.points)
                    context.stroke(path, with: .color(line.color), lineWidth: line.lineWidth)
                }
                
                
                
            }.gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
            .onChanged({value in
                let newPoint = value.location
                currentLine.points.append(newPoint)
                self.lines.append(currentLine)
            })
                .onEnded({value in
                    self.currentLine = Line(points: [])
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
