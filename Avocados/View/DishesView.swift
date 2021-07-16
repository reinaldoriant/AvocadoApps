//
//  DishesView.swift
//  Avocados
//
//  Created by TI Digital on 16/07/21.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack{
            HStack(){
                Image("icon-toasts")
                    .resizable()
                    .frame(width: 42, height: 42, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
                Text("Toasts")
            }
            
            Image(systemName: "heart.circle")
            
            HStack(){
                Text("Toasts")
                Spacer()
                Image("icon-toasts")
                    .resizable()
                    .frame(width: 42, height: 42, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
        .font(.system(.callout, design: .serif))
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
