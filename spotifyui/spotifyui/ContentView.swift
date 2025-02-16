//
//  ContentView.swift
//  spotifyui
//
//  Created by Jesse Jiang on 2/9/25.
//

import SwiftUI

struct ContentView: View {
    @State private var time: Double = 0
    @State var shuffle: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(red: 0.831, green: 0.192, blue: 0.192), Color(red: 0.459, green: 0.137, blue: 0.137)]),startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Image(systemName: "chevron.down")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 24, height: 14)
                        .padding(.trailing, 100)
                    Text("Best Drake songs")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.trailing, 100)
                    Image(systemName: "ellipsis")
                        .resizable()
                        .frame(width: 20, height: 4)
                        .foregroundColor(.white)
                }
                Image("drake")
                    .resizable()
                    .frame(width: 350, height: 350)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.top, 50)
                    .padding(.bottom, 30)
                ZStack {
                    Text("Fancy")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 25))
                        .padding(.trailing, 290)
                    Image(systemName: "e.square.fill")
                        .foregroundColor(.gray)
                        .padding(.leading, 15)
                        .padding(.top, 60)
                    Text("Drake, T.I., Swizz Beatz")
                        .foregroundColor(.gray)
                        .fontWeight(.bold)
                        .font(.system(size: 16))
                        .padding(.trailing, 185)
                        .padding(.top, 60)
                    Image(systemName: "minus.circle")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .padding(.leading, 200)
                    Image(systemName: "plus.circle")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .padding(.leading, 300)
                }
                HStack {
                    Slider(value: $time, in: 0...6)
                    
                }
                HStack {
                    Image(systemName: "shuffle")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 26, height: 26)
                        .padding(.trailing, 30)
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 26, height: 32)
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 65, height: 65)
                        .padding(.leading, 30)
                        .padding(.trailing, 30)
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 26, height: 32)
                        .padding(.trailing, 30)
                    Image(systemName: "arrow.trianglehead.rectanglepath")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 26, height: 26)
                }
                .padding(.top, 20)
                .padding(.bottom, 20)
                HStack {
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 20, height: 20)
                        .padding(.trailing, 50)
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}

