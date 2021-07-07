//
//  CoverImageView.swift
//  Africa
//
//  Created by TI Digital on 07/07/21.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: Properties
    
    //MARK: Body
    var body: some View {
        TabView{
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Image("cover-lion")
                .resizable()
                    .scaledToFit()
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
