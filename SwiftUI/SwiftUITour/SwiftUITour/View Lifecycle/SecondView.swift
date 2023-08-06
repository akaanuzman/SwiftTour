//
//  SecondView.swift
//  SwiftUITour
//
//  Created by Kaan Uzman on 6/8/23.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Sample Text")
                    .padding()
                NavigationLink(destination: ThirdView()) {
                    Text("Hello, from First View!")
                }
            }
        }.onAppear {
            print("SecondView appeared.")
        }
        .onDisappear {
            print("SecondView disappeared.")
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
