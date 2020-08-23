//
//  ContentView.swift
//  CounterApp
//
//  Created by 水越成美 on 2020/08/23.
//  Copyright © 2020 水越成美. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var number = 0
    var body: some View {
        VStack {
            ZStack {
                Image("counter")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("\(number)")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
            }
            // クロージャを省略して書かないと{() -> Void in self.number += 1}
            // Text("Button) は元は label: {Text("Button")} (トレイリングクロージャ)
            Button(action: {self.number += 1}){
                Text("カウント")
                    .foregroundColor(.white)
                    .padding(.all)
                    .background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
