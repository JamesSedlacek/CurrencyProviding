//
//  CurrencyPicker.swift
//
//  Created by James Sedlacek on 12/22/23.
//

import SwiftUI

public struct CurrencyPicker: View {
    @Environment(CurrencyProvider.self)
    private var currencyProvider
    @Environment(\.dismiss)
    private var dismiss
    @State private var searchText = ""
    private let mostPopular: [Currency]

    private var isMostPopularShowing: Bool {
        !mostPopular.isEmpty && searchText.isEmpty
    }

    private var isContentUnavailableViewShowing: Bool {
        !searchText.isEmpty && filteredCurrencies.isEmpty
    }

    private var filteredCurrencies: [Currency] {
        return if searchText.isEmpty {
            Currency.allCases
        } else {
            Currency.allCases.filter {
                $0.title.localizedCaseInsensitiveContains(searchText) ||
                $0.currencyCode.localizedCaseInsensitiveContains(searchText)
            }
        }
    }

    private var currencySections: [(title: String, currencies: [Currency])] {
        return if searchText.isEmpty {
            Dictionary(grouping: Currency.allCases,
                       by: { String($0.title.prefix(1)) })
            .map { (title: $0.key, currencies: $0.value) }
            .sorted { $0.title < $1.title }
        } else {
            [("Search Results", filteredCurrencies)]
        }
    }

    // MARK: Initializer
    public init(mostPopular: [Currency] = []) {
        self.mostPopular = mostPopular
    }

    // MARK: Body
    public var body: some View {
        NavigationStack {
            List {
                mostPopularSection
                ForEach(currencySections, id: \.title) { section in
                    Section(section.title) {
                        ForEach(section.currencies) { currency in
                            selectableCell(currency)
                        }
                    }
                }
            }
            .navigationTitle("Currency Selection")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText,
                        placement: .navigationBarDrawer(displayMode: .always),
                        prompt: Text("Search for a currency"))
            .overlay {
                if isContentUnavailableViewShowing {
                    ContentUnavailableView.search(text: searchText)
                }
            }
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Done") { dismiss() }
                }
            }
        }
    }

    private func selectableCell(_ currency: Currency) -> some View {
        VStack(spacing: .zero) {
            CurrencyCell(currency: currency,
                         isSelected: currencyProvider.currency == currency)
            .contentShape(.rect)
            .onTapGesture {
                currencyProvider.currency = currency
            }
        }
    }

    @ViewBuilder
    private var mostPopularSection: some View {
        if isMostPopularShowing {
            Section("Most Popular") {
                ForEach(mostPopular) { currency in
                    selectableCell(currency)
                }
            }
        }
    }
}

// MARK: Previews
#Preview("Currency Selection") {
    @State var isPresented = true
    return VStack {
        Spacer()
    }
    .sheet(isPresented: $isPresented) {
        CurrencyPicker(mostPopular: [.dollar, .euro, .indianrupee])
            .environment(CurrencyProvider())
    }
}
