//
//  CurrencyPicker.swift
//
//  Created by James Sedlacek on 12/22/23.
//

import SwiftUI

public struct CurrencyPicker: View {
    @Environment(CurrencyProvider.self)
    private var currencyProvider
    @State private var isSheetPresented = false
    private let mostPopular: [Currency]

    public init(mostPopular: [Currency] = []) {
        self.mostPopular = mostPopular
    }

    public var body: some View {
        HStack(spacing: 4) {
            Text(currencyProvider.currency.title)
                .font(.subheadline)
            Image(systemName: "chevron.up.chevron.down")
                .font(.caption)
        }
        .foregroundStyle(.secondary)
        .onTapGesture {
            isSheetPresented = true
        }
        .sheet(isPresented: $isSheetPresented) {
            CurrencySheet(mostPopular: mostPopular)
        }
    }
}
