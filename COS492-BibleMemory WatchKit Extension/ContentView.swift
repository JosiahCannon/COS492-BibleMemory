//
//  ContentView.swift
//  COS492-BibleMemory WatchKit Extension
//
//  Created by Josiah Cannon on 12/28/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            //ADD ME: ADD IMAGE HERE
            //FIX ME: accent color red should be RGB: 136, 0, 27
            
            Text("Quick Scripture Memory")
                .font(.body)
                .fontWeight(.heavy)
                .foregroundColor(Color(red: 0.533, green: 0.0, blue: 0.106))
//REMOVE ME (brown): .foregroundColor(Color(red: 0.6, green: 0.4, blue: 0.2, opacity: 1.0))
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding()
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) { //ADD ME: ADD ACTION HERE
                Text("Choose Verse")
            }
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) { //ADD ME: ADD ACTION HERE
                Text("Get Random")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
