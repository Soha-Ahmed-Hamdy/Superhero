//
//  SuperheroView.swift
//  Superhero
//
//  Created by Soha Ahmed Hamdy on 24/07/2023.
//

import SwiftUI

struct SuperheroView: View {
    var selectedSuperhero : Superhero
    @State var isAlertPresented: Bool = false
    @State var isAppear : Bool = false
    @State var isSliding : Bool = false
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    var body: some View {
        ZStack{
            Image(selectedSuperhero.image)
                .resizable()
                .scaledToFill()
                .scaleEffect(isAppear ? 1 : 0.7)
                .animation(.easeOut(duration: 3), value: isAppear)
            VStack{
                Text(selectedSuperhero.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Button(action: {
                    isAlertPresented.toggle()
                    hapticImpact.impactOccurred()
                    playSound(sound: "chimeup", type: "mp3")
                }, label: {
                    HStack{
                        Text("Start")
                        Image(systemName: "arrow.right.circle")
                    }//HStack
                })
                .padding()
                .font(.title2)
                .background(LinearGradient(gradient: Gradient(colors: selectedSuperhero.gradient), startPoint: .bottomTrailing, endPoint: .topLeading))
                .clipShape(Capsule())
                .shadow(radius: 5)
                .alert(isPresented: $isAlertPresented) {
                    Alert(title: Text("More about \(selectedSuperhero.title)"), message: Text(selectedSuperhero.message), dismissButton: .default(Text("Ok")))
                }
                
            }//VStack
            .foregroundColor(.white)
            .offset(y: isSliding ? 150 : 350)
            .animation(.easeOut(duration: 3), value: isSliding)
        }// Zstack
        .frame(width: 360, height: 545, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: selectedSuperhero.gradient), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(50)
        .padding()
        .shadow(color: .black, radius: 10, x: 2, y: 2)
        .onAppear {
            isAppear = true
            isSliding = true
        }
        
    }
}

struct SuperheroView_Previews: PreviewProvider {
    static var previews: some View {
        SuperheroView(selectedSuperhero: superHeroData[0])
    }
}
