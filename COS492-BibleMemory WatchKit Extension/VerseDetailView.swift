//
//  VerseDetailView.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 1/7/21.
//

//ADD ME: "Practice Mode" toggle in NavigationView bar
//  - maybe tie this to @State?
//  - or trigger an entirely separate PracticeVerseView?

import SwiftUI

struct VerseDetailView: View {
    var testVerse1 = Verse(reference: "1:1", content: "In the beginning, God created the heavens and the earth.", shortBook: "Gen", fullBook: "Genesis")
    
    //FIX ME: should display the attributes of the CHOSEN verse, not just testVerse1
    var body: some View {
        VStack {
            Text(testVerse1.content)
            Text(testVerse1.shortBook + " " + testVerse1.reference).foregroundColor(Color.accentColor)
        }
    }
}

struct VerseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["Apple Watch Series 3 - 38mm", "Apple Watch Series 6 - 44mm"],
                id: \.self) {
            deviceName in VerseDetailView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}