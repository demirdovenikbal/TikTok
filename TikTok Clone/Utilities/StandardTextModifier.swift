//
//  StandardTextModifier.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-18.
//

import Foundation
import SwiftUI

struct StandardTextModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal)
    }
}
