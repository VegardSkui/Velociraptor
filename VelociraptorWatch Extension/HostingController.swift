//
//  HostingController.swift
//  VelociraptorWatch Extension
//
//  Created by Vegard Skui on 07/06/2020.
//  Copyright © 2020 Vegard Skui. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class HostingController: WKHostingController<AnyView> {
    override var body: AnyView {
        let contentView = ContentView()
            .environmentObject(AppState())
            .environmentObject(LocationManager())

        return AnyView(contentView)
    }
}
