//
//  ContentView.swift
//  CryingCloud
//
//  Created by E2318556 on 30/3/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        //UITabBar.appearance().barTintColor = UIColor.white

        }

    var body: some View {
    
        //TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "quote.bubble.fill")
                    Text("Quotes")
                }
            
            /*AboutView()
                .tabItem {
                    Image(systemName: "cloud.fill")
                    Text("About Us")
                }*/
            
            
        //}
        //.accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
