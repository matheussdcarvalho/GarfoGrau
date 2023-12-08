import Foundation
import SwiftUI

struct CardapioView: View {
    var body: some View {
        VStack{
            Image("GVector")
                .ignoresSafeArea()
                .frame(height: 100)
//                .background(.green)
                .overlay {
                    Text("CARDÁPIO")
                        .font(.system(size: 30))
                        .bold()
                        .offset(y: -45)
                }

        }
        VStack{
            List{
                Produto(nome: "BURRITO", descricao: "Arroz, feijao, carne", preco: "59,90", imagem: "Produto1", disponivel: true)
                Produto(nome: "SURVETE", descricao: "Baunilha, chocolate e morango", preco: "49,90", imagem: "Produto2", disponivel: true)
                Produto(nome: "SOPINHA", descricao: "Sopinha de miojo com salsicha", preco: "89,90", imagem: "Produto3", disponivel: true)
                Produto(nome: "TACOS", descricao: "Deliciosos taquinhos de sabores variados", preco: "9,99", imagem: "Produto4", disponivel: true)
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    CardapioView()
}
