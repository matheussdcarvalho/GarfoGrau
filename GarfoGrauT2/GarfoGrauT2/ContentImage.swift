//
//  ContentImage.swift
//  GarfoGrauT2
//
//  Created by User on 25/10/23.
//

import SwiftUI

struct ContentImage: View {
    var body: some View {
        Image("GarfoGrau")
        VStack{
            Text("O que você deseja?")
                .font(.system(size: 35))
                .bold()
        
                ButtonView()
                .padding()
                ButtonView()
                .padding()
                ButtonView()
                .padding()
                
            HStack{
                EImage("rosa", nameImgE: "amarelo")
                    .offset(y: 123)
            }
        }
        
    }
    
}

#Preview {
    ContentImage()
}
