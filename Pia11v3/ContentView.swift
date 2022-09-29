//
//  ContentView.swift
//  Pia11v3
//
//  Created by Bill Martensson on 2022-09-29.
//

import SwiftUI

struct ContentView: View {
    
    @State var fancystuff = "Banan"
    
    @State var siffra = 1
    
    var body: some View {
        VStack {
            Text("Hello, world!!!!!")
                .padding()
            Text(fancystuff)
                .font(.title)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button("Klicka här") {
                print("Nu har vi klickat")
                fancystuff = "Apelsin"
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                fancystuff = "Kiwi"
            }, label: {
                Text("Mera klick")
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            if(siffra > 5) {
                Text("STOR SIFFRA!!")
                    .font(.title)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
            
            
            Button(String(siffra)) {
                siffra = siffra + 1
                
                if(siffra == 10) {
                    siffra = 1
                }
            }
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
