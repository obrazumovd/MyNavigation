//
//  NavigationContainer.swift
//  Otus
//
//  Created by Dmitriy Obrazumov on 22/06/2022.
//

import SwiftUI

public protocol ItemView: View {
    var listener: INavigationContainer? { get set }
}

public protocol INavigationContainer {
    func push<Content: View& ItemView>(view: Content)
    func pop()
    func popToRoot()
}
public struct NavigationContainer<Content:View&ItemView>: View, INavigationContainer {
    @ObservedObject var model = NavigationViewModel()
    private var content: Content

    public init(@ViewBuilder content: @escaping() -> Content) {
        self.content = content()
        self.content.listener = self
    }

    public var body: some View {
        let isRoot = model.currentScreen == nil
        return ZStack {
            if isRoot {
                content
            } else {
                model.currentScreen?.screen
            }
        }
    }
    public func push<Content>(view: Content) where Content: View&ItemView {
        var view = view
        view.listener = self
        self.model.push(view.toAnyView())
    }
    
    public func pop() {
        self.model.pop()
    }
    
    public func popToRoot() {
        self.model.popToRoot()
    }
}
