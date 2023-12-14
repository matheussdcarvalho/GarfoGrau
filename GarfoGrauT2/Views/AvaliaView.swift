import SwiftUI

struct AvaliaView: View {
    @State private var rating = 0
    @State private var comment = ""
    @State private var reviews: [Review] = []
    
    var body: some View {
        ZStack{
            Image("YVector")
                .ignoresSafeArea()
                .frame(height: 100)
                .overlay {
                    Text("DÊ SUA OPINIÃO")
                        .font(.system(size: 30))
                        .offset(y: -80)
                        .bold()
                }
                .offset(y: -294)
            VStack {
                Text("O que você achou da comida?")
                    .font(.title2)
                
                //Estrelinhas
                HStack {
                    ForEach(1..<6) { number in
                        Button(action: {
                            rating = number
                        }) {
                            Image(systemName: number <= rating ? "star.fill" : "star")
                                .foregroundColor(.yellow)
                                .font(.system(size: 30))
                        }
                    }
                }
                //Adiciona Comentário
                .padding()
                Text("Faça um breve comentário, se desejar:")
                    .font(.title2)
                    .padding()
                
                TextField("", text: $comment)
                    .frame(width: 300, height: 60)
                    .padding()
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .padding()
                
                //Botão enviar avaliação
                Button(action: {
                    saveReview()
                }){
                Label: do{
                    Text("AVALIAR")
                        .font(.headline)
                        .frame(width: 100,height: 18)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.orangeButton)
                        .cornerRadius(10)
                        .offset(y: 10)
                    //                        .overlay(
                    //                            RoundedRectangle(cornerRadius: 10)
                    //                                .stroke(Color.white, lineWidth: 1)
                    //                        )
                        .shadow(color: .gray, radius: 4, x: 0, y: 4)
                    }
                }
                
                
                Button(action: {
                    removeReview(reviewID: UUID())
                }){
                Label: do{
                    Text("REMOVER")
                        .font(.headline)
                        .frame(width: 100,height: 18)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.orangeButton)
                        .cornerRadius(10)
                        .shadow(color: .gray, radius: 4, x: 0, y: 4)
                    }
                }
                
                //Avaliações anteriores
                NavigationLink(destination: PreviousReviewsView(reviews: reviews)) {
                Label: do{
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
            }
        }
        .onAppear {
            loadReviews()
        }
    }
    
    func saveReview() {
        if rating > 0 {
            let novaAvaliacao = Review(rating: rating, comment: comment)
            reviews.append(novaAvaliacao)
            saveReviews()
            
            // Reset form
            rating = 0
            comment = ""
        }
    }
    
    func saveReviews() {
        if let encodedData = try? JSONEncoder().encode(reviews) {
            UserDefaults.standard.set(encodedData, forKey: "reviews")
        }
    }
    
    func loadReviews() {
        if let encodedData = UserDefaults.standard.data(forKey: "reviews"),
           let decodedReviews = try? JSONDecoder().decode([Review].self, from: encodedData) {
            reviews = decodedReviews
        }
    }
    
    func removeReview(reviewID: UUID) {
        // Filtra a lista de avaliações, mantendo apenas aquelas cujo id não corresponde ao id fornecido
        reviews = reviews.filter { $0.id != reviewID }
        // Chama a função saveReviews() para salvar a lista atualizada (se necessário)
        saveReviews()
    }
}

struct PreviousReviewsView: View {
    var reviews: [Review]
    var body: some View {
        VStack {
            Text("Avaliações Anteriores:")
                .font(.headline)
                .padding()
            
            List(reviews) { review in
                VStack(alignment: .leading) {
                    HStack {
                        Text("Avaliação: \(review.rating) estrelas")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    
                    Text("Comentário: \(review.comment)")
                        .padding(.bottom, 8)
                }
            }
            .listStyle(PlainListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AvaliaView()
    }
}

