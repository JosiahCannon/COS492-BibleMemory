//
//  VersePracticeView.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 1/12/21.
//

//FIX ME: REMOVE THIS FILE - IMPORTANT

import SwiftUI

struct VersePracticeView: View {
    var verse: Verse
    
    var body: some View {        
        ScrollView {
            VStack {
                //Text("DEBUG practice VIEW") //REMOVE ME
                
                Text(verse.content)
                Text(verse.shortBook + " " + verse.reference).foregroundColor(Color.accentColor).padding(.bottom, 10.0)
            }
        }
        .navigationTitle(Text(verse.shortBook))
    }
}

struct VersePracticeView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["Apple Watch Series 3 - 38mm", "Apple Watch Series 6 - 44mm"],
                id: \.self) {
            deviceName in VersePracticeView(verse: verseData[0])
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
