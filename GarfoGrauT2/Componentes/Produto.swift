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
    let disponivel: Bool
    
    init(nome: String, descricao: String, preco: String, imagem: String, disponivel: Bool) {
        self.nome = nome
        self.descricao = descricao
        self.preco = preco
        self.imagem = imagem
        self.disponivel = disponivel
    }
    
    var body: some View {
        HStack{
            Image(imagem)
                .resizable()
                .frame(width: 100,height: 80)
            
            VStack(alignment: .leading){
                    Text(nome)
                        .font(.system(size: 20))
                        .bold()
                    Text(descricao)
                    .frame(width: 150)
            }
            Text("R$" + preco)
                .offset(y: -20)
        }
    }
}

#Preview {
    Produto(nome: "", descricao: "", preco: "", imagem: "", disponivel: true)
}
