//
//  CurrencyCell.swift
//
//  Created by James Sedlacek on 12/22/23.
//

import SwiftUI

struct CurrencyCell: View {
    private let currency: Currency
    private let isSelected: Bool

    init(currency: Currency, isSelected: Bool) {
        self.currency = currency
        self.isSelected = isSelected
    }

    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: currency.systemName)
                .font(.title2)
                .fontWeight(.semibold)
            VStack(alignment: .leading) {
                Text(currency.title)
                    .font(.title3)
                    .fontWeight(.semibold)
                Text(currency.currencyCode)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            if isSelected {
                Image(systemName: "checkmark")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.accentColor)
            }
        }
        .padding(.vertical, 6)
    }
}

#Preview {
    CurrencyCell(currency: .dollar, isSelected: true)
}
