//
//  MainView.swift
//  CryingCloud
//
//  Created by E2318556 on 12/4/2565 BE.
//

import SwiftUI
import GoogleMobileAds

//Note for next update
//Update marketing URL with app ads.txt
//Edit description (แก้ widget)

struct HomeView: View {
    
    @State var manualSheet = false
    @State var aboutUsSheet = false
    @State var random: String = ""
    @State var isSaved: Bool = false
    
    private var fullScreenAd: Interstitial?
    init() {
        fullScreenAd = Interstitial()
    }
    
    var body: some View {
        
        NavigationView{
            ZStack{
                
                //Background
                Image("Background3")
                    .resizable()
                    .ignoresSafeArea()
                    .opacity(0.5)
                
                VStack{
                    QuoteView(random: $random)
                        .cornerRadius(30)
                        .scaledToFit()
                        .shadow(color: .black, radius: 3, x: 3, y: 3)
                        .padding(.bottom)
                    
                    BannerAd(unitID: "ca-app-pub-8151989852233593/2545645970")
                        .frame(height: 50)
                }
                .padding([.leading, .trailing], 25)
                .padding(.bottom, 150)
                
                //Reload button
                VStack{
                    ZStack{
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
                        .shadow(color: .black, radius: 3, x: 3, y: 3)
                        .padding()
                        .padding([.leading, .trailing, .top])
                    }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                    
                    
                    
                    //Save to library button
                    Button(action:{
                        self.isSaved = true
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                            self.fullScreenAd?.showAd()
                            self.isSaved = false
                        }
                        let pic = QuoteView(random: $random).snapshot()
                        
                        UIImageWriteToSavedPhotosAlbum(pic, nil, nil, nil)
                    }){
                        if !isSaved{
                            if #available(iOS 16.0, *) {
                                HStack {
                                    Text("Save to library")
                                    Image(systemName: "square.and.arrow.down")
                                }.fontWeight(.bold)
                            } else {
                                // Fallback on earlier versions
                            }
                        }else{
                            Text("✅")
                        }
                    }
                    
                }.onAppear {
                    GADMobileAds.sharedInstance().start(completionHandler: nil)
                }
                
            }.onAppear{
                self.random = chooseRandomImage()
            }
            .navigationTitle("WithU")
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
    
    func showInterstitialAd() {
        let adUnitID = "ca-app-pub-3940256099942544/4411468910"
        let request = GADRequest()
        
        GADInterstitialAd.load(withAdUnitID: adUnitID, request: request) { (ad, error) in
            if let error = error {
                print("Failed to load interstitial ad with error: \(error.localizedDescription)")
                return
            }
            
            if let interstitial = ad {
                interstitial.present(fromRootViewController: (UIApplication.shared.windows.first?.rootViewController)!)
            } else {
                print("Failed to create interstitial ad.")
            }
        }
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

