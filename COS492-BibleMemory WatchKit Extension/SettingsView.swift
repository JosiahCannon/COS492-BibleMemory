//
//  SettingsView.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 1/4/21.
//

import SwiftUI
import UserNotifications

func scheduleDaily(inputBool: Bool) {
    let notifBool: Bool = inputBool
    
    let content = UNMutableNotificationContent()
    content.title = "Daily Reminder"
    content.body = "Review Scripture today!"
    content.sound = UNNotificationSound.default

    var dateComponents = DateComponents()
    dateComponents.hour = 19
    dateComponents.minute = 47
    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
    //let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false) //REMOVE ME - DEBUG
    
    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
    
    if(notifBool) {
        print("DEBUG1 notifBool: \(notifBool)") //DEBUG
        UNUserNotificationCenter.current().add(request)
    }
    else {
        print("DEBUG2 notifBool: \(notifBool)") //DEBUG
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
    }
}

struct SettingsView: View {
    @AppStorage("Authorized") private var isAuthorized: Bool = false
    @AppStorage("Daily") private var isNotifOn: Bool = false

    func authorizeNotifs() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
            if success {
                isAuthorized = true
                print("User Accepted")
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
    }
    
    var body: some View {
        VStack {
            if(!isAuthorized) {
                Button("Authorize Notifications") {
                    authorizeNotifs()
                }.padding(.top, 5.0).foregroundColor(.green).multilineTextAlignment(.center)
            }
            
            if(isAuthorized) {
                NotificationToggle(isNotifOn: $isNotifOn)
            }
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
            }.onChange(of: isNotifOn, perform: { value in
                print("DEBUG isNotifOn: \(isNotifOn)")
                scheduleDaily(inputBool: isNotifOn)
            })
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
