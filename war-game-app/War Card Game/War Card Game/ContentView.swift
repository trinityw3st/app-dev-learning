//
//  ContentView.swift
//  War Card Game
//
//  Created by Trinity Ryan on 2025-02-20.
//

import SwiftUI

struct ContentView: View {
    
    //property wrapper @State to declare a variable that other parts of the code depend on
    @State var playerCard = "back"
    @State var cpuCard = "back"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background-plain")
            VStack{
                Spacer()
                
                Image("logo")

                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                .cornerRadius(10)
                
                Spacer()
                
                Button{
                    deal()
                } label: {
                    Image("button")
                }
                
                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    VStack{
                        Text("Player")
                            .fontWeight(.semibold)
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .fontWeight(.semibold)
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
                Spacer()
                
            }
        }
        
    }
    
    func deal() {
        // Randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize the cpus card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // update the scores
        if playerCardValue > cpuCardValue {
            
            //Add 1 to player score
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            //add 1 to cpu score
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
