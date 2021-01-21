//
//  VerseRow.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 1/8/21.
//

//Note: Creates a "VerseRow" object, i.e. a displayable row that contains Verse info

import SwiftUI

struct VerseRow: View {
    var verse: Verse
    
    var body: some View {
        HStack {
            Text(verse.reference)
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
