//
//  ContentView.swift
//  Drawing
//
//  Created by Mihai Leonte on 06/11/2019.
//  Copyright © 2019 Mihai Leonte. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    
    
    var body: some View {
        
        // MARK: Day 43
        //CustomPathView()
        //CustomShapeView()
        //ArcView()
        //InsettableShapeView()
        
        // MARK: Day 44
        //FlowerView()
        //CreativeBorders()
        //DrawingGroupView()
        
        // MARK: Day 45
        //BlendingView()
        //AnimatingShapes()
        //AnimatablePair()
        //SpirographView()
        
        // MARK: Day 46 - Challenges
        ArrowView()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CustomPathView()
            CustomShapeView()
            ArcView()
            
            FlowerView()
            CreativeBorders()
            DrawingGroupView()
            
            BlendingView()
            //AnimatingShapes()
            AnimatablePair()
            SpirographView()
        }
    }
}
