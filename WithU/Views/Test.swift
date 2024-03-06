import SwiftUI

struct TestView: View {
    @State private var isShowingPopup = false
    
    var body: some View {
        VStack {
            Button(action: {
                isShowingPopup = true
            }) {
                Text("Press Me")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
            .padding()
            .overlay(
                Group {
                    if isShowingPopup {
                        Color.clear
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    isShowingPopup = false
                                }
                            }
                            .background(
                                withAnimation {
                                    Text("Button Pressed!")
                                        .font(.title)
                                        .padding()
                                        .background(Color.yellow)
                                        .cornerRadius(10)
                                        .transition(.scale)
                                }
                            )
                    }
                }
            )
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
