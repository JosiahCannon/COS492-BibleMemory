//
//  BookRow.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 1/8/21.
//

import SwiftUI

struct BookRow: View {
    //REMOVE ME: DEBUG only
//    var body: some View {
//        Text("Test BookRow.swift")
//    }
    
    var book: Book

    var body: some View {
        HStack {
            Text(book.fullName)
            Text(book.genre) //ADD ME: change text color to be gray?
            Spacer()
        }
    }
}

struct BookRow_Previews: PreviewProvider {
    static var previews: some View {
        BookRow(book: bookData[0])
    }
}
