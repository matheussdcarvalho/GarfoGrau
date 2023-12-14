import SwiftUI

struct EscolhaView: View {
    
    //    TODO: CRIAR VARIÁVRL, OO
    
    var body: some View {
        NavigationView(content: {
            VStack(spacing: 12){
                
                Spacer(minLength: 60)
                Image("GarfoGrau")
                    .resizable()
                    .frame(width: 140, height: 130)
                Text("O que você deseja?")
                    .font(.largeTitle)
                
                //BOTÃO "NOVA AVALIAÇÃO"
                Spacer(minLength: 20)
                
                VStack(spacing: 30){
                    NavigationLink(destination: DadosClienteView()) {
                    Label: do{
                        Text("NOVA AVALIAÇÃO")
                            .font(.body)
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
                    NavigationLink(destination: PreviousReviewsView(reviews: [])){
                    Label: do{
                        Text("AVALIAÇÕES ANTERIORES")
                            .font(.body)
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
                    NavigationLink(destination: CardapioView()) {
                    Label: do{
                        Text("ACESSAR CARDÁPIO")
                            .font(.body)
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
                        .position(x: 200, y: 170)
                }
            }
        })
    }
}

#Preview {
    EscolhaView()
}

struct Review: Identifiable, Codable {
    var id = UUID()
    var rating: Int
    var comment: String
}
