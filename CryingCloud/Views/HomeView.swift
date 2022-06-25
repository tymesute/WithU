//
//  MainView.swift
//  CryingCloud
//
//  Created by E2318556 on 12/4/2565 BE.
//

import SwiftUI

struct HomeView: View {
    @State var showingSheet = false
    @State var isShareSheetShowing: Bool = false
    @State var random: String = ""

    
    var body: some View {
        NavigationView{
            ZStack{
                //Beige background
                Rectangle()
                    .fill(Color(red: 238/255, green: 235/255, blue: 227/255))
                    .ignoresSafeArea()
                
                VStack{
                    QuoteView(random: $random)
                        .cornerRadius(30)
                }
                .scaledToFit()
                .shadow(color: .black, radius: 2, x: 3, y: 3)
                .padding([.leading, .trailing], 25)
                .padding(.bottom, 120)
                
                
                //Reload button
                ZStack{
                    HStack {
                        Button(action: {
                            self.random = chooseRandomImage()
                        }){
                            
                            
                            Image(systemName: "goforward")
                                .font(.title)
                                .foregroundColor(Color(UIColor(named: "newPurple")!))
                        }
                        .frame(width: 80, height: 80)
                        .background(.white)
                        .cornerRadius(100)
                        .contextMenu{
                            VStack{
                                Button(action:{
                                    //
                                }){
                                    Text("Share")
                                    Image(systemName: "square.and.arrow.up")
                                }
                                
                                Button(action:{
                                    let pic = QuoteView(random: $random).snapshot()
                                    
                                    UIImageWriteToSavedPhotosAlbum(pic, nil, nil, nil)
                                }){
                                    Text("Save quote to library")
                                    Image(systemName: "square.and.arrow.down")
                                }
                            }
                        }.shadow(color: .black, radius: 2, x: 3, y: 3)
                        .padding()
                        
                    }.padding()
                   
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                    .padding()
                
                        
            }.onAppear{
                self.random = chooseRandomImage()
            }
            .navigationTitle("Crying Cloud")
            
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.leading, -70)
                }
                
                ToolbarItem(placement: .navigationBarTrailing){
                    
                    Button(action: {showingSheet.toggle()}){
                        Image(systemName: "questionmark")
                            .foregroundColor(Color(UIColor(named: "newPurple")!))
                            .scaleEffect(1.2)
                            
                    }.sheet(isPresented: $showingSheet) {
                        
                    }
                }
                
            }
        }
    }
    
    /*func shareButton() {
        isShareSheetShowing.toggle()
        
        let url = URL(string: "https://youtu.be/EBc1OjRrJjs")
        let av = UIActivityViewController(activityItems: [url!], applicationActivities: nil)
        
        UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
    }*/
    
    func chooseRandomImage() -> String {
        let array = images
        
        let result = array.randomElement()!
        
        return result
    }
    
    var images = ["1", "2", "3", "4", "5"]
    
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
