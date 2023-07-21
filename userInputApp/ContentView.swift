//
//  ContentView.swift
//  userInputApp
//
//  Created by Scholar on 7/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name=""
    @State private var titleTxt="What is your name?"
    var body: some View {
        VStack(alignment: .center, spacing: 100.0){
            Text(titleTxt)
                .font(.title)
            TextField("Type here...", text: $name).multilineTextAlignment(.center).font(.title2).border(Color.gray, width: 1)
            Button("Submit Name") {
                titleTxt="Welcome \(name)!"
            }.font(.title2).buttonStyle(.borderedProminent).tint(.purple)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
