//
//  VerseDetailView.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 1/7/21.
//

//ADD ME: "Practice Mode" toggle in NavigationView bar
//  - maybe tie this to @State?
//  - or trigger an entirely separate PracticeVerseView?

//ADD ME: fix back button so it goes back to SelectVerseView instead of ContentView (should go back one view instead of all the way home)

import SwiftUI

struct VerseDetailView: View {
    var verse: Verse
    
    var body: some View {
        ScrollView {
            VStack {
                Text(verse.content)
                Text(verse.shortBook + " " + verse.reference).foregroundColor(Color.accentColor)
            }
        }
        .navigationBarTitle(Text(verse.shortBook + " " + verse.reference)) //FIX ME: choose title and uncomment this line?
    }
}

struct VerseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["Apple Watch Series 3 - 38mm", "Apple Watch Series 6 - 44mm"],
                id: \.self) {
            deviceName in VerseDetailView(verse: verseData[0])
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
