//
//  EscolhaView.swift
//  GarfoGrauT2
//
//  Created by User on 10/11/23.
//

import SwiftUI

struct EscolhaView: View {
    var body: some View {
        NavigationView(content: {
            VStack(spacing: 15){
                
                Spacer(minLength: 110)
                Image("GarfoGrau")
                Text("O que você deseja?")
                    .font(.system(size: 35))
                
                //BOTÃO "NOVA AVALIAÇÃO"
                Spacer(minLength: 20)
                
                VStack(spacing: 30){
                    NavigationLink(destination: DadosClienteView()){
                    label: do {
                        Text("NOVA AVALIAÇÃO")
                            .font(.headline)
                            .frame(width: 213)
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
                    
                    //BOTÃO "AVALIAÇÕES ANTERIORES"
                    NavigationLink(destination: AvaliaView()){
                    label: do {
                        Text("AVALIAÇÕES ANTERIORES")
                            .font(.headline)
                            .frame(width: 213)
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
                    
                    //BOTÃO "ACESSAR CARDÁPIO"
                    NavigationLink(destination: CardapioView()){
                    label: do {
                        Text("ACESSAR CARDÁPIO")
                            .font(.headline)
                            .frame(width: 213)
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
                HStack{
                    EImage("rosa", nameImgE: "amarelo")
                        .frame(alignment: .bottom)
                        .position(x: 200, y: 190)
                }
            }
        })
    }
}

#Preview {
    EscolhaView()
}
