import SwiftUI

struct CodFuncionarioView: View {
	@State private var password = ""
	@State private var wrongPassword =  0
	@State private var showingLoginScreen = false
	
	var body: some View {
		VStack{
			Spacer(minLength: 134)
			Image("GarfoGrau")
				.resizable()
				.frame(width: 140, height: 130)
				.padding(20)
			
			Text("Digite o código de verificação:")
				.font(.title2)
			
			SecureField("", text: $password)
				.frame(width: 300)
				.padding()
				.background(Color.black.opacity(0.05))
				.cornerRadius(10)
				.border(.red, width: CGFloat(wrongPassword))
			
			Spacer(minLength: 70)
			
			Button(action: {
				autheticaPass(passaword: password)
			}) {Label: do {
				Text("LIBERAR")
					.font(.body)
					.frame(width: 100,height: 18)
					.foregroundColor(.white)
					.padding()
					.background(Color.orangeButton)
					.cornerRadius(10)
				//                        .overlay(
				//                            RoundedRectangle(cornerRadius: 10)
				//                                .stroke(Color.white, lineWidth: 1)
				//                        )
					.shadow(color: .gray, radius: 4, x: 0, y: 4)
			}}
			
			NavigationLink( destination: AvaliaView(), isActive: $showingLoginScreen){
				
			}
			HStack{
				EImage("rosa", nameImgE: "amarelo")
					.frame(alignment: .bottom)
					.offset(y: 95)
			}
		}
	}
	func autheticaPass(passaword: String){
		if passaword.lowercased() == "1234" {
			wrongPassword = 0
			showingLoginScreen = true
		} else {
			wrongPassword = 2
		}
	}
}
#Preview {
	CodFuncionarioView()
}
