//
//  CurrencyProviding.swift
//
//  Created by James Sedlacek on 5/25/23.
//

import SwiftUI

public protocol CurrencyProviding {
    var currency: Currency { get set }
    func icon(withCircle: Bool) -> Image
    func text(for value: Decimal) -> String
}

public extension CurrencyProviding {
    /// Formats the given value as a currency string.
    func text(for value: Decimal) -> String {
        value.formatted(.currency(code: currency.currencyCode).grouping(.automatic))
    }
    
    /// Returns an SF Symbol Image for the currency, optionally with a circle.
    func icon(withCircle: Bool = false) -> Image {
        return if withCircle {
            Image(systemName: currency.systemName + ".circle")
        } else {
            Image(systemName: currency.systemName)
        }
    }
}
