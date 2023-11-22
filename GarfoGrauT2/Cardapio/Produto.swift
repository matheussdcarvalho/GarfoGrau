//
//  Produto.swift
//  GarfoGrauT2
//
//  Created by User on 22/11/23.
//

import SwiftUI

struct Produto: View {
    let nome: String
    let descricao: String
    let preco: String
    let imagem: String
    
    init(nome: String, descricao: String, preco: String, imagem: String) {
        self.nome = nome
        self.descricao = descricao
        self.preco = preco
        self.imagem = imagem
    }
    
    var body: some View {
            HStack{
                Image("Produto2")
                    .resizable()
                    .frame(width: 120,height: 100)
                VStack{
                    Text("SURVETE")
                        .font(.title)
                        .bold()
                    Text("Baunilha, chocolate e morango")
            }
        }
    }
}

#Preview {
    Produto(nome: "", descricao: "", preco: "", imagem: "")
}
