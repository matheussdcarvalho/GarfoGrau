//
//  NovaAvaliacao.swift
//  GarfoGrauT2
//
//  Created by User on 10/11/23.
//

import SwiftUI

struct DadosClienteView: View {
    @State private var nomeCliente = ""
    @State private var dataAv = Date()
    
    var body: some View {
            VStack{
                Image("YVector")
                Text("BEM VINDO!")
                    .font(.system(size: 30))
                    .bold()
                    .offset(y: -120)
                
                Spacer()
                
                //Campo para receber o nome do cliente
                Text("Digite seu nome completo:")
                    .font(.title2)
                VStack(spacing: 100){
                    TextField("", text: $nomeCliente)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 300)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.black, lineWidth:0.3)
                        )
                    
                    //Campo para receber a data da avaliação
                    Text("Insira a data da avaliação:")
                        .font(.title2)
                }
                .font(.system(size: 25))
                DatePicker("Data da avaliação", selection: $dataAv)
                    .frame(width: 300)
                
                Spacer()
                
                //Botão próximo
                
                NavigationLink(destination: CodFuncionarioView()) {
                    Text("PRÓXIMO")
                        .font(.body)
                        .frame(width: 100,height: 18)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.orangeButton)
                        .cornerRadius(10)
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 10)
//                                .stroke(Color.white, lineWidth: 1)
//                        )
                        .shadow(color: .gray, radius: 4, x: 0, y: 4)
                    }
                
                Spacer(minLength: 170)

            }
            .ignoresSafeArea()
        }
    }
#Preview {
    DadosClienteView()
}
