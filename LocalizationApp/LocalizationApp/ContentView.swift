//
//  ContentView.swift
//  LocalizationApp
//
//  Created by 水越成美 on 2020/09/24.
//  Copyright © 2020 水越成美. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.locale, Locale(identifier: "en"))
            ContentView()
                .environment(\.locale, Locale(identifier: "ja"))
        }
    }
}
