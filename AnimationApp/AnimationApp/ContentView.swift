//
//  ContentView.swift
//  AnimationApp
//
//  Created by Evgeniy Safin on 29.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var pulseValue = 1.0
    @State var potato: Double = 0
    
    var body: some View {
        
        ZStack {
//            Image("Untitled")
//                .ignoresSafeArea()
            
            
            VStack {
//                Text("about me").font(.largeTitle)
//                    .fontWeight(.black)
//                    .foregroundColor(Color.red)
//                    .multilineTextAlignment(.center)
//                    .padding()
                
//                Text("egor")
//                    .font(.largeTitle)
//                    .fontWeight(.black)
//                    .foregroundColor(Color.red)
//                    .multilineTextAlignment(.center)
//                    .padding()
                
                Button(action: {
                    self.pulseValue += 0.1
                    self.potato = 360
                    
                    
                    
                    
                }) {
                    
                    
                    ZStack {
                        
                        Circle()
                            .frame(width: 150, height: 150)
                            .foregroundColor(.red)
                        
                        Image(systemName: "circle.dashed.inset.filled")
                        //                            .scaleEffect(pulseValue)
                        //                            .animation(
                        //                                .linear(duration: 2)
                        //                                .repeatForever()
                        //                            )
                        
                            .foregroundColor(.black)
                            .font(.system(size: 144))
                        
                        
                            .rotationEffect(.degrees(potato))
                            .animation(
                                .linear(duration: 13)
                                .repeatForever()
                            )
                        
                        
                    }
                    .scaleEffect(pulseValue)
                    .animation(
                        .linear(duration: 2)
                        .repeatForever()
                    )
                }
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
