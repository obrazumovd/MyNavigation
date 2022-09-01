//
//  File.swift
//  
//
//  Created by Dmitriy Obrazumov on 03/08/2022.
//

import Foundation
import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        return AnyView(self)
    }
}
