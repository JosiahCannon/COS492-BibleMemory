//
//  SelectBookView.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 1/8/21.
//
//  Note: this is the view used when user clicks "Select Verse" NavigationLink

import SwiftUI

struct SelectBookView: View {
    
    var body: some View {
        List(bookData) { book in
            NavigationLink(destination: SelectVerseView(book: book)) {
                BookRow(book: book)
            }
        }
        .navigationTitle(Text("Books of the Bible"))
    }
}

struct SelectBookView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["Apple Watch Series 3 - 38mm", "Apple Watch Series 6 - 44mm"],
                id: \.self) {
            deviceName in SelectBookView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
