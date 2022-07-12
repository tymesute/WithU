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
                        Image("CCLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaleEffect(0.6)
                        
                        //Our Mission
                        VStack(alignment: .leading, spacing: 12){
                            Text("📌 Our Mission")
                                .bold()
                            
                            Text("โปรเจค Crying Cloud มีเป้าหมายในการเพิ่มความเข้าถึงการรักษาภาวะซึมเศร้าที่เหมาะสม ให้กับวัยรุ่นไทยที่เสี่ยงซึมเศร้า โดยสามารถปรึกษาจิตแพทย์หรือนักฟังเชิงลึกออนไลน์ได้ทั่วประเทศ")
                        }.padding(.top)
                        
                        Divider()
                        
                        //Our Goals
                        /*VStack(alignment: .leading, spacing: 12){
                            Text("🎯 Our Goals")
                                .bold()
                            
                            //Change to Thai
                            Text("Connecting volunteer psychologists and therapists to Thai teens for an affordable price, or for free")
                            
                        }.padding(.top)*/
                        
                        Divider()
                        
                        //Our Audience
                        VStack(alignment: .leading, spacing: 12){
                            Text("🧠 Our Audience")
                                .bold()
                            
                            Text("กลุ่มวัยรุ่น นักเรียน นักศึกษา รวมถึงบุคคลทุกวัยที่มีความเครียด หรือเสี่ยงเป็นภาวะซึมเศร้า หรือมีภาวะซึมเศร้า โดยเน้นไปในกลุ่มวัยรุ่น เนื่องจาก เป็นกลุ่มที่มีความเสี่ยงของภาวะซึมเศร้า และอาจจะไม่กล้าาปรึกษาใคร หรือไม่กล้าไปพบจิตแพทย์ในช่วงแรก นวัตกรรมของทีมเราจะช่วยเป็นเหมือนเพื่อนใจของวัยรุ่น และมีทีมแพทย์มาช่วยสนับสนุน")
    
                        }.padding(.top)
                        
                        Divider()
                        
                        VStack(alignment: .leading, spacing: 12){
                            Text("✏️ About WithU")
                                .bold()
                            
                            Text("แอพพลิเคชั่น WithÜ เป็นผลงานเล็กๆของโปรเจค Crying Cloud โดยมีวัตถุประสงค์ในการเติมกำลังใจให้กับชีวิตประจำวันของคุณผ่านวิดเจ็ตรูปภาพที่สุ่มแสดงคำเพิ่มพลังใจจาก Creator และ Local Artist ในประเทศไทยที่ดังบนเพจ IG ")
    
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
                        
                        Divider()
                        
                    }.padding([.leading, .trailing])
                    
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
