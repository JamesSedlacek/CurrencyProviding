//
//  Currency.swift
//
//  Created by James Sedlacek on 12/22/23.
//

import Foundation

/// Currency is an enumeration that represents different currencies.
/// Each case in the enumeration represents a different currency.
/// It provides the title, system name, and currency code of each currency.
public enum Currency: String, Identifiable, Hashable, CaseIterable {
    case austral
    case baht
    case brazilianreal
    case cedi
    case coloncurrency
    case cruzeiro
    case dollar
    case dong
    case euro
    case florin
    case franc
    case guarani
    case hryvnia
    case indianrupee
    case kip
    case lari
    case lira
    case manat
    case mill
    case naira
    case peseta
    case peso
    case ruble
    case rupee
    case shekel
    case sterling
    case tenge
    case tugrik
    case turkishlira
    case won
    case yen

    public var id: Self { self }

    // MARK: Symbol
    /// The symbol representation of the currency.
    var symbol: String {
        switch self {
        case .austral:
            return "₳"
        case .baht:
            return "฿"
        case .brazilianreal:
            return "R$"
        case .cedi:
            return "₵"
        case .coloncurrency:
            return "₡"
        case .cruzeiro:
            return "₢"
        case .dollar:
            return "$"
        case .dong:
            return "₫"
        case .euro:
            return "€"
        case .florin:
            return "ƒ"
        case .franc:
            return "₣"
        case .guarani:
            return "₲"
        case .hryvnia:
            return "₴"
        case .indianrupee:
            return "₹"
        case .kip:
            return "₭"
        case .lari:
            return "₾"
        case .lira:
            return "₤"
        case .manat:
            return "₼"
        case .mill:
            return "₥"
        case .naira:
            return "₦"
        case .peseta:
            return "₧"
        case .peso:
            return "₱"
        case .ruble:
            return "₽"
        case .rupee:
            return "₨"
        case .shekel:
            return "₪"
        case .sterling:
            return "£"
        case .tenge:
            return "₸"
        case .tugrik:
            return "₮"
        case .turkishlira:
            return "₺"
        case .won:
            return "₩"
        case .yen:
            return "¥"
        }
    }

    // MARK: Title
    /// The title representation of the currency symbol.
    var title: String {
        switch self {
        case .austral:
            return "Austral"
        case .baht:
            return "Baht"
        case .brazilianreal:
            return "Brazilian Real"
        case .cedi:
            return "Cedi"
        case .coloncurrency:
            return "Colon Currency"
        case .cruzeiro:
            return "Cruzeiro"
        case .dollar:
            return "Dollar"
        case .dong:
            return "Dong"
        case .euro:
            return "Euro"
        case .florin:
            return "Florin"
        case .franc:
            return "Franc"
        case .guarani:
            return "Guarani"
        case .hryvnia:
            return "Hryvnia"
        case .indianrupee:
            return "Indian Rupee"
        case .kip:
            return "Kip"
        case .lari:
            return "Lari"
        case .lira:
            return "Lira"
        case .manat:
            return "Manat"
        case .mill:
            return "Mill"
        case .naira:
            return "Naira"
        case .peseta:
            return "Peseta"
        case .peso:
            return "Peso"
        case .ruble:
            return "Ruble"
        case .rupee:
            return "Rupee"
        case .shekel:
            return "Shekel"
        case .sterling:
            return "Sterling"
        case .tenge:
            return "Tenge"
        case .tugrik:
            return "Tugrik"
        case .turkishlira:
            return "Turkish Lira"
        case .won:
            return "Won"
        case .yen:
            return "Yen"
        }
    }

    // MARK: System Name
    /// The system name representation of the currency symbol.
    var systemName: String {
        switch self {
        case .austral:
            return "australsign"
        case .baht:
            return "bahtsign"
        case .brazilianreal:
            return "brazilianrealsign"
        case .cedi:
            return "cedisign"
        case .coloncurrency:
            return "coloncurrencysign"
        case .cruzeiro:
            return "cruzeirosign"
        case .dollar:
            return "dollarsign"
        case .dong:
            return "dongsign"
        case .euro:
            return "eurosign"
        case .florin:
            return "florinsign"
        case .franc:
            return "francsign"
        case .guarani:
            return "guaranisign"
        case .hryvnia:
            return "hryvniasign"
        case .indianrupee:
            return "indianrupeesign"
        case .kip:
            return "kipsign"
        case .lari:
            return "larisign"
        case .lira:
            return "lirasign"
        case .manat:
            return "manatsign"
        case .mill:
            return "millsign"
        case .naira:
            return "nairasign"
        case .peseta:
            return "pesetasign"
        case .peso:
            return "pesosign"
        case .ruble:
            return "rublesign"
        case .rupee:
            return "rupeesign"
        case .shekel:
            return "shekelsign"
        case .sterling:
            return "sterlingsign"
        case .tenge:
            return "tengesign"
        case .tugrik:
            return "tugriksign"
        case .turkishlira:
            return "turkishlirasign"
        case .won:
            return "wonsign"
        case .yen:
            return "yensign"
        }
    }

    // MARK: Currency Code
    /// The currency code representation of the currency symbol.
    var currencyCode: String {
        switch self {
        case .austral:
            return "ARS"
        case .baht:
            return "THB"
        case .brazilianreal:
            return "BRL"
        case .cedi:
            return "GHS"
        case .coloncurrency:
            return "CRC"
        case .cruzeiro:
            return "BRC"
        case .dollar:
            return "USD"
        case .dong:
            return "VND"
        case .euro:
            return "EUR"
        case .florin:
            return "AWG"
        case .franc:
            return "CHF"
        case .guarani:
            return "PYG"
        case .hryvnia:
            return "UAH"
        case .indianrupee:
            return "INR"
        case .kip:
            return "LAK"
        case .lari:
            return "GEL"
        case .lira:
            return "ITL"
        case .manat:
            return "AZN"
        case .mill:
            return "MIL"
        case .naira:
            return "NGN"
        case .peseta:
            return "ESP"
        case .peso:
            return "COP"
        case .ruble:
            return "RUB"
        case .rupee:
            return "INR"
        case .shekel:
            return "ILS"
        case .sterling:
            return "GBP"
        case .tenge:
            return "KZT"
        case .tugrik:
            return "MNT"
        case .turkishlira:
            return "TRY"
        case .won:
            return "KRW"
        case .yen:
            return "JPY"
        }
    }
}
