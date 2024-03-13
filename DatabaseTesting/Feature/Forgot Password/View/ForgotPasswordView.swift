//
//  ForgotPasswordView.swift
//  DatabaseTesting
//
//  Created by Oleg Plugaru on 13.03.2024.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: 16) {
                
                InputTextFieldView(text: .constant(""), 
                                   placeholder: "Email",
                                   keyboardType: .emailAddress,
                                   sfSymbol: "envelope")
                
                ButtonView(title: "Send Password Reset") {
                    // TODO: Handle password reset action
                    presentationMode.wrappedValue.dismiss()
                }
            }
            .padding(.horizontal, 15)
            .navigationTitle("Reset Password")
            .applyClose()
        }
    }
}

#Preview {
    ForgotPasswordView()
}
