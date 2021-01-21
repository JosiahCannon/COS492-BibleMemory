//
//  BookData.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 1/7/21.
//

//Note: Fills array "bookData" with Books from bookData.json

import SwiftUI
import CoreLocation

let bookData: [Book] = loadBooks("bookData.json")

func loadBooks<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
