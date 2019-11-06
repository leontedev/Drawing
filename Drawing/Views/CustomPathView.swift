//
//  CustomPath.swift
//  Drawing
//
//  Created by Mihai Leonte on 06/11/2019.
//  Copyright © 2019 Mihai Leonte. All rights reserved.
//

import SwiftUI

struct CustomPathView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
            
            //to fix the top corner
            //path.addLine(to: CGPoint(x: 100, y: 300))
        }
        //.fill(Color.blue)
        //.stroke(Color.blue, lineWidth: 10)
        //to fix the top corner alternative: (and to do rounded corners)
        .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
    }
}

struct CustomPath_Previews: PreviewProvider {
    static var previews: some View {
        CustomPathView()
    }
}
