//
//  SelectBookView.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 1/8/21.
//
//  Note: this is the view used when user clicks "Select Verse" NavigationLink

import SwiftUI

struct SelectBookView: View {
    //ADD ME: should be a list of all the books (and each book should be a link to a list of the available verat book)s
//    var body: some View {
//        Text("Test SelectBookView")
//    }
    var body: some View {
        NavigationView {
            List(bookData) { book in
                BookRow(book: book)

//                NavigationLink(destination: SelectVerseView(book: Book)) {
//                    BookRow(book: Book)
//                }
            }
            .navigationBarTitle(Text("Books of the Bible"))
        }
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
