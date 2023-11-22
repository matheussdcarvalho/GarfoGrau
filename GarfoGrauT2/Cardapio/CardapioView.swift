//
//  CardapioView.swift
//  GarfoGrauT2
//
//  Created by User on 21/11/23.
//

import Foundation
import SwiftUI

struct CardapioView: View {
    var body: some View {
        VStack{
            Image("GVector")
                .ignoresSafeArea()
            Text("CARDÁPIO")
                .font(.system(size: 30))
                .bold()
                .offset(y: -200)
        }
        VStack{
            List{
                Produto(nome: "BURRITO", descricao: "Arroz, feijao, carne", preco: "59,90", imagem: "Produto1")
                Produto(nome: "SURVETE", descricao: "Baunilha, chocolate e morango", preco: "49,90", imagem: "Produto2")
            }
        }
    }
}

#Preview {
    CardapioView()
}
