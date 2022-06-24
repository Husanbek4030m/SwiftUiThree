//
//  Task4Screen.swift
//  SwiftUiThree
//
//  Created by Karavella on 24/06/22.
//

import SwiftUI

struct Bean: Hashable {
    var title: String
    var image: String
}


extension UIScreen {
    static let width = UIScreen.main.bounds.width
    static let height = UIScreen.main.bounds.height
}


struct Task4Screen: View {
    let arr: [Bean] = [
                Bean(title: "Title 1", image: "photo_m"),
                Bean(title: "Title 2", image: "photo_m"),
                Bean(title: "Title 3", image: "photo_m"),
                Bean(title: "Title 4", image: "photo_m"),
                Bean(title: "Title 5", image: "photo_m"),
                Bean(title: "Title 6", image: "photo_m"),
                Bean(title: "Title 7", image: "photo_m"),
                Bean(title: "Title 8", image: "photo_m"),
                Bean(title: "Title 9", image: "photo_m"),
                Bean(title: "Title 10", image: "photo_m"),
                Bean(title: "Title 11", image: "photo_m"),
                ]
    
    var columns: [GridItem] = Array(repeating: .init(.fixed(UIScreen.width / 2)), count: 2)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, alignment: .center, spacing: 8) {
                ForEach(arr, id: \.self) { item in
                    LazyVStack(alignment: .center, spacing: 8) {
                        Image(item.image)
                            .resizable()
                            .frame(width: UIScreen.width / 2, height: UIScreen.width / 2 - 30, alignment: .center)
                        Text("\(item.title)")
                    }.frame(width: UIScreen.width / 2, height: UIScreen.width / 2, alignment: .center)
                        .background(Color.gray)
                }
            }
        }
    }
}

struct Task4Screen_Previews: PreviewProvider {
    static var previews: some View {
        Task4Screen()
    }
}
