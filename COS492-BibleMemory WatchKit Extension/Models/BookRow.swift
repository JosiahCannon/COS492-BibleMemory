//
//  BookRow.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 1/8/21.
//

//Note: Creates a "BookRow" object, i.e. a displayable row that contains Book info

import SwiftUI

struct BookRow: View {
    var book: Book
    
    var body: some View {
        HStack {
            Text(book.fullName)
            Spacer()
        }
    }
}

struct BookRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BookRow(book: bookData[0])
        }
        .previewLayout(.fixed(width: 150, height: 50))
    }
}
