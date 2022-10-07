//
//  ViewModifierBootcamp.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Suguru on 10/5/22.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier {
    let backgroundColor: Color

    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding()
    }
}

extension View {
    func withDefaultButtonFormatting(backgroundColor: Color = .blue) -> some View {
        modifier(DefaultButtonViewModifier(backgroundColor: backgroundColor))
    }
}

struct ViewModifierBootcamp: View {
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .font(.headline)
                .withDefaultButtonFormatting()
            
            Text("Hello, everyone!")
                .font(.subheadline)
                .withDefaultButtonFormatting(backgroundColor: .orange)

            Text("Hello!")
                .font(.title)
                .withDefaultButtonFormatting(backgroundColor: .red)

        }
    }
}

struct ViewModifierBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierBootcamp()
    }
}
