import SwiftUI

struct ContentView: View {
    @State private var rating = 0
    @State private var comment = ""
    @State private var reviews: [Review] = []
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Text("O que você achou da comida?")
                    .font(.headline)
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
                .padding()
                
                Text("Adicionar Comentário:")
                    .font(.headline)
                    .padding()
                
                TextEditor(text: $comment)
                    .padding()
                    .frame(height: 100)
                    .border(Color.gray, width: 1)
                    .padding()
                
            Label:do {
                Button("ENVIAR AVALIAÇÃO"){
                    saveReview()
                }
            }
                
                NavigationLink(destination: PreviousReviewsView(reviews: reviews)) {
                Label: do{
                    Text("Avaliações Anteriores")
                        .font(.headline)
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
    
    func removeAva(){
        
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
        .navigationBarTitle("Avaliações Anteriores")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Review: Identifiable, Codable {
    var id = UUID()
    var rating: Int
    var comment: String
}
