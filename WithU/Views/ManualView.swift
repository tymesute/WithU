//
//  InfoView.swift
//  CryingCloud
//
//  Created by E2318556 on 24/6/2565 BE.
//

import SwiftUI

struct ManualView: View {
    var body: some View {
        
        NavigationView{
                ZStack{
                    Rectangle()
                        .fill(Color(red: 238/255, green: 235/255, blue: 227/255))
                        .ignoresSafeArea()
                    
                    ScrollView{
                        VStack{
                            VStack(alignment: .leading, spacing: 15){
                                Text("เพิ่มวิดเจ็ตไปยังหน้าจอโฮมของคุณ")
                                    .bold()
                                                        
                                Text("1. ไปที่หน้าของหน้าจอโฮมที่คุณต้องการเพิ่มวิดเจ็ต แล้วแตะพื้นหลังของหน้าจอโฮมค้างไว้จนแอปเริ่มสั่น")
                                
                                Text("2. แตะ '+' ปุ่มเพิ่มวิดเจ็ต ที่ด้านบนสุดของหน้าจอเพื่อเปิดแกลเลอรี่วิดเจ็ต")
                                
                                Text("3. เลื่อนหรือค้นหาเพื่อหาวิดเจ็ตที่คุณต้องการ แตะวิดเจ็ตนั้น แล้วปัดซ้ายและขวาผ่านตัวเลือกขนาด ขนาดที่แตกต่างกันจะแสดงข้อมูลต่างกัน")
                                
                                Text("4. เมื่อคุณเห็นขนาดที่คุณต้องการ ให้แตะ เพิ่มวิดเจ็ต")
                                
                                Text("5. ในระหว่างที่แอปยังคงสั่นอยู่ ให้ย้ายวิดเจ็ตไปยังตำแหน่งที่คุณต้องการบนหน้าจอ จากนั้นแตะ เสร็จสิ้น")
                                
                                BannerAd(unitID: "ca-app-pub-2443039340976059/5649210010")
                                    .frame(height: 50)
                                
                            }.padding(.top)

                            
                            Image("Widget")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 400)
                                .padding([.top, .bottom])
                            
                            Divider()
                            
                            
                            VStack(alignment: .leading, spacing: 15){
                                Text("เอาวิดเจ็ตออกจากหน้าจอโฮม:")
                                    .bold()
                                    .padding(.top)
                                
                                Text("1. แตะวิดเจ็ตค้างไว้เพื่อเปิดเมนูการทำงานด่วน")
                                
                                Text("2. แตะ เอาวิดเจ็ตออก (หรือ เอาวิดเจ็ตซ้อนออก) แล้วแตะ เอาออก")
                            }.padding(.bottom)
                            
                            Text("ข้อมูลจาก Apple")
                                .font(.caption)
                            
                            BannerAd(unitID: "ca-app-pub-2443039340976059/5649210010")
                                .frame(height: 50)
                            
                        }.padding([.leading, .trailing], 25)
                        
                    }
                    
                    
                }.navigationTitle("Manual")
        }
        
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        ManualView()
    }
}
