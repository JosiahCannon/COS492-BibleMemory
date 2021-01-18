//
//  VerseDetailView.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 1/7/21.
//

import SwiftUI

struct VerseDetailView: View {
    var verse: Verse
    @State private var isPracticeOn: Bool = false
    
    func showPractice() -> String {
        let verseOne: String = verse.content
        var practiceArray = verseOne.components(separatedBy: " ")
        let arrayLength = practiceArray.count
        
        for element in 1..<arrayLength {
            let rand = Int.random(in: 1..<100)
                
            if rand % 2 == 0 { //if rand is EVEN, replace element in index with blank ("_")
                let letterCnt = practiceArray[element].count
                var blank = "_"
 
                for _ in 1..<letterCnt {
                    blank.append("_")
                }
                
                practiceArray[element] = blank
            }
        }
        
        let practiceVerse = practiceArray.joined(separator: " ")
        
        return practiceVerse
    }
    
    var body: some View {
        ScrollView {
            VStack {
                if isPracticeOn {
                    Text(showPractice())
                }
                else {
                    Text(verse.content)
                }
                
                Spacer()
                
                Text(verse.shortBook + " " + verse.reference).foregroundColor(Color.accentColor).padding(.bottom, 10.0)
                
                Spacer()
                Divider()
                
                PracticeToggle(isPracticeOn: $isPracticeOn) //CHANGE ME: move to top of VStack?
            }
        }
        .navigationTitle(Text(verse.shortBook))
    }
}

struct PracticeToggle: View {
    @Binding var isPracticeOn: Bool

    var body: some View {
        Toggle(isOn: $isPracticeOn) {
            Text("Practice").foregroundColor(.gray)
        }
        .padding(.all, 5.0).foregroundColor(isPracticeOn ? .green : .gray)
        //.overlay(RoundedRectangle(cornerRadius: 15)
                    //.stroke(lineWidth: 2)
                    
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
