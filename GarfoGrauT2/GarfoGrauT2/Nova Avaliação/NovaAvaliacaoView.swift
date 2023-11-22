//
//  NovaAvaliacaoView.swift
//  GarfoGrauT2
//
//  Created by User on 17/11/23.
//

import SwiftUI

struct NovaAvaliacaoView: View {
    
    @State private var produto = ""
    
    var body: some View {
        NavigationView(content: {
            VStack{
                Image("YVector")
                    .ignoresSafeArea()
                Text("NOVA AVALIAÇÃO")
                    .font(.system(size: 30))
                    .bold()
                    .offset(y: -200)
 
            }
        })
    }
}

#Preview {
    NovaAvaliacaoView()
}
