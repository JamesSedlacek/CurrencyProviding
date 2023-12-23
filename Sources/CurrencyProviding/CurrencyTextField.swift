//
//  CurrencyTextField.swift
//
//  Created by James Sedlacek on 12/22/23.
//

import SwiftUI

public struct CurrencyTextField: View {
    @Environment(CurrencyProvider.self)
    private var currencyProvider
    @Binding private var value: Decimal
    @FocusState private var isFocused: Bool
    private let titleKey: LocalizedStringKey
    private let prompt: String?

    public init(titleKey: LocalizedStringKey = "",
                value: Binding<Decimal>,
                prompt: String? = nil) {
        self.titleKey = titleKey
        self._value = value
        self.prompt = prompt
    }

    public var body: some View {
        TextField(titleKey, value: $value,
                  format: .currency(code: currencyProvider.currency.currencyCode),
                  prompt: promptView)
        .focused($isFocused)
#if !os(macOS)
        .keyboardType(.decimalPad)
#endif
    }

    @ViewBuilder
    private var promptView: Text? {
        if let prompt { Text(prompt) }
    }
}

#if DEBUG
struct CurrencyTextField_Previews: PreviewProvider {
    @State static var value: Decimal = 0.00
    static var previews: some View {
        CurrencyTextField(titleKey: "Currency",
                          value: $value,
                          prompt: "Enter amount")
        .environment(CurrencyProvider())
        .padding()
        .frame(width: 200)
    }
}
#endif
