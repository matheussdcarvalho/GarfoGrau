//
//  Estrelas.swift
//  GGatu
//
//  Created by User on 04/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image("GVector")
                .ignoresSafeArea()
            Text("NOVA AVALIAÇÃO")
                .font(.system(size: 30))
                .bold()
                .offset(x:0,y:-180)
                AvaliaView()
                .offset(x:0,y:-100)
                
            }
            
            
        }
    }
#Preview {
    ContentView()
}
