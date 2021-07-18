//
//  RipeningView.swift
//  Avocados
//
//  Created by TI Digital on 18/07/21.
//

import SwiftUI

struct RipeningView: View {
    
    var ripening: Ripening
    @State private var slideInAnimation: Bool = false
    
    var body: some View {
        VStack {
            Image(ripening.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .background(Circle()
                                .fill(Color("ColorGreenLight"))
                                .frame(width: 110, height: 110, alignment: .center))
                .background(Circle()
                                .fill(Color("ColorAppearanceAdaptive"))
                                .frame(width: 120, height: 120, alignment: .center))
                .zIndex(1)
                .animation(Animation.easeOut(duration: 1))
                .offset(y: slideInAnimation ? 55 : -55)
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10){
                //Stage
                VStack(alignment: .center, spacing: 0){
                    Text(ripening.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("STAGE")
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                }
                .foregroundColor(Color("ColorGreenMedium"))
                .padding(.top, 65)
                .frame(width: 180)
                //Title
                Text(ripening.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.vertical,12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                      RoundedRectangle(cornerRadius: 12)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorGreenLight")]), startPoint: .top, endPoint: .bottom))
                      .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                    
                //Desc
                Spacer()
                Text(ripening.description)
                    .foregroundColor(Color("ColorGreenDark"))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .lineLimit(nil)
                Spacer()
                //Ripeness
                Text(ripening.ripeness.uppercased())
                    .foregroundColor(Color.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 185)
                    .background(
                      RoundedRectangle(cornerRadius: 12)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenDark")]), startPoint: .top, endPoint: .bottom))
                      .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                //Instruction
                Text(ripening.instruction)
                    .foregroundColor(Color("ColorGreenLight"))
                    .font(.footnote)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .lineLimit(3)
                    .frame(width: 160)
                Spacer()
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .onAppear(perform: {
            self.slideInAnimation.toggle()
        })
    }
}

struct RipeningView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningView(ripening: ripeningData[1])
    }
}
