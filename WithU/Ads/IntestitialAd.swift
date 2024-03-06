//
//  IntestitialAd.swift
//  WithU
//
//  Created by Tyme Suteesopon on 18/7/2566 BE.
//

import GoogleMobileAds
import SwiftUI
import UIKit

final class Interstitial:NSObject, GADFullScreenContentDelegate {
    var interstitial:GADInterstitialAd?
    
    override init() {
        super.init()
        self.loadInterstitial()
    }
    
    func loadInterstitial(){
        let request = GADRequest()
        GADInterstitialAd.load(withAdUnitID:"ca-app-pub-7908551774905830/9921425696",
                               request: request,
                               completionHandler: { [self] ad, error in
            if let error = error {
                print("Failed to load interstitial ad with error: \(error.localizedDescription)")
                return
            }
            interstitial = ad
            interstitial?.fullScreenContentDelegate = self
        })
    }
    
    func showAd() {
        if let interstitial = self.interstitial {
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
               let rootViewController = windowScene.windows.first?.rootViewController {
                interstitial.present(fromRootViewController: rootViewController)
            } else {
                print("Failed to get a valid window scene or root view controller.")
            }
        } else {
            print("Not Ready")
        }
    }

    func adDidDismissFullScreenContent(_ ad: GADFullScreenPresentingAd) {
        print("Ad did dismiss full screen content.")
        self.loadInterstitial()
    }
    
}
