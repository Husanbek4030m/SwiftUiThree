//
//  HomeScreen.swift
//  SwiftUiThree
//
//  Created by Karavella on 23/06/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                        Task1Screen()
                } label: {
                        Text("Task 1 - 2").padding(10)
                }
                .buttonStyle(.bordered)
                .foregroundColor(.blue)
                
                
                    NavigationLink {
                            Task3Screen()
                    } label: {
                            Text("Task 3").padding(10)
                    }
                    .buttonStyle(.bordered)
                    .foregroundColor(.blue)
                
                
                    NavigationLink {
                            Task4Screen()
                    } label: {
                            Text("Task 4").padding(10)
                    }
                    .buttonStyle(.bordered)
                    .foregroundColor(.blue)
            }
            .toolbar {
                ToolbarItem(placement: .principal, content: {
                    Text("Vazifalar")
                })
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
