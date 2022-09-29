//
//  ProfileView.swift
//  Pia11v3
//
//  Created by Bill Martensson on 2022-09-29.
//

import SwiftUI

struct ProfileView: View {
    
    @State var firstname = ""
    @State var lastname = ""
    @State var age = ""

    var body: some View {
        VStack {
            Text(firstname + " " + lastname)
            
            TextField("Förnamn", text: $firstname)
            TextField("Efternamn", text: $lastname)
            TextField("Ålder", text: $age)
            
            Button("Född år") {
                print(2022 - Int(age)!)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
