//
//  NewFullScreenCoverView.swift
//  TransparencyTest
//
//  Created by Yusuke Hasegawa on 2023/10/20.
//

import SwiftUI

struct NewFullScreenCoverView: View {
    
    @State var isPresented: Bool = false

    var body: some View {
        VStack {
            Text("using .fullScreenCover")
            Text("with .presentationBackground")
            Button.init("show alert") {
                var transaction = Transaction()
                transaction.disablesAnimations = true
                withTransaction(transaction) {
                    self.isPresented = true
                }
            }
        }
        .fullScreenCover(isPresented: $isPresented) {
            CustomAlertView()
                .presentationBackground(Color.clear)
        }
    }
}

struct NewFullScreenCoverView_Previews: PreviewProvider {
    static var previews: some View {
        NewFullScreenCoverView()
    }
}
