//
//  IGTextFieldModifier.swift
//  InstagramClone-IOS
//
//  Created by SinemApaydın on 21.08.2023.
//

import SwiftUI

struct IGTextFieldModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.init(gray: 0.9, alpha: 1.0)))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}

