//
//  CurrencyProvider.swift
//
//  Created by James Sedlacek on 12/22/23.
//

import Foundation

@Observable
public final class CurrencyProvider: CurrencyProviding {
    private static let currencyKey = "selectedCurrency"
    private let defaultCurrency: Currency
    private let userDefaults: UserDefaults

    public var currency: Currency {
        get {
            access(keyPath: \.currency)
            let currencyRawValue = userDefaults.string(forKey: Self.currencyKey) ?? defaultCurrency.rawValue
            return Currency(rawValue: currencyRawValue) ?? defaultCurrency
        }
        set {
            withMutation(keyPath: \.currency) {
                userDefaults.set(newValue.rawValue, forKey: Self.currencyKey)
            }
        }
    }

    public init(defaultCurrency: Currency = .dollar,
                userDefaults: UserDefaults = .standard) {
        self.defaultCurrency = defaultCurrency
        self.userDefaults = userDefaults
    }
}
