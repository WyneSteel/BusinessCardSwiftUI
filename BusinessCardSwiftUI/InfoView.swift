//
//  InfoView.swift
//  BusinessCard
//
//  Created by Wynelher Tagayuna on 3/28/23.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25)// Rectangle shape with rounded edges.
                .frame(height: 50.0)
                .foregroundColor(.init(red: 0.80, green: 0.89, blue: 0.87))
                .padding(.all)
            HStack{
                Image(systemName: imageName)// Icon
                    .foregroundColor(.green)
                Text(text)
                    .foregroundColor(.init(red: 0.18, green: 0.31, blue: 0.31))
                    .bold()
            }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
