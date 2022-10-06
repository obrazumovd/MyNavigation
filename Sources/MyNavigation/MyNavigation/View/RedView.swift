//
//  RedView.swift
//  Otus
//
//  Created by Dmitriy Obrazumov on 26/06/2022.
//

import SwiftUI

struct RedView: View, ItemView {
    var listener: INavigationContainer?
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            Text("To purple")
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding()
                .onTapGesture {
                    listener?.push(view: PurpleView())
                }
        }
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
    }
}
