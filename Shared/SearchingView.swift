//
//  SearchingView.swift
//  Velociraptor
//
//  Created by Vegard Skui on 30/06/2020.
//  Copyright © 2020 Vegard Skui. All rights reserved.
//

import SwiftUI

struct SearchingView: View {
    var body: some View {
        VStack {
            Text("Searching")
                .font(.largeTitle)

            ActivityIndicator(isVisible: .constant(true))
                .frame(width: 40, height: 40)
        }
    }
}

struct SearchingView_Previews: PreviewProvider {
    static var previews: some View {
        SearchingView()
    }
}
