//
//  EngManualView.swift
//  WithU
//
//  Created by Tyme Suteesopon on 9/7/2567 BE.
//

import SwiftUI

struct EngManualView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Rectangle()
                    .fill(Color(red: 238/255, green: 235/255, blue: 227/255))
                    .ignoresSafeArea()
                
                ScrollView{
                    VStack{
                        VStack(alignment: .leading, spacing: 15){
                            Text("How to add widgets to your Home Screen")
                                .bold()
                            
                            Text("1. From the Home Screen, touch and hold a widget or an empty area until the apps jiggle.")
                            
                            Text("2. Tap the '+' button in the upper-left corner.")
                            
                            Text("3. Select a widget, choose a widget size, then tap Add Widget.")
                            
                            Text("4. Tap Done.")
                            
                            /*BannerAd(unitID: "ca-app-pub-2443039340976059/5649210010")
                             .frame(height: 50)*/
                        }.padding(.top)
                        
                        
                        Image("Widget")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 400)
                            .padding([.top, .bottom])
                        
                        Text("To select English Widgets, scroll to your preferred language of choice.")
                        
                        Image("Widget2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 400)
                            .padding([.top, .bottom])
                        
                        Divider()
                        
                        
                        VStack(alignment: .leading, spacing: 15){
                            Text("How to remove widgets:")
                                .bold()
                                .padding(.top)
                            
                            Text("1. Touch and hold the widget that you want to remove.")
                            
                            Text("2. Tap Remove Widget.")
                            
                            Text("3. Tap Remove again to confirm.")
                        }.padding(.bottom)
                        
                        Text("ข้อมูลจาก Apple")
                            .font(.caption)
                        
                        /*BannerAd(unitID: "ca-app-pub-2443039340976059/5649210010")
                         .frame(height: 50)*/
                        
                    }.padding([.leading, .trailing], 25)
                    
                }
                
                
            }.navigationTitle("Manual")
        }
        
    }
    
}

#Preview {
    EngManualView()
}
