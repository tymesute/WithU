//
//  QuoteView.swift
//  CryingCloud
//
//  Created by E2318556 on 24/6/2565 BE.
//

import SwiftUI

struct QuoteView: View {
    @Binding var random: String
    
    var body: some View {
            Image(random)
            .resizable()
            .ignoresSafeArea()

    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
