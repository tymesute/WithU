//
//  MainView.swift
//  CryingCloud
//
//  Created by E2318556 on 12/4/2565 BE.
//

import SwiftUI
import GoogleMobileAds


struct HomeView: View {
    
    @State var manualSheet = false
    @State var aboutUsSheet = false
    
    @State var isShareSheetShowing: Bool = false
    @State var random: String = ""
    
    
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.init(.black)]
        
        //Add Swiftfx package
        //UINavigationBar.appearance().largeTitleTextAttributes
    }
    
    var body: some View {
        
        NavigationView{
            ZStack{
                
                //Background
                Image("Background3")
                    .resizable()
                    .ignoresSafeArea()
                    .opacity(0.5)
                
                
                VStack(){
                    QuoteView(random: $random)
                        .cornerRadius(30)
                        .scaledToFit()
                        .shadow(color: .black, radius: 3, x: 3, y: 3)
                        .padding(.bottom)
                    
                    BannerAd(unitID: "ca-app-pub-3940256099942544/2934735716")
                        .frame(height: 50)
                }
                .padding([.leading, .trailing], 25)
                .padding(.bottom, 120)
                
                
                //Reload button
                ZStack{
                    HStack {
                        Button(action: {
                            self.random = chooseRandomImage()
                        }){
                            
                            Image(systemName: "goforward")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                        .frame(width: 75, height: 75)
                        .background(Color(red: 238/255, green: 235/255, blue: 225/255))
                        
                        
                        .clipShape(Circle())
                        .contentShape(.contextMenuPreview, Circle())
                        .contextMenu{
                            VStack{
                            
                                Button(action:{
                                    let pic = QuoteView(random: $random).snapshot()
                                    
                                    UIImageWriteToSavedPhotosAlbum(pic, nil, nil, nil)
                                }){
                                    Text("Save to library")
                                    Image(systemName: "square.and.arrow.down")
                                }
                                
                            }
                        }
                        .shadow(color: .black, radius: 3, x: 3, y: 3)
                        .padding()
                        
                        
                    }.padding()
                    
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                    .padding()
                
                
            }.onAppear{
                self.random = chooseRandomImage()
            }
            .navigationTitle("WithÜ")
            
            
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    
                    Button(action: {manualSheet.toggle()}){
                        Image(systemName: "questionmark")
                            .foregroundColor(.black)
                            .scaleEffect(1.2)
                        
                    }.sheet(isPresented: $manualSheet) {
                        ManualView()
                    }
                    
                    Button(action: {aboutUsSheet.toggle()}){
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.black)
                            .scaleEffect(1.2)
                    }.sheet(isPresented: $aboutUsSheet) {
                        AboutView()
                    }
                    
                }
                
            }
        }
    }
    
    func chooseRandomImage() -> String {
        let array = quotes
        
        let result = array.randomElement()!
        
        return result
    }
    
}

extension View {
    func snapshot() -> UIImage {
        let controller = UIHostingController(rootView: self)
        let view = controller.view
        
        let targetSize = controller.view.intrinsicContentSize
        view?.bounds = CGRect(origin: .zero, size: targetSize)
        view?.backgroundColor = .clear
        
        let renderer = UIGraphicsImageRenderer(size: targetSize)
        
        return renderer.image { _ in
            view?.drawHierarchy(in: controller.view.bounds, afterScreenUpdates: true)
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        
    }
}

