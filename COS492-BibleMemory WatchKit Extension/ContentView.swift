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
            //ADD ME: ADD IMAGE HERE?
            //FIX ME: accent color red should be RGB: 136, 0, 27
            
            Text("Quick Scripture Memory")
                .font(.body)
                .fontWeight(.heavy)
                //REMOVE ME (red): .foregroundColor(Color(red: 0.533, green: 0.0, blue: 0.106))
                //REMOVE ME (red): .foregroundColor(Color(red: 0.6, green: 0.4, blue: 0.2, opacity: 1.0))
                .foregroundColor(Color.white) //CHECK ME: change color?
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding()

            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) { //ADD ME: ADD ACTION HERE
                HStack {
                    Image(systemName: "filemenu.and.selection")
                    Text("Select Verse")
                        .lineLimit(1)
                }
                //Spacer() - REMOVE ME?
            }
            
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) { //ADD ME: ADD ACTION HERE
                HStack {
                    Image(systemName: "shuffle")
                    Text("Get Random")
                        .lineLimit(1)
                }
                //Spacer() - REMOVE ME?
            }
        }
        .navigationTitle(Text("Memory")) //CHECK ME: change string - change color?
    }
}

//struct ContentView_Previews: PreviewProvider { //Note: original preview struct
//    static var previews: some View {
//        Group {
//            ContentView()
//            ContentView()
//        }
//
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["Apple Watch Series 3 - 38mm", "Apple Watch Series 6 - 44mm"],
                id: \.self) {
            deviceName in ContentView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
            
    }
}
