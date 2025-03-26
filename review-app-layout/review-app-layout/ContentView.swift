//
//  ContentView.swift
//  Lesson2
//
//  Created by Trinity Ryan on 2025-02-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let lightPink = Color(red: 0.5, green: 0.0, blue: 0.01, opacity: 0.2)
                
        ZStack{
            lightPink
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20.0) {
                Image("rosebouquet")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                HStack {
                    Text("Valentine's Roses")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    VStack {
                        HStack {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                        }
                        Text("(Reviews 361)")
                    }
                    .foregroundColor(.orange)
                    .font(.caption)
                }
                
                Text("Build a beautiful bouquet for your loved one this valentines day.")
                
                HStack {
                    Spacer()
                    Image(systemName: "camera.macro.circle")
                    Image(systemName: "heart")
                    
                }
                .foregroundColor(.gray)
                .font(.caption)
                
                    
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(.white)
                .cornerRadius(15)
                .shadow(radius: 15))
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
