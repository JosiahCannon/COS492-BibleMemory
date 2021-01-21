//
//  Book.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 1/7/21.
//

//Note: Creates and sets definition of a "Book"; no one book can be the same (due to Identifiable "id")

import SwiftUI

struct Book: Identifiable, Decodable {
    var id: Int
    var fullName: String
    var shortName: String
    var genre: String
    var group: String
}
