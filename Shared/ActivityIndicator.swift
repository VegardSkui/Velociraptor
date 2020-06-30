//
//  ActivityIndicator.swift
//  Velociraptor
//
//  Created by Vegard Skui on 30/06/2020.
//  Copyright © 2020 Vegard Skui. All rights reserved.
//

import SwiftUI

struct ActivityIndicator: View {
    @Binding var isVisible: Bool

    @State private var isRotated: Bool = false

    private let animation = Animation
        .linear(duration: 1)
        .repeatForever(autoreverses: false)

    var body: AnyView {
        if !isVisible {
            return AnyView(EmptyView())
        }

        let view = AlmostCompleteCircle()
            .stroke(lineWidth: 4)
            .opacity(0.5)
            .rotationEffect(self.isRotated ? .degrees(360) : .zero)
            .onAppear {
                withAnimation(self.animation, {
                    self.isRotated.toggle()
                })
            }.onDisappear {
                self.isRotated = false
            }

        return AnyView(view)
    }

    private struct AlmostCompleteCircle: Shape {
        func path(in rect: CGRect) -> Path {
            let size = min(rect.size.width, rect.size.height)

            var path = Path()
            path.addArc(
                center: CGPoint(
                    x: rect.size.width / 2,
                    y: rect.size.height / 2
                ),
                radius: size / 2,
                startAngle: .degrees(320),
                endAngle: .degrees(0),
                clockwise: true
            )
            return path
        }
    }
}

struct ActivityIndicator_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicator(isVisible: .constant(true))
            .frame(width: 40, height: 40)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
