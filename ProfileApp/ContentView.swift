//
//  ContentView.swift
//  ProfileApp
//
//  Created by Kürşad Saka on 27.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background").resizable().edgesIgnoringSafeArea(.all)
            VStack(alignment: .center) {
                VStack(alignment: .center, spacing: 20) {
                    Image("myImage")
                        .resizable()
                        .frame(width: 180, height: 180)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 5, x: 5, y: 5)
                    Text("Your Name")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    Text("iOS | Front End Developer")
                        .foregroundColor(.white)
                        .font(.system(.body))
                    HStack(spacing: 40) {
                        myImage("heart.circle")
                        myImage("network")
                        myImage("message.circle")
                        myImage("phone.circle")
                    }
                    .foregroundColor(.white)
                    .frame(width: 250, height: 50, alignment: .center)
                    .shadow(color: .pink, radius: 5, y: 8)
                }
                VStack(alignment: .center, spacing: 30) {
                    RoundedRectangle(cornerRadius: 120)
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .shadow(color: .pink, radius: 8, y: 8)
                        .overlay {
                            Text("Follow")
                                .fontWeight(.bold)
                                .foregroundColor(.pink)
                                .font(.system(size: 30))
                        }
                    HStack(alignment: .center, spacing: 60) {
                        myVStackForTitleCaption("222", "Appreciations")
                        myVStackForTitleCaption("222", "Appreciations")
                        myVStackForTitleCaption("222", "Appreciations")
                    }
                    Text ("About you")
                        .font(.system(.title))
                    Text ("I'm an iOS Frontend developer. Welcome to the series of iOS project. Let's dive deeper and create some more exciting projects.")
                        .font(.system(.body))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .opacity(0.7)
                }
            }
        }
    }
}

func myImage(_ name: String) -> some View {
    Image(systemName: name)
        .resizable()
        .aspectRatio(contentMode: .fit)
}

func myVStackForTitleCaption(_ title: String, _ caption: String) -> some View {
    VStack {
        Text(title)
            .font(.system(.title))
            .foregroundColor(.pink)
        Text(caption)
            .font(.system(.caption))
            .foregroundColor(.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
