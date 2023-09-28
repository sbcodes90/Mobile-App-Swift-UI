//
//  ContentView.swift
//  CardApp
//
//  Created by Sydney Burrell on 9/27/23.
//

import SwiftUI

struct ContentView: View {
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
                            Image("card7")
                            Spacer()
                            Image("card12")
                            Spacer()
                        }
                        Spacer()
                            Image("button")
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
        }
     
//below is just for preview purposes does not get compiled
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
