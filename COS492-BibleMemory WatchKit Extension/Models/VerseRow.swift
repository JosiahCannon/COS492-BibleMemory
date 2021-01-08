//
//  VerseRow.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 1/8/21.
//

//REMOVE ME: DEBUG only
//    var body: some View {
//        Text("Test VerseRow.swift")
//    }

//ADD ME: pass in book.name and check against verse.fullbook to only show rows of verses from the chosen book?

import SwiftUI

struct VerseRow: View {
    var verse: Verse
    
    var body: some View {
        HStack {
            Text(verse.reference) //CHECK ME: remove and/or change?
            Text(verse.content).lineLimit(1).foregroundColor(.gray)
            Spacer()
        }
    }
}

struct VerseRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VerseRow(verse: verseData[0])
        }
        .previewLayout(.fixed(width: 150, height: 50))
    }
}
