//
//  SelectVerseView.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 12/31/20.
//
//  Note: this is the view used when user picks a Book from within SelectBookView

import SwiftUI

struct SelectVerseView: View {
    //@State var isPracticeOn: Bool = false
    let book: Book
    
    var body: some View {
        VStack {
//            Spacer()
//
//            Toggle(isOn: $isPracticeOn) {
//                Spacer()
//                Text("Practice").foregroundColor(.white)
//            }
//            .padding(.all, 5.0)
//            .overlay(RoundedRectangle(cornerRadius: 15)
//                    .stroke(lineWidth: 2)
//                        .foregroundColor(isPracticeOn ? .green : .gray))
            
            List {
                ForEach(verseData) { verse in
                    if verse.fullBook == book.fullName {
                        //if isPracticeOn == false {
                            NavigationLink(destination: VerseDetailView(verse: verse)) {
                                VerseRow(verse: verse).lineLimit(1)
                            }
//                        }
//                        else if isPracticeOn == true {
//                            NavigationLink(destination: VersePracticeView(verse: verse)) {
//                                VerseRow(verse: verse).lineLimit(1)
//                            }
//                        }
                        
                    }
                }
            }
            .navigationTitle(Text(book.fullName))
        }
    }
}

struct SelectVerseView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["Apple Watch Series 3 - 38mm", "Apple Watch Series 6 - 44mm"],
                id: \.self) {
            deviceName in SelectVerseView(book: bookData[0])
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
