//
//  ContentView.swift
//  BusinessCardSwiftUI
//
//  Created by Wynelher Tagayuna on 3/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.05, green: 0.51, blue: 0.53, opacity: 1.00)// Background color
                .ignoresSafeArea()
            VStack {
                Image("user")// User profile image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)// image size.
                    .clipShape(Circle())// Clip the image into a circle shape
                    .overlay(Circle().stroke(Color(red: 0.80, green: 0.89, blue: 0.87),lineWidth: 10))// Layer an outline.
                Text("Your Name")// User name.
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.init(red: 0.80, green: 0.89, blue: 0.87))
                    .bold()
                Text("Job Title")// Job title.
                    .font(.system(size: 25))
                    .foregroundColor(.init(red: 0.80, green: 0.89, blue: 0.87))
                Divider()
                InfoView(text: "Phone Number", imageName: "phone.fill")// Rounded rectangle shape with image and text overlay.
                InfoView(text: "Email", imageName: "envelope.fill")// Rounded rectangle shape with image and text overlay. 
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
