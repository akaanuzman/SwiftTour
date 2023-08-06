//
//  ThirdView.swift
//  SwiftUITour
//
//  Created by Kaan Uzman on 6/8/23.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                print("ThirdView appeared.")
            }
            .onDisappear {
                print("ThirdView disappeared.")
            }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
