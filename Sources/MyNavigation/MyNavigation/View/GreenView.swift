//
//  GreenView.swift
//  Otus
//
//  Created by Dmitriy Obrazumov on 26/06/2022.
//

import SwiftUI

struct GreenView: View, ItemView {
    var listener: INavigationContainer?
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            Text("To root")
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding()
                .onTapGesture {
                    listener?.popToRoot()
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

struct GreenView_Previews: PreviewProvider {
    static var previews: some View {
        GreenView()
    }
}
