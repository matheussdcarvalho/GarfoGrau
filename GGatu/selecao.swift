//
//  selecao.swift
//  GGatu
//
//  Created by User on 05/12/23.
//

import Foundation
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
                    NavigationLink(destination: Estrelas()){
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
                    
                    NavigationLink(destination: Estrelas()){
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
                    
                    NavigationLink(destination: Estrelas()){
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
                        .offset(y:100)
                }
                
            }
        })
    }
}

#Preview {
    EscolhaView()
}
