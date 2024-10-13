//
//  QuotesNotification.swift
//  WithU
//
//  Created by Tyme Suteesopon on 19/9/2567 BE.
//

import Foundation
import UserNotifications

func allowNotification() {
    let current = UNUserNotificationCenter.current()
    
    current.getNotificationSettings(completionHandler: { (settings) in
        if settings.authorizationStatus == .notDetermined {
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                if success {
                    print("All set!")
                } else if let error {
                    print(error.localizedDescription)
                }
            }
        } else if settings.authorizationStatus == .denied {
            // Notification permission was previously denied, go to settings & privacy to re-enable
        } else if settings.authorizationStatus == .authorized {
            // Notification permission was already granted
        }
    })
}

func configureNotification() {
    let content = UNMutableNotificationContent()
    content.subtitle = notificationQuotes.randomElement() ?? "You got this!"
    content.sound = UNNotificationSound.default
    
    // show this notification one every hour
    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10800, repeats: true)
    
    // choose a random identifier
    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
    
    // add our notification request
    UNUserNotificationCenter.current().add(request)
}


