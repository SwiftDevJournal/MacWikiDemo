//
//  Page.swift
//  MacWikiDemo
//
//  Created by mark on 8/20/21.
//

import Foundation

class Page: Identifiable, Equatable, Hashable {
    let id = UUID()
    var title: String = "Page"
    var text: String

    init(text: String = "Type here") {
        self.text = text
    }
    
    static func == (lhs: Page, rhs: Page) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(title)
        hasher.combine(text)
    }
    
    func write() -> Data? {
        return text.data(using: .utf8)
    }
    
    func read(data: Data) {
        if let fileContents = String(data: data, encoding: .utf8) {
            text = fileContents
        }
    }
}
