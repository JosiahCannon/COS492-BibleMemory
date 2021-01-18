//
//  ContentView.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 12/28/20.
//

import SwiftUI

struct ContentView: View {
    @State private var randVerse = verseData.randomElement()

    //re-chooses random Verse on function call
    func chooseRandVerse() {
        randVerse = verseData.randomElement()
    }
    
    var body: some View {
        ScrollView {
            VStack() {
                //FIX ME: accent color red should be RGB: 136, 0, 27

                Image("white-bible-icon_4")
                    .resizable()
                    .frame(width: 70.0, height: 60.0)
                
                NavigationLink(
                    destination: SelectBookView(),
                    label: {
                        Image(systemName: "filemenu.and.selection")
                            .renderingMode(.original)
                        Text("Select Verse") //CHECK ME: change text to "Select Book"?
                            .lineLimit(1)
                        Spacer()
                    })
                
                NavigationLink(
                    destination: VerseDetailView(verse: randVerse!), //CHECK ME: force unwrap with "!"??
                    label: {
                        Image(systemName: "shuffle")
                        Text("Get Random")
                            .lineLimit(1)
                        Spacer()
                    })
                    .onAppear(perform: chooseRandVerse) //assigns new random Verse to variable each time "Get Random" is pressed
                
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
