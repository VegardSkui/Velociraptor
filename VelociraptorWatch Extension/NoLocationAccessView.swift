//
//  NoLocationAccessView.swift
//  VelociraptorWatch Extension
//
//  Created by Vegard Skui on 30/06/2020.
//  Copyright © 2020 Vegard Skui. All rights reserved.
//

import SwiftUI

struct NoLocationAccessView: View {
    var body: some View {
        Text("The app needs access to your location to determine your current speed")
            .multilineTextAlignment(.center)
    }
}

struct NoLocationAccessView_Previews: PreviewProvider {
    static var previews: some View {
        NoLocationAccessView()
    }
}
