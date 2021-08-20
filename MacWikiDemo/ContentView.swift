//
//  ContentView.swift
//  MacWikiDemo
//
//  Created by mark on 8/20/21.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: MacWikiDemoDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(MacWikiDemoDocument()))
    }
}
