//
//  NavigationStack.swift
//  Otus
//
//  Created by Dmitriy Obrazumov on 22/06/2022.
//

import Foundation


public struct NavigationStack {
    private var screens: [Screen] = .init()
    
    func top() -> Screen? {
        self.screens.last
    }
    mutating func push(_ s: Screen) {
        self.screens.append(s)
    }
    mutating func pop() {
        _ = self.screens.popLast()
    }
    mutating func popToRoot() {
        self.screens.removeAll()
    }
}
