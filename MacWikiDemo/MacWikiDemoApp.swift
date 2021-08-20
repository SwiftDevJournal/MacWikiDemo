//
//  MacWikiDemoApp.swift
//  MacWikiDemo
//
//  Created by mark on 8/20/21.
//

import SwiftUI

@main
struct MacWikiDemoApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: Wiki()) { file in
            ContentView(wiki: file.$document)
        }
    }
}
