//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Evgenii Lysenko on 5/22/21.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}


