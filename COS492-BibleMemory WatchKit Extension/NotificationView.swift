//
//  NotificationView.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 12/28/20.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack {
//            Image("white-bible-icon_4")
//                .resizable()
//                .frame(width: 70.0, height: 60.0)
            
            Text("DAILY REMINDER")
                .multilineTextAlignment(.center).foregroundColor(.accentColor)
            Divider()
            Text("Review Scripture")
                .multilineTextAlignment(.center)
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["Apple Watch Series 3 - 38mm", "Apple Watch Series 6 - 44mm"],
                id: \.self) {
            deviceName in NotificationView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
