//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by TI Digital on 07/07/21.
//

import SwiftUI

struct ExternalWeblinkView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name,destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                }.foregroundColor(.accentColor)
            }//: Hstack
        }//: box
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
