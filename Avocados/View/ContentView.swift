//
//  ContentView.swift
//  Avocados
//
//  Created by TI Digital on 15/07/21.
//

import SwiftUI


struct ContentView: View {
    
    var header: [Header] = headerData
    var facts: [Fact] = factsData
    var recipes: [Recipe] = recipesData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                
                //MARK : - Header
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(header){ item in
                            HeaderView(header: item)
                        }
                    }
                }
                //MARK : - Dishes
                Text("Avocado Dishes")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                //MARK : - Avocado facts
                
                Text("Avocado Facts")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(alignment: .top, spacing: 60){
                        ForEach(facts){item in
                            FactsView(fact: item)
                        }
                        .padding(.vertical)
                        .padding(.leading,60)
                        .padding(.trailing,20)
                        
                    }
                }
                
                //MARK : - Recipe Cards
                
                Text("Avocado Recipes")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .modifier(TitleModifier())
                
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                    ForEach(recipes){ item in
                      RecipeCardView(recipe: item)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
                .shadow(radius: 8)
                
                //MARK : - Footer
                
                VStack(alignment: .center, spacing: 20){
                    Text("All About Avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .modifier(TitleModifier())
                    
                    Text("Everything you wanted to know about avocados but were to afraid to ask.")
                        .font(.system(.title, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                        .frame(minHeight: 60)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(.title,design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(header: headerData, facts: factsData, recipes: recipesData)
    }
}
