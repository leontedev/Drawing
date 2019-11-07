//
//  BlendingView.swift
//  Drawing
//
//  Created by Mihai Leonte on 07/11/2019.
//  Copyright © 2019 Mihai Leonte. All rights reserved.
//

import SwiftUI

struct BlendingView: View {
    @State private var amount: CGFloat = 0.0
    
    
    var body: some View {
//        ZStack {
//            Image("Example")
//
//            Rectangle()
//                .fill(Color.green)
//                .blendMode(.multiply)
//        }
//        .frame(width: 340, height: 500)
//        .clipped()
        
//        Image("Example")
//            .colorMultiply(.yellow)
        
        
        VStack {
                ZStack {
                    Circle()
                        .fill(Color.red)
                        .frame(width: 200 * amount)
                        .offset(x: -50, y: -80)
                        .blendMode(.screen)

                    Circle()
                        .fill(Color.green)
                        .frame(width: 200 * amount)
                        .offset(x: 50, y: -80)
                        .blendMode(.screen)

                    Circle()
                        .fill(Color.blue)
                        .frame(width: 200 * amount)
                        .blendMode(.screen)
                }
                .frame(width: 300, height: 300)
            
                Image("Example")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .saturation(Double(amount))
                    .blur(radius: (1 - amount) * 20)

                Slider(value: $amount)
                    .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
            .edgesIgnoringSafeArea(.all)
        }
    
}

struct BlendingView_Previews: PreviewProvider {
    static var previews: some View {
        BlendingView()
    }
}
