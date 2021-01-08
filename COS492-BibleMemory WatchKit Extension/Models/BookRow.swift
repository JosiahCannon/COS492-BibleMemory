//
//  BookRow.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 1/8/21.
//

//REMOVE ME: DEBUG only
//    var body: some View {
//        Text("Test BookRow.swift")
//    }

import SwiftUI

struct BookRow: View {
    var book: Book
    
    var body: some View {
        HStack {
            Text(book.fullName)
            Spacer()
            
            //CHECK ME: removed genre from row because it can't fit in row eith long book.fullname and small display
            //Text(book.genre).foregroundColor(.gray) //ADD ME: change text color to be gray?
            //Spacer()
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
