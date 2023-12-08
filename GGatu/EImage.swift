//
//  EImage.swift
//  GGatu
//
//  Created by User on 05/12/23.
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
                .offset(x: -20)
        }
    }
    
    #Preview {
        EImage("rosa", nameImgE: "amarelo")
    }
}
