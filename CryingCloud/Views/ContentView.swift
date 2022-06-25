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
                    Image(systemName: "person.fill")
                    Text("Quotes")
                }
            
            InfoView()
                .tabItem {
                    Image(systemName: "doc.text.fill")
                    Text("Info")
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
