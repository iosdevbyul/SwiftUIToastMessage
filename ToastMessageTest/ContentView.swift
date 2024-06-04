//
//  ContentView.swift
//  ToastMessageTest
//
//  Created by COMATOKI on 2024-06-03.
//

import SwiftUI

struct ContentView: View {
    @State var isToastMessageNeeded = false
    var body: some View {
        VStack {
            ZStack{
                Button(action: {
                    isToastMessageNeeded = true
                }, label: {
                    Text("Click")
                })
            
                if isToastMessageNeeded {
                    ToastMessage(text: "Toast Message Test", isToastMessageNeeded: $isToastMessageNeeded)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
