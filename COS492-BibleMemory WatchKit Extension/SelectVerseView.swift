//
//  SelectVerseView.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 12/31/20.
//
//  Note: this is the view used when user picks a Book from within SelectBookView

import SwiftUI

struct SelectVerseView: View {
    let book: Book
    
    var body: some View {
        VStack {
            List {
                ForEach(verseData) { verse in
                    if verse.fullBook == book.fullName {
                        NavigationLink(destination: VerseDetailView(verse: verse)) {
                            VerseRow(verse: verse).lineLimit(1)
                        }
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
