//
//  Task3Screen.swift
//  SwiftUiThree
//
//  Created by Karavella on 24/06/22.
//

import SwiftUI

struct Task3Screen: View {
    @State var test:String = ""
    
    @State var address:String = ""
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 10, content: {
                Group {
                    Text("First Name")
                    TextField("First Name", text: $test).textFieldStyle(.roundedBorder)
                }
                
                Group {
                    Text("Last Name")
                    TextField("Last Name", text: $test).textFieldStyle(.roundedBorder)
                    
                }
                Group {
                    Text("Email")
                    TextField("Email", text: $test).textFieldStyle(.roundedBorder)
                }
                Group {
                    Text("Phone")
                    TextField("Phone", text: $address).textFieldStyle(.roundedBorder)
                }
                Group {
                    Text("SMS")
                    TextField("SMS", text: $address).textFieldStyle(.roundedBorder)
                }
                Group {
                    Text("Address 1")
                    TextField("Address 1", text: $address).textFieldStyle(.roundedBorder)
                }
                Group {
                    Text("Address 2")
                    TextField("Address 2", text: $address).textFieldStyle(.roundedBorder)
                }
                
            }).padding()
        }
    }
}

struct Task3Screen_Previews: PreviewProvider {
    static var previews: some View {
        Task3Screen()
    }
}
