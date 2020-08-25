//
//  ContentView.swift
//  MapApp
//
//  Created by 水越成美 on 2020/08/25.
//  Copyright © 2020 水越成美. All rights reserved.
//
import MapKit
import SwiftUI

// 古いフレームワーク(MapKir)をSwiftUIに橋渡しするためのコード
struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        return MKMapView()
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
    }
}
struct ContentView: View {
    var body: some View {
        MapView()
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
