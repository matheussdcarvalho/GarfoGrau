//
//  CodFuncionarioView.swift
//  GarfoGrauT2
//
//  Created by User on 21/11/23.
//

import SwiftUI

struct CodFuncionarioView: View {
    var body: some View {
        NavigationView(content: {
            VStack{
                Image("GarfoGrau")
            }
        })
        HStack{
            EImage("rosa", nameImgE: "amarelo")
                .position(x: 200, y: 142)
        }
    }
}

#Preview {
    CodFuncionarioView()
}
