//
//  Verse.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 1/7/21.
//

import SwiftUI

struct Verse: Identifiable, Decodable {
    var reference: String
    var content: String
    var shortBook: String
    var fullBook: String
    var id: Int
}
