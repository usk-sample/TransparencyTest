//
//  DrawerView.swift
//  TransparencyTest
//
//  Created by Yusuke Hasegawa on 2023/10/20.
//

import SwiftUI

struct DrawerView: View {
    
    @State var showMenu: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Text("using ZStack")
                Button.init("show menu") {
                    withAnimation {
                        showMenu = true
                    }
                }
            }
            
            if showMenu {
                DrawerMenu(showMenu: $showMenu)
                    .transition(.move(edge: .leading))
            }
            
        }
    }
}

struct DrawerMenu: View {
    
    @Binding var showMenu: Bool

    var body: some View {
        HStack {
            VStack {
                HStack {
                    Spacer()
                    Button.init {
                        close()
                    } label: {
                        Image(systemName: "xmark")
                    }
                    .font(.system(size: 22))
                    .frame(width: 34, height: 34)
                }.padding(.horizontal, 10)
                Spacer()
                
                ZStack(alignment: .center) {
                    
                    VStack(spacing: 36) {
                        Button.init {
                            showMenu = false
                        } label: {
                            HStack {
                                Text("MY PAGE")
                                Spacer()
                            }
                        }
                        Button.init {
                        } label: {
                            HStack {
                                Text("Login")
                                Spacer()
                            }
                        }
                        Button.init {
                            
                        } label: {
                            HStack {
                                Text("Logout")
                                Spacer()
                            }
                        }

                    }
                    .font(.system(size: 11))
                    .buttonStyle(.plain)
                    .padding(.horizontal, 40)
                    .padding(.bottom, 40)

                }
                .frame(maxHeight: .infinity)

            }
            .frame(width: 288)
            .background(.white)
            .shadow(radius: 4)
            Color.clear.contentShape(Rectangle())
                .onTapGesture {
                    close()
                }
        }
    }
    
    private func close() {
        withAnimation {
            showMenu = false
        }
    }
    
}

struct DrawerView_Previews: PreviewProvider {
    static var previews: some View {
        VStack { //need Vstack for Preview's bug
            DrawerView()
        }
    }
}
