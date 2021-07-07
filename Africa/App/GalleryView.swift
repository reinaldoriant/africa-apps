//
//  GalleryView.swift
//  Africa
//
//  Created by TI Digital on 07/07/21.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            Text("Gallery")
        }//: Scroll
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
