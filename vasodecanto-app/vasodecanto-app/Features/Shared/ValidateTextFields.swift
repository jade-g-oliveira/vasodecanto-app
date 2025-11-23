//
//  ValidateTextFields.swift
//  vasodecanto-app
//
//  Created by Jade Oliveira on 23/11/25.
//

import SwiftUI

extension String {
    var isValidEmail: Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: self)
    }
}

struct ValidationMessageView: View {
    let message: String
    var body: some View {
        Text(message)
            .foregroundColor(.red)
            .font(.heeboSemiBoldBody)
            .padding(.horizontal, Spacing.xxLarge)
            .frame(maxWidth: .infinity, alignment: .leading)
            .offset(y: -Spacing.extraSmall)
    }
}
