//
//  ContentView.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 12/28/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack() {
                    //FIX ME: accent color red should be RGB: 136, 0, 27

                    Image("white-bible-icon_4")
                        .resizable()
                        .frame(width: 70.0, height: 60.0)
                    
                    NavigationLink(
                        destination: SelectVerseView(),
                        label: {
                            Image(systemName: "filemenu.and.selection")
                                .renderingMode(.original)
                                //.foregroundColor(Color(red: 0.533, green: 0.0, blue: 0.106))
                            Text("Select Verse")
                                .lineLimit(1)
                        Spacer()
                    })
                    
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) { //ADD ME: ADD ACTION HERE (go to random verse's detailView
                        HStack {
                            Image(systemName: "shuffle")
                            Text("Get Random")
                                .lineLimit(1)
                        }
                        Spacer()
                    }
                    
                    NavigationLink(
                        destination: SettingsView(),
                        label: {
                            Image(systemName: "gearshape")
                            Text("Settings")
                                .lineLimit(1)
                        Spacer()
                    })
                }
            }
            .navigationTitle(Text("Memory")) //CHECK ME: change string - change color?
        }
    }
}

//struct ContentView_Previews: PreviewProvider { //Note: original preview struct
//    static var previews: some View {
//        Group {
//            ContentView()
//            ContentView()
//        }
//
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["Apple Watch Series 3 - 38mm", "Apple Watch Series 6 - 44mm"],
                id: \.self) {
            deviceName in ContentView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
