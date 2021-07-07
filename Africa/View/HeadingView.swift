//
//  HeadingView.swift
//  Africa
//
//  Created by TI Digital on 07/07/21.
//

import SwiftUI

struct HeadingView: View {
    var headingImage:String
    var headingText: String
    
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectange.angled", headingText: "wilderness in picture")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
