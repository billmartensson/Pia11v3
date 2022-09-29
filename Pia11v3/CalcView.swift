//
//  CalcView.swift
//  Pia11v3
//
//  Created by Bill Martensson on 2022-09-29.
//

import SwiftUI

struct CalcView: View {
    
    @State var countingnumber = 0
    @State var howmany = 1
    
    var body: some View {
        VStack {
            Text(String(countingnumber))
                .font(.largeTitle)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            HStack {
                
                Button(action: {
                    countingnumber = countingnumber - howmany
                    
                    if(countingnumber < 0) {
                        countingnumber = 0
                    }
                    
                }, label: {
                    Text("-")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                })
                
                Button(action: {
                    countingnumber = countingnumber + howmany
                }, label: {
                    Text("+")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                })
            }
            
            HStack {
                
                Button(action: {
                    
                    if(howmany == 1)
                    {
                        howmany = 5
                    } else {
                        howmany = 1
                    }
                    

                }, label: {
                    Text("Add: " + String(howmany))
                        .font(.title)
                        .foregroundColor(Color.white)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                })
                
            }
            
            Spacer()

            
            Button(action: {
                countingnumber = 0
            }, label: {
                Text("Reset")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
            })
            
        }
    }
}

struct CalcView_Previews: PreviewProvider {
    static var previews: some View {
        CalcView()
    }
}
