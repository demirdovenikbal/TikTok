//
//  RegistrationView.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-17.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @StateObject var viewModel : LoginViewModel
    private let authService : AuthService
    init(authService : AuthService) {
        self.authService = authService
        self._viewModel = StateObject(wrappedValue: LoginViewModel(authService: authService))
    }
    var body: some View {
        NavigationStack {
            VStack {
                //logo
                Spacer()
                Image("tiktoklogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                //textfields
                VStack {
                    TextField("Enter your email", text: $email)
                        .textInputAutocapitalization(.never)
                        .modifier(StandardTextModifier())
                    SecureField("Enter your password", text: $password)
                        .modifier(StandardTextModifier())
                }
                
                NavigationLink {
                    Text("Forgot password?")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                //login button
                Button {
                    Task { await viewModel.login(email: email, password: password) }
                } label: {
                    Text("Login")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .font(.subheadline)
                        .frame(width: 350, height: 44)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding(.vertical)
                .disabled(!formIsValid)
                .opacity(formIsValid ? 1 : 0.7)
                Spacer()
                //go to sign up
                Divider()
                NavigationLink {
                    RegistrationView(authService: authService)
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        +
                        Text(" Sign up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .padding(.vertical)
                }
            }
        }
    }
}

//MARK: - Authentication Protocol

extension LoginView : AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty && email.contains("@") && !password.isEmpty
    }
}

#Preview {
    LoginView(authService: AuthService())
}
