//
//  SettingsView.swift
//  Avocados
//
//  Created by TI Digital on 16/07/21.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var enableNotification: Bool = false
    @State private var backgroundRefresh: Bool = false
    
    var body: some View {
        //Header
        VStack(alignment: .center, spacing: 5) {
            VStack(alignment: .center, spacing: 5){
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title,design: .serif))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form{
                //MARK : - sect #1
                Section(header: Text("General Settings")){
                    Toggle(isOn: $enableNotification){
                        Text("Enable notification")
                    }
                    
                    Toggle(isOn: $backgroundRefresh){
                        Text("Background refresh")
                    }
                    
                }
                
                //MARK : - sect #2
                Section(header: Text("Application")){
                    if enableNotification {
                        HStack{
                            Text("Product").foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack{
                            Text("Compatibility").foregroundColor(Color.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        
                        HStack{
                            Text("Developer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Reinaldo Riant")
                        }
                        
                        HStack{
                            Text("Designer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Robert Petras")
                        }
                        
                        HStack{
                            Text("Website").foregroundColor(Color.gray)
                            Spacer()
                            Text("kompas.id")
                        }
                        
                        HStack{
                            Text("Version").foregroundColor(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack{
                            Text("Personal message").foregroundColor(Color.gray)
                            Spacer()
                            Text("🥲 Happy Coding")
                        }
                    }
                    
                   
                }
            }
        }
        .frame(maxWidth:640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
