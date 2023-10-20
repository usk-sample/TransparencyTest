//
//  CustomAlertView.swift
//  TransparencyTest
//
//  Created by Yusuke Hasegawa on 2023/10/20.
//

import SwiftUI

struct CustomAlertView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            VStack(alignment: .center, spacing: 16) {
                Text("This is alert view")
                Button.init("close") {
                    var transaction = Transaction()
                    transaction.disablesAnimations = true
                    withTransaction(transaction) {
                      self.dismiss()
                    }
                }
            }
            .padding(16)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.init(white: 0, opacity: 0.5))
    }
}

struct CustomAlertView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlertView()
    }
}
