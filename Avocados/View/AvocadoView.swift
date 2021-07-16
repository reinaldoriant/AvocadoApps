//
//  AvocadoView.swift
//  Avocados
//
//  Created by TI Digital on 16/07/21.
//

import SwiftUI

struct AvocadoView: View {
    //MARK : - Property
    
    @State private var pulsaAnimation:Bool = false
    
    // MARK : - Body
    var body: some View {
        VStack{
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
            Text("Avocados".uppercased())
                .font(.system(size: 42, weight: .bold, design: .serif))
                .foregroundColor(Color.white)
                .padding()
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                .scaleEffect(self.pulsaAnimation ? 1 : 0.9)
                .opacity(self.pulsaAnimation ? 1 : 0.9)
                .animation(Animation.easeOut(duration: 1.5).repeatForever(autoreverses: true))
            Text("""
Creamy, green, and full of nutrients!
Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundColor(Color("ColorGreenLight")
                )                      .multilineTextAlignment(.center)
                .lineSpacing(8).frame(maxWidth: 640, minHeight: 120)
            Spacer()
        }
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill))
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            self.pulsaAnimation.toggle()
        }
        )
    }
}

struct AvocadoView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadoView()
            .previewDevice("iPhone 11")
    }
}
