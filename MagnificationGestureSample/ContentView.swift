//
//  ContentView.swift
//  MagnificationGestureSample
//
//  Created by MakeItSimple on 2020/02/25.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var scale: CGFloat = 1.0
    
    var body: some View {
        
        Image("Logo")
        .resizable()
        .scaleEffect(scale)
        .frame(width: 100, height: 100)
            // 확대 제스처 추가
        .gesture(MagnificationGesture().onChanged { value in
            self.scale = value.magnitude
        })
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
