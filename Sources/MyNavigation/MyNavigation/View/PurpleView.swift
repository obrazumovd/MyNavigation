//
//  PurpleView.swift
//  Otus
//
//  Created by Dmitriy Obrazumov on 26/06/2022.
//

import SwiftUI

struct PurpleView: View, ItemView {
    var listener: INavigationContainer?
    
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()
            Text("To green")
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding()
                .onTapGesture {
                    listener?.push(view: GreenView())
                }
            VStack {
                HStack {
                    Button(action: {listener?.pop()}) {
                        Text("Back")
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding()
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct PurpleView_Previews: PreviewProvider {
    static var previews: some View {
        PurpleView()
    }
}
