//
//  SettingsView.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 1/4/21.
//

//ADD ME: Daily notification toggle SHOULD have functionality (i.e. control daily push notifications/reminders

import SwiftUI

struct SettingsView: View {
    @State private var isNotifOn: Bool = false
    
    var body: some View {
        VStack {
            NotificationToggle(isNotifOn: $isNotifOn)
        }
        .navigationTitle(Text("Settings")) //CHECK ME: change string?
    }
}

struct NotificationToggle: View {
    @Binding var isNotifOn: Bool

    var body: some View {
        VStack {
            Toggle(isOn: $isNotifOn) {
                Image(systemName: "clock.arrow.circlepath").foregroundColor(isNotifOn ? .green : .white)
                
                Text("Daily").foregroundColor(.white)
            }
            .padding(.vertical, 3.0).foregroundColor(isNotifOn ? .green : .gray)
            .padding(.trailing, 5.0)
            
            Divider()
                .background(Color.gray).frame(width: 200.0, height: 1.0)
        }
        
        Spacer()
    }
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["Apple Watch Series 3 - 38mm", "Apple Watch Series 6 - 44mm"],
                id: \.self) {
            deviceName in SettingsView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
