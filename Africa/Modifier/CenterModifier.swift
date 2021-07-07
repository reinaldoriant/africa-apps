//
//  CenterModifier.swift
//  Africa
//
//  Created by TI Digital on 08/07/21.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
