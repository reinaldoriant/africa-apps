//
//  AnimalListItemView.swift
//  Africa
//
//  Created by TI Digital on 07/07/21.
//

import SwiftUI

struct AnimalListItemView: View {
    
    //MARK: Properties
    let animal:Animal
    
    //MARK: Body
    var body: some View {
        HStack (alignment: .center, spacing: 16){
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width:90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .padding(.trailing,8)
            }
        } //: HSTACK
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static let animals: [Animal] =
        Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalListItemView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
