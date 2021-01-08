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
    
    //CHECK ME: should display a list of all the verses available in the selected book
    
    var body: some View {
        NavigationView {
            List(verseData) { verse in
                //VerseRow(verse: verse) //DEBUG ONLY - remove

                //FIX ME: only displays one verse, but as many times as there are total verses in verseData.json
                NavigationLink(destination: VerseDetailView(verse: verse)) {
                    VerseRow(verse: verse)
                }
            }
        }
        .navigationBarTitle(Text(book.fullName))
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
