//
//  NotificationTest.swift
//  WithU
//
//  Created by Tyme Suteesopon on 19/9/2567 BE.
//

import SwiftUI
import UserNotifications

struct NotificationTest: View {
    var body: some View {
        VStack {

        }.onAppear {
            allowNotification()
            configureNotification()
        }
    }
}

#Preview {
    NotificationTest()
}
