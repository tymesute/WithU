//
//  AboutView.swift
//  CryingCloud
//
//  Created by E2318556 on 25/6/2565 BE.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Rectangle()
                    .fill(Color(red: 238/255, green: 235/255, blue: 227/255))
                    .ignoresSafeArea()
                
                ScrollView{
                    VStack{
                        Text("Hello World")
                        
                    }
                }.navigationTitle("About Us")
            }
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
