//
//  PageView.swift
//  MacWikiDemo
//
//  Created by mark on 8/20/21.
//

import SwiftUI
import Ink

struct PageView: View {
    @Binding var page: Page
    
    var body: some View {
        HStack {
            TextEditor(text: $page.text)
            WebView(html: html)
        }
    }
    
    var html: String {
        let parser = MarkdownParser()
        return parser.html(from: page.text)
    }
}


struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(page: .constant(Page()))
    }
}
