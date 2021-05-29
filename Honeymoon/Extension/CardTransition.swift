//
//  CardTransition.swift
//  Honeymoon
//
//  Created by Evgenii Lysenko on 5/24/21.
//

import SwiftUI

extension AnyTransition {
    static var trailingBottom: AnyTransition {
        AnyTransition.asymmetric(insertion: .identity, removal: AnyTransition.move(edge: .trailing).combined(with: AnyTransition.move(edge: .bottom)))
    }
    
    static var leadingBottom: AnyTransition {
        AnyTransition.asymmetric(insertion: .identity, removal: AnyTransition.move(edge: .leading).combined(with: AnyTransition.move(edge: .bottom)))
    }
}
