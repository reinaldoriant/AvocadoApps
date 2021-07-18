//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by TI Digital on 18/07/21.
//

import SwiftUI

struct RipeningStagesView: View {
    var ripeningStages: [Ripening] = ripeningData
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing:25) {
                    ForEach(ripeningStages) { item in
                       RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal,25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
