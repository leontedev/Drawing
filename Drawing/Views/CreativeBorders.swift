//
//  CreativeBorders.swift
//  Drawing
//
//  Created by Mihai Leonte on 06/11/2019.
//  Copyright © 2019 Mihai Leonte. All rights reserved.
//

import SwiftUI

struct CreativeBorders: View {
    var body: some View {
        //Text("Hello World").frame(width: 300, height: 300).border(ImagePaint(image: Image("Example"), scale: 0.2), width: 30)
        
        //Text("Hello World").frame(width: 300, height: 300).border(ImagePaint(image: Image("Example"), sourceRect: CGRect(x: 0, y: 0.25, width: 1, height: 0.5), scale: 0.1), width: 30)
        
        Capsule().strokeBorder(ImagePaint(image: Image("Example"), scale: 0.1), lineWidth: 20).frame(width: 300, height: 200)
    }
}

struct CreativeBorders_Previews: PreviewProvider {
    static var previews: some View {
        CreativeBorders()
    }
}
