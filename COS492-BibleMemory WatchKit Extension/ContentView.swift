//
//  ContentView.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 12/28/20.
//
//  Note: accent color red should be RGB: 136, 0, 27

import SwiftUI

struct ContentView: View {
    @State private var randVerse = verseData.randomElement()

    //chooses random Verse (i.e. random index of verseData array) on function call
    func chooseRandVerse() {
        randVerse = verseData.randomElement()
    }
    
    var body: some View {
        //ScrollView allows the user to scroll down the page when not all content can fit at once
        ScrollView {
            VStack() {
                Image("white-bible-icon_4")
                    .resizable()
                    .frame(width: 70.0, height: 60.0)
                
                //NavLink allowing user to pick a book, verse, and view the verse in detail
                NavigationLink(
                    destination: SelectBookView(),
                    label: {
                        Image(systemName: "filemenu.and.selection")
                            .renderingMode(.original)
                        Text("Select Verse") //CHECK ME: change text to "Select Book"?
                            .lineLimit(1)
                        Spacer()
                    })
                
                //NavLink that will pick/display a random verse in detail
                NavigationLink(
                    destination: VerseDetailView(verse: randVerse!), //CHECK ME: force unwrap with "!"??
                    label: {
                        Image(systemName: "shuffle")
                        Text("Get Random")
                            .lineLimit(1)
                        Spacer()
                    })
                    .onAppear(perform: chooseRandVerse) //assigns new random Verse to variable each time "Get Random" is pressed
                
                //NavLink that goes to Settings page (for changing Notification settings)
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
        .navigationTitle(Text("Memory")) //sets a specified page title in Nav bar
    }
}

//Note: preview here and in all other files are set to display smallest and largest available Apple Watches
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
