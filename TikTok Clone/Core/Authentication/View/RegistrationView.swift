//
//  LoginView.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-17.
//

import SwiftUI

struct RegistrationView: View {
    @Environment(\.dismiss) var dismiss
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @StateObject var viewModel = RegistrationViewModel(authService: AuthService())
    var body: some View {
        VStack {
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
                TextField("Enter your full name", text: $fullname)
                    .textInputAutocapitalization(.never)
                    .modifier(StandardTextModifier())
                TextField("Enter your username", text: $username)
                    .textInputAutocapitalization(.never)
                    .modifier(StandardTextModifier())
            }
            //button
            Button {
                Task { await viewModel.createUser(email : email, password : password, fullname : fullname, username : username)}
            } label: {
                Text("Signup")
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                    .font(.subheadline)
                    .frame(width: 350, height: 44)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.vertical)
            }
            .disabled(!formIsValid)
            .opacity(formIsValid ? 1 : 0.7)
            
            Spacer()
            Divider()
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    +
                    Text(" Sign In")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .padding(.vertical)
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundStyle(.black)
                }
            }
        }
    }
}

extension RegistrationView : AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty && email.contains("@") && !password.isEmpty && !fullname.isEmpty && !username.isEmpty
    }
}

#Preview {
    RegistrationView()
}
