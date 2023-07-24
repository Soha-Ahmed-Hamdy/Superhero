//
//  SplashScreenView.swift
//  Superhero
//
//  Created by Soha Ahmed Hamdy on 24/07/2023.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isAppear : Bool = false
    @State var isActive : Bool = false
    var gradientColor : [Color] = [Color("launchColor1"), Color("launchColo2")]
    
    var body: some View {
        
        if isActive{
            ContentView()
        }else{
            
            VStack{
                Image("launhImage")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .frame(width: 300,height: 300)
                    .cornerRadius(150)
                    .scaleEffect(isAppear ? 1 : 0.5)
                    .animation(.easeOut(duration: 2), value: isAppear)
                
                 
            }//VStack
            .ignoresSafeArea()
            .frame(width: 500, height: 900)
            .background(LinearGradient(gradient: Gradient(colors: gradientColor), startPoint: .topLeading, endPoint: .bottomTrailing))
            .onAppear {
                isAppear.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 2 ){
                    isActive = true
                }
            }
            
        }
        
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
