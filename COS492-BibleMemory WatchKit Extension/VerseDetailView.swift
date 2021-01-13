//
//  VerseDetailView.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 1/7/21.
//

//ADD ME: "Practice Mode" toggle in NavigationView bar
//  - maybe tie this to @State?
//  - or trigger an entirely separate PracticeVerseView?

//ADD ME: put verse.content into variable
//ADD ME: replace random words in that String variable with underscores
//ADD ME: display this edited variable when !isPracticeOn

import SwiftUI

struct VerseDetailView: View {
    var verse: Verse
    @State private var isPracticeOn: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                //Text("DEBUG detail VIEW") //REMOVE ME
                if isPracticeOn {
                    Text("TEST ME")
                }
                else {
                    Text(verse.content)
                }
                
                Text(verse.shortBook + " " + verse.reference).foregroundColor(Color.accentColor).padding(.bottom, 10.0)
                
                Spacer()
                
                PracticeToggle(isPracticeOn: $isPracticeOn)
                
            }
        }
        .navigationTitle(Text(verse.shortBook))
    }
}

struct PracticeToggle: View { //FIX ME: need to trigger verse.content change HERE
    @Binding var isPracticeOn: Bool

    var body: some View {
        Toggle(isOn: $isPracticeOn) {
            Spacer()
            Text("Practice").foregroundColor(.white)
        }
        .padding(.all, 5.0)
        .overlay(RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 2)
                    .foregroundColor(isPracticeOn ? .green : .gray))
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
