//
//  AnimalDetailView.swift
//  Africa
//
//  Created by TI Digital on 07/07/21.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: Animal
    
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                //Hero image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                //title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical,8)
                    .foregroundColor(.primary)
                    .background(Color.accentColor.frame(height:6).offset(y:24))
                //headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                //gallery
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                }.padding(.horizontal)
                //facts
                
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    
                    InsetFactView(animal: animal)
                }.padding(.horizontal)
                //description
                //map
                //link
            }//:Vstack
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }//:Scroll
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] =
        Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView{
            AnimalDetailView(animal: animals[0])
        }.previewDevice("iPhone 11")
    }
}
