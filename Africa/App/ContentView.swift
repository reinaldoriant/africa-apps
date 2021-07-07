//
//  ContentView.swift
//  Africa
//
//  Created by TI Digital on 07/07/21.
//

import SwiftUI

struct ContentView: View {
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var isGridViewActive: Bool = false
    
    var body: some View {
        NavigationView{
            Group{
                if !isGridViewActive {
                    List{
                        CoverImageView()
                            .frame(height:300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                        ForEach(animals){animal in
                            NavigationLink(
                                destination: AnimalDetailView(animal:animal)){
                                AnimalListItemView(animal: animal)
                            }//:LINK
                        }//:LOOP
                    }//:list
                } else {
                    Text("Grid view is active")
                }//: Condition
            } //: Groip
            .navigationBarTitle("Africa", displayMode:.large)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    HStack( spacing: 16){
                        //LIST
                        Button(action:{ print("List view is activated")
                            isGridViewActive=false
                            haptics.impactOccurred()
                        }){
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ?.primary: .accentColor)
                        }
                        //Grid
                        Button(action: { print("Grid is activated")
                            isGridViewActive=true
                            haptics.impactOccurred()
                        }){
                            Image(systemName: "square.grid.2x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ?.accentColor: .primary)
                        }
                        
                    }//:Hstack
                }//:buttons
                
            }//: toolbar
        }//: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
