//
//  EImage.swift
//  GarfoGrauT2
//
//  Created by User on 25/10/23.
//
import Foundation
import SwiftUI

struct EImage: View {
    let nameimg:String
    let nameImgE: String
    
    init(_ nameimg: String, nameImgE: String) {
        self.nameimg = nameimg
        self.nameImgE = nameImgE
    }
    var body: some View {
        HStack {
            Image(nameimg)
                .offset(x: 10)
            Image(nameImgE)
                .offset(x: -20, y: -46)
        }
    }
    
    #Preview {
        EImage("rosa", nameImgE: "amarelo")
    }
}
