//
//  FirstView.swift
//  SwiftUITour
//
//  Created by Kaan Uzman on 6/8/23.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Sample Text")
                    .padding()
                NavigationLink(destination: SecondView()) {
                    Text("Hello, from First View!")
                }
            }
        }.onAppear {
            print("FirstView appeared.")
        }
        .onDisappear {
            print("FirstView disappeared.")
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
