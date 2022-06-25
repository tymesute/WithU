//
//  ContentView.swift
//  CryingCloud
//
//  Created by E2318556 on 30/3/2565 BE.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        
        
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "quote.bubble.fill")
                    Text("Quotes")
                }
            
            AboutView()
                .tabItem {
                    Image(systemName: "cloud.fill")
                    Text("About Us")
                }
            
            
        }
        .accentColor(Color(UIColor(named: "newPurple")!))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
