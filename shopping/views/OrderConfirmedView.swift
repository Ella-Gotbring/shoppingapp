//
//  MapView.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-07.
//

import SwiftUI

struct OrderConfirmedView: View {
    @State var email = ""
    var body: some View {
            NavigationView {

                       VStack {

                           NavigationLink(destination: LoginView()) {
                               Text("Sign In")
                           }

                           LabelledDivider(label: "or")

                           NavigationLink(destination: RegisterView()) {
                               Text("Sign up")
                           }

                       }.padding()
                  
            }
            .navigationBarBackButtonHidden(true)
    }
}
    struct LabelledDivider: View {

        let label: String
        let horizontalPadding: CGFloat
        let color: Color

        init(label: String, horizontalPadding: CGFloat = 20, color: Color = .gray) {
            self.label = label
            self.horizontalPadding = horizontalPadding
            self.color = color
        }

        var body: some View {
            HStack {
                line
                Text(label).foregroundColor(color)
                line
            }
        }

        var line: some View {
            VStack { Divider().background(color) }.padding(horizontalPadding)
        }
    }

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        OrderConfirmedView()
    }
}

