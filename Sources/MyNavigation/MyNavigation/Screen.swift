//
//  Screen.swift
//  Otus
//
//  Created by Dmitriy Obrazumov on 22/06/2022.
//

import Foundation
import SwiftUI

public struct Screen: Identifiable, Equatable {
    public static func == (lhs: Screen, rhs: Screen) -> Bool {
        return lhs.id == rhs.id
    }
    
    public let id: String = UUID().uuidString
    public let screen: AnyView
}
