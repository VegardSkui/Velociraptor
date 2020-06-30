//
//  NoLocationAccessView.swift
//  Velociraptor
//
//  Created by Vegard Skui on 30/06/2020.
//  Copyright © 2020 Vegard Skui. All rights reserved.
//

import SwiftUI

struct NoLocationAccessView: View {
    var body: some View {
        VStack {
            Text("The app needs access to your location to determine your current speed")
                .padding()
                .multilineTextAlignment(.center)

            Button(action: openSettings) {
                Text("Open Settings")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }

    private func openSettings() {
        let url = URL(string: UIApplication.openSettingsURLString)!
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}

struct NoLocationAccessView_Previews: PreviewProvider {
    static var previews: some View {
        NoLocationAccessView()
    }
}
