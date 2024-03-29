//
//  RegisterView.swift
//  DatabaseTesting
//
//  Created by Oleg Plugaru on 13.03.2024.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject private var vm = RegistrationViewModelImpl (
        service: RegistrationServiceImpl()
    )
    
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: 32) {
                
                VStack(spacing: 16) {
                    
                    InputTextFieldView(text: $vm.userDetails.email,
                                       placeholder: "Email",
                                       keyboardType: .emailAddress,
                                       sfSymbol: "envelope")
                    
                    InputPasswordView(password: $vm.userDetails.password,
                                      placeholder: "Password",
                                      sfSymbol: "lock")
                    
                    Divider()
                    
                    InputTextFieldView(text: $vm.userDetails.firstName,
                                       placeholder: "First Name",
                                       keyboardType: .namePhonePad,
                                       sfSymbol: nil)
                    
                    InputTextFieldView(text: $vm.userDetails.lastName,
                                       placeholder: "Last Name",
                                       keyboardType: .namePhonePad,
                                       sfSymbol: nil)
                    
                    InputTextFieldView(text: $vm.userDetails.occupation,
                                       placeholder: "Occupation",
                                       keyboardType: .namePhonePad,
                                       sfSymbol: nil)
                }
                
                ButtonView(title: "Sign up") {
                    vm.register()
                }
            }
            .padding(.horizontal, 15)
            .navigationTitle("Register")
            .applyClose()
        }
    }
}

#Preview {
    RegisterView()
}
