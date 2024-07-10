//
//  EngAboutView.swift
//  WithU
//
//  Created by Tyme Suteesopon on 9/7/2567 BE.
//

import SwiftUI

struct EngAboutView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Rectangle()
                    .fill(Color(red: 238/255, green: 235/255, blue: 227/255))
                    .ignoresSafeArea()
                
                ScrollView{
                    VStack{
                        Image("CCLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaleEffect(0.6)
                        
                        //Our Mission
                        VStack(alignment: .leading, spacing: 12){
                            Text("📌 Our Mission")
                                .bold()
                            
                            Text("Crying Cloud, the parent organization of WithU, began with an aim to connect Thai teenagers struggling with mental health issues with volunteer psychologists and therapists at an affordable price, or for free.")
                            
                        
                        }.padding(.top)
                        
                        
                        Divider()
                        
                        //Our Audience
                        VStack(alignment: .leading, spacing: 12){
                            Text("🧠 Our Audience")
                                .bold()
                            
                            Text("Criny Cloud works with teenagers, students, and individuals of all ages who are experiencing stress, are at risk, or are currently experiencing depression. We hope to bridge the gap between those under these circumstances with professionals support that may not be widely available to everyone.")
    
                        }.padding(.top)
                        
                        /*BannerAd(unitID: "ca-app-pub-2443039340976059/5649210010")
                            .frame(height: 50)*/
                        
                        Divider()
                        
                        VStack(alignment: .leading, spacing: 12){
                            Text("✏️ About WithU")
                                .bold()
                            
                            Text("WithU, is a Thai mental health app aimed at helping struggling teens by sending encouraging messages curated my local Thai digital artists through the app as well as through a widget.")
    
                        }.padding(.top)

                        Divider()
         
                        //Awards
                        VStack(alignment: .leading, spacing: 12){
                            Text("🏆 Awards")
                                .bold()
                            
                            Text("Prime Minister’s Health Innovation Award 2021 ")
                        }.padding(.top)
                                                
                    }.padding([.leading, .trailing])
                    
                    VStack(alignment: .leading){
                        Divider()
                        
                        VStack(alignment: .leading, spacing: 12){
                            Text("☎️ Contact Us")
                                .bold()
                            
                            Link("www.cryingcloud.org",
                                  destination: URL(string: "https://www.cryingcloud.org/")!)
                            
                            Text("Instagram: @CryingCloud_th")
                            Text("Facebook Page: CryingCloudth")
                            Text("Line OA: ")
                            Text("Line Group Chat: ")
                            Text("Email: cryingcloud.th@gmail.com")
                            
                        }.padding(.top)
                        
                        /*BannerAd(unitID: "ca-app-pub-2443039340976059/5649210010")
                            .frame(height: 50)*/
                        
                    }.padding([.leading, .trailing])
                    
                }.navigationTitle("About Us")
            }
        }
    }
}

#Preview {
    EngAboutView()
}
