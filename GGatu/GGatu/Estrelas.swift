//
//  Estrelas.swift
//  GGatu
//
//  Created by User on 04/12/23.
//

import SwiftUI

struct Estrelas: View {
    var body: some View {
        VStack{
            Image("verde")
                .ignoresSafeArea()
            Text("NOVA AVALIAÇÃO")
                .font(.system(size: 30))
                .bold()
                .offset(x:0,y:-180)
                ContentView()
                .offset(x:0,y:-100)
                
            }
            
            
        }
    }
#Preview {
    Estrelas()
}
