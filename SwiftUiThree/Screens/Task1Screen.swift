//
//  Task1Screen.swift
//  SwiftUiThree
//
//  Created by Karavella on 24/06/22.
//

import SwiftUI

struct Task1Screen: View {
    @State var test = ""
    @State var show = false
    
    var body: some View {
        ZStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 10, content: {
                Text("Email")
                TextField("Email", text: $test).textFieldStyle(.roundedBorder)
                
                
                Text("Password")
                SecureField("Password", text: $test).textFieldStyle(.roundedBorder)
                
                Button {
                    show = true
                } label: {
                    Text("Submit")
                        .foregroundColor(.white)
                        .padding(8)
                }.background(.blue)
                    .frame(maxWidth: .infinity)
                
                

            }).padding()
            
            if show {
                VStack(alignment: .center, spacing: 8, content: {
                    ProgressView().progressViewStyle(.circular)
                    Text("Loading...")
                    Button {
                        show = false
                    } label: {
                        Image(systemName: "xmark")
                    }
                })
                .frame(maxWidth:.infinity, maxHeight: .infinity)
                .background(Color.init(white: 1, opacity: 0.5))
                
            }
            
        }
    }
}

struct Task1Screen_Previews: PreviewProvider {
    static var previews: some View {
        Task1Screen()
    }
}
