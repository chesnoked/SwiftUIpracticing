//
//  ContentView.swift
//  MyFaceCardApp
//
//  Created by Evgeniy Safin on 20.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(red: 0.91, green: 0.30, blue: 0.24)
            //.ignoresSafeArea()
            VStack {
                Image("ava1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(.black)
                    )
                
                Text("Evgeniy Safin")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Text("iOS Developer")
                    .foregroundColor(.black)
                //.padding()
                Divider()
                Card(image: "phone.fill", message: "+7-999-616-37-64")
                Card(image: "envelope.fill", message: "dreamspiritworld@gmail.com")
                /*RoundedRectangle(cornerRadius: 25)
                 .foregroundColor(.black)
                 .padding(.horizontal)
                 .frame(height: 55)
                 .overlay(
                 HStack {
                 Image(systemName: "phone.fill")
                 Text("+7-999-616-37-64") .foregroundColor(.white)
                 }
                 )*/
                
            } .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image: String
    let message: String
    var body: some View {
        
        RoundedRectangle(cornerRadius: 25)
            .foregroundColor(.black)
            .padding(.horizontal)
            .frame(height: 55)
            .overlay(
                HStack {
                    Image(systemName: image)
                    Text(message) .foregroundColor(.white)
                }
            )
        
    }
}
