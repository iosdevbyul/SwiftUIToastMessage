//
//  ToastMessage.swift
//  ToastMessageTest
//
//  Created by COMATOKI on 2024-06-03.
//

import SwiftUI

struct ToastMessage: View {
    
    @State var text: String?
    @State var timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @Binding var isToastMessageNeeded: Bool
    
    var body: some View {
        VStack(alignment: .center, content: {
            Spacer()
            if text != "" {
                Text(text ?? "")
                    .foregroundStyle(.white)
                    .padding(.vertical,20)
                    .padding(.horizontal,30)
                    .background(Color(red: 0, green: 0, blue: 0, opacity: 0.7))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }).onReceive(timer, perform: { _ in
            self.timer.upstream.connect().cancel()
            text = ""
            isToastMessageNeeded = false
        })
    }
}

//#Preview {
//    ToastMessage(text: "This is a test This is a test This is a test This is a test This is a test This is a test")
//}
