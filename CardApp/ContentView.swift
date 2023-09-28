//
//  ContentView.swift
//  CardApp
//
//  Created by Sydney Burrell on 9/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card12"

       var playerScore = 0
       var cpuScore = 0
    
    var body: some View {
        ZStack {//allows you to place items on top of each other
                    Image("background-plain")
                        .resizable()//resizes image to fit the screen
                        .ignoresSafeArea()//covers the full container of the iphone and ignores the safe area
                    VStack {
                        Spacer()
                        Image("logo")
                        Spacer()
                        HStack {
                            Spacer()
                            Image(playerCard)
                            Spacer()
                            Image(cpuCard)
                            Spacer()
                        }
                        Spacer()
                        Button {
                            deal()
                        } label: {
                            Image("button")
                        }
                        Spacer()
                        HStack {
                            Spacer()
                            VStack {
                                Text("Player")
                                    .font(.headline)
                                    .padding(.bottom, 10.0)
                                Text("0")
                                    .font(.largeTitle)
                            }
                            Spacer()
                            VStack {
                                Text("CPU")
                                    .font(.headline)
                                    .padding(.bottom, 10.0)
                                Text("0")
                                    .font(.largeTitle)
                            }
                            Spacer()
                        }
                        .foregroundColor(.white)//apply it to the Hstack and everything inside will do it
                        Spacer()
                    }
                }
            }
    func deal() {
        print("dealing cards")
        //randomize the players card
        playerCard = "card" + String(Int.random(in: 2...14))
        //randomize cpu card
        cpuCard = "card" + String(Int.random(in: 2...14))
        //update the score
        
    }
        }
     
//below is just for preview purposes does not get compiled
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
