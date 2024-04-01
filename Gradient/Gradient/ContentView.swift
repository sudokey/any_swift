//
//  ContentView.swift
//  Gradient
//
//  Created by Pavel Ivanov on 01.04.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var animateGradient1: Bool = false
    @State private var animateGradient2: Bool = false
    @State private var animateGradient3: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                RadialGradient(
                    colors: [
                        Color(red: 0.40, green: 0.80, blue: 1.00),
                        Color(red: 0.20, green: 0.60, blue: 0.80)
                    ],
                    center: .center,
                    startRadius: animateGradient1 ? 0 : 150,
                    endRadius: animateGradient1 ? 150 : 170
                )
                .edgesIgnoringSafeArea(.all)
                .onAppear {
                    withAnimation(.easeInOut(duration: 6).repeatForever(autoreverses: true)) {
                        animateGradient1.toggle()
                    }
                }
            }
            .opacity(1)
            
            VStack {
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                RadialGradient(
                    colors: [
                        Color(red: 0.00, green: 0.40, blue: 1.00),
                        Color(red: 0.00, green: 0.20, blue: 1.00)
                    ],
                    center: .center,
                    startRadius: animateGradient2 ? 0 : 170,
                    endRadius: animateGradient2 ? 200 : 220
                )
                .edgesIgnoringSafeArea(.all)
                .onAppear {
                    withAnimation(.easeInOut(duration: 5).repeatForever(autoreverses: true)) {
                        animateGradient2.toggle()
                    }
                }
                .opacity(0.5)
            }
            
            VStack {
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                RadialGradient(
                    colors: [
                        Color(red: 1.00, green: 0.00, blue: 0.60),
                        Color(red: 1.00, green: 0.40, blue: 1.00)
                    ],
                    center: .center,
                    startRadius: animateGradient3 ? 0 : 200,
                    endRadius: animateGradient3 ? 200 : 220
                )
                .edgesIgnoringSafeArea(.all)
                .onAppear {
                    withAnimation(.easeInOut(duration: 7).repeatForever(autoreverses: true)) {
                        animateGradient3.toggle()
                    }
                }
                .opacity(0.1)
            }
        }
    }
    
    
}

#Preview {
    ContentView()
}
