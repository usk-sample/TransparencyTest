//
//  FullScreenCoverView.swift
//  TransparencyTest
//
//  Created by Yusuke Hasegawa on 2023/10/20.
//

import SwiftUI

struct FullScreenCoverView: View {
    
    @State var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Text("using .fullScreenCover")
            Text("with custom BackgroundView")
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
                .background(BackgroundCleanerView())
        }
    }
}

struct BackgroundCleanerView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        DispatchQueue.main.async {
            view.superview?.superview?.backgroundColor = .clear
        }
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}
}

struct FullScreenCoverView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenCoverView()
    }
}
