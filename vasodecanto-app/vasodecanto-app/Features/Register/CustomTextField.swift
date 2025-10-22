//
//  CustomTextField.swift
//  vasodecanto-app
//
//  Created by Adan on 21/10/25.
//

import SwiftUI

struct CustomTextField: View {
    var iconName: String?
    var placeholder: String
    @Binding var text: String
    var isSecure: Bool = false

    var body: some View {
        HStack {
            if let icon = iconName {
                Image(systemName: icon)
                    .foregroundColor(Color("SecundaryAppColor").opacity(0.6))
            }

            ZStack(alignment: .leading) {
                // Placeholder personalizado
                if text.isEmpty {
                    Text(placeholder)
                        .foregroundColor(Color("SecundaryAppColor").opacity(0.6))
                        .font(.heeboSemiBoldBody)
                }

                // Campo de texto real
                if isSecure {
                    SecureField("", text: $text)
                        .foregroundColor(Color("SecundaryAppColor"))
                } else {
                    TextField("", text: $text)
                        .foregroundColor(Color("SecundaryAppColor"))
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
        .padding(.horizontal, 24)
        .frame(maxWidth: 380)
    }
}

#Preview {
    @Previewable @State var text = ""

    return CustomTextField(
        iconName: "envelope",
        placeholder: "E-mail",
        text: .constant(""),
        isSecure: false
    )
}
