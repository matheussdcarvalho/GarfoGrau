//
//  AvaliaView.swift
//  GarfoGrauT2
//
//  Created by User on 25/10/23.
//

import SwiftUI

struct AvaliaView: View {
    var body: some View {
        VStack{
            Text("AVALIAÇÕES")
                .font(.system(size:35))
                .bold()
            HStack{
                EImage("azul", nameImgE: "vermelho")
                    .offset(y: 300)
            }
            
            
        }
    }
}

#Preview {
    AvaliaView()
}
