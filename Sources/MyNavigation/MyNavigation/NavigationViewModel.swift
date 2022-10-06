//
//  NavigationViewModel.swift
//  Otus
//
//  Created by Dmitriy Obrazumov on 22/06/2022.
//

import Foundation
import SwiftUI

public enum NavigationType {
    case pop, push
}

public class NavigationViewModel: ObservableObject {
    @Published var currentScreen: Screen? = nil
    public var navigationType: NavigationType = .push
    
    var screenStack: NavigationStack = NavigationStack() {
        didSet {
            currentScreen = screenStack.top()
        }
    }
    
    public func push(_ screenView: AnyView) {
        self.navigationType = .push
        let screen = Screen(screen: screenView)
        self.screenStack.push(screen)
    }
    public func pop() {
        self.navigationType = .pop
        self.screenStack.pop()
    }
    public func popToRoot() {
        self.navigationType = .pop
        self.screenStack.popToRoot()
    }
}
