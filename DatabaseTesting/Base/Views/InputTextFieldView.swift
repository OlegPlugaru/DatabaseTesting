//
//  InputTextFieldView.swift
//  DatabaseTesting
//
//  Created by Oleg Plugaru on 29.02.2024.
//

import SwiftUI

struct InputTextFieldView: View {
    
    @Binding var text: String
    let placeholder: String
    let keyboardType: UIKeyboardType
    let sfSymbol: String?
    
    private let textFieldLeading: CGFloat = 30
    
    var body: some View {
        
        TextField(placeholder, text: $text)
            .frame(maxWidth: .infinity, minHeight: 44)
            .padding(.leading, sfSymbol == nil ? textFieldLeading / 2 : textFieldLeading)
            .keyboardType(keyboardType)
            .background(
                
                ZStack(alignment: .leading) {
                    
                    if let systemImage = sfSymbol {
                        
                        Image(systemName: systemImage)
                            .font(.system(size: 16, weight: .semibold))
                            .padding(.leading, 5)
                            .foregroundColor(Color.gray.opacity(0.5))
                    }
                    
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(Color.gray.opacity(0.25))
                }
            )
    }
}

#Preview {
    Group {
        InputTextFieldView(text: .constant(""),
                           placeholder: "Email",
                           keyboardType: .emailAddress,
                           sfSymbol: "envelope")
        .preview(with: "Email Text input with sfSymbol")
        
        InputTextFieldView(text: .constant(""),
                           placeholder: "First Name",
                           keyboardType: .default,
                           sfSymbol: nil)
        .preview(with: "First Name Text input with sfSymbol")
       
    }
}
