//
//  SelectVerseView.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 12/31/20.
//
//  Note: this is the view used when user selects "Select Verse" button

//    class Verse {
//        var reference: String
//        var content: String
//        var book: String
//
//        init(reference: String, content: String, book: String) {
//            self.reference = reference
//            self.content = content
//            self.book = book
//        }
//    }

import SwiftUI

struct SelectVerseView: View {
    //REMOVE ME: default body
    var body: some View {
        Text("Test SelectVerseView")
    }
}

struct SelectVerseView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["Apple Watch Series 3 - 38mm", "Apple Watch Series 6 - 44mm"],
                id: \.self) {
            deviceName in SelectVerseView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
