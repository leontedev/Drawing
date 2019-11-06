//
//  InsettableShape.swift
//  Drawing
//
//  Created by Mihai Leonte on 06/11/2019.
//  Copyright © 2019 Mihai Leonte. All rights reserved.
//

import SwiftUI

struct InsetArc: InsettableShape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool
    var insetAmount: CGFloat = 0

    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment

        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2 - insetAmount, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)

        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arc = self
        arc.insetAmount += amount
        return arc
    }
}

struct InsettableShapeView: View {
    var body: some View {
        
//        Circle()
//            //.stroke(Color.blue, lineWidth: 40)
//            // MARK: Stroke the inside of the circle
//            .strokeBorder(Color.blue, lineWidth: 40)
        
        ZStack {
            InsetArc(startAngle: .degrees(-90), endAngle: .degrees(90), clockwise: true)
            //.strokeBorder(Color.blue, lineWidth: 40)
                .stroke(Color.gray, style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                .frame(width: 300)
            
            InsetArc(startAngle: .degrees(-90), endAngle: .degrees(40), clockwise: true)
            //.strokeBorder(Color.blue, lineWidth: 40)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                .frame(width: 300)
            
            Text("160k / 250k").font(.system(size:40))
        }
    }
}

struct InsettableShape_Previews: PreviewProvider {
    static var previews: some View {
        InsettableShapeView()
    }
}
