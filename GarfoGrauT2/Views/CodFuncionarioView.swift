import SwiftUI
import Foundation

struct CodFuncionarioView: View {
    
    @State private var codFun = ""
    
    var body: some View {
        NavigationView (content: {
            VStack{
                
                Spacer(minLength: 120)
                
                Image("GarfoGrau")
                
                Spacer()
                
                VStack(spacing: 25){
                    //TextField que recebe o código do funcionário
                    Text("Código do funcionário:")
                        .font(.system(size: 28))
                    
                    TextField("", text: $codFun)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 300)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.black, lineWidth:0.3)
                        )
                }
                
                Spacer()
                
                NavigationLink(destination: AvaliaView()){
                label: do {
                    Text("LIBERAR")
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
            }
            HStack{
                EImage("rosa", nameImgE: "amarelo")
                    .frame(alignment: .bottom)
                    .offset(y: 12)
            }
        })
    }
}
#Preview {
    CodFuncionarioView()
}
