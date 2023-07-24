//
//  ContentView.swift
//  Superhero
//
//  Created by Soha Ahmed Hamdy on 24/07/2023.
//

import SwiftUI

struct ContentView: View {
    var superheros : [Superhero] = superHeroData
    
    var body: some View {
        ScrollView (.horizontal){
            HStack{
                ForEach(superheros) { item in
                    SuperheroView(selectedSuperhero: item)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
