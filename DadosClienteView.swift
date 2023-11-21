//
//  NovaAvaliacao.swift
//  GarfoGrauT2
//
//  Created by User on 10/11/23.
//

import SwiftUI

struct DadosClienteView: View {
    
    //    @Environment(\.presentationMode) var presentationMod
    @State private var nomeCliente = ""
    @State private var dataAv = Date()
    
    var body: some View {
        NavigationView(content: {
            VStack{
                Image("YVector")
                    .ignoresSafeArea()
                Text("BEM VINDO!")
                    .font(.system(size: 30))
                    .bold()
                    .offset(y: -200)
                
                //Campo para receber o nome do cliente
                Text("Digite seu nome completo:")
                    .font(.system(size: 25))
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
                }
                .font(.system(size: 25))
                DatePicker("Data da avaliação", selection: $dataAv)
                    .frame(width: 300)
                Spacer()
                
                NavigationLink(destination: AvaliaView()){
                label: do {
                    Text("PRÓXIMO")
                        .font(.headline)
                        .frame(width: 100,height: 18)
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 1)
                        )
                }
                }
                Spacer()
            }
        })
    }
    //        .navigationBarTitle("", displayMode: .inline)
    //        .navigationBarBackButtonHidden(true)
    //        .navigationBarItems(leading: backButton)
    //    private var backButton: some View{
    //        Button(action: {
    //        }) {
    //            HStack{
    //                Image(systemName: "arrow.left")
    //                    .foregroundColor(.black)
    //                Text("Voltar")
    //                    .foregroundColor(.black)
    //            }
    //        }
    //    }
    
}

#Preview {
    DadosClienteView()
}
