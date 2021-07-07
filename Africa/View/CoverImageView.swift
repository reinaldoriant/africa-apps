//
//  CoverImageView.swift
//  Africa
//
//  Created by TI Digital on 07/07/21.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: Properties
    
    let coverImage: [CoverImage] = Bundle.main.decode("covers.json")
    
    //MARK: Body
    var body: some View {
        TabView{
            ForEach(coverImage) { item in
                Image(item.name)
                .resizable()
                .scaledToFill()
            }//: LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

//MARK: Previews

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
