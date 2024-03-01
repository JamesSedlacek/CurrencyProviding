# CurrencyProviding

[![Swift Package Manager](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)
[![GitHub stars](https://img.shields.io/github/stars/JamesSedlacek/CurrencyProviding.svg)](https://github.com/JamesSedlacek/CurrencyProviding/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/JamesSedlacek/CurrencyProviding.svg?color=blue)](https://github.com/JamesSedlacek/CurrencyProviding/network)
[![GitHub contributors](https://img.shields.io/github/contributors/JamesSedlacek/CurrencyProviding.svg?color=blue)](https://github.com/JamesSedlacek/CurrencyProviding/network)
<a href="https://github.com/JamesSedlacek/CurrencyProviding/pulls"><img src="https://img.shields.io/github/issues-pr/JamesSedlacek/CurrencyProviding" alt="Pull Requests Badge"/></a>
<a href="https://github.com/JamesSedlacek/CurrencyProviding/issues"><img src="https://img.shields.io/github/issues/JamesSedlacek/CurrencyProviding" alt="Issues Badge"/></a>


<p align="left">
  <img src = "https://github.com/JamesSedlacek/CurrencyProviding/blob/main/Assets/CurrencyPicker_Light.png" width="350">
  <img src = "https://github.com/JamesSedlacek/CurrencyProviding/blob/main/Assets/CurrencyPicker_Dark.png" width="350">
</p>

## Description
`CurrencyProviding` is a SwiftUI library that allows users to select a currency for an application. <br>
The selected currency will be used for icons, strings, and text fields throughout the application.

<br>

## Requirements

- **iOS**: 17.0 or later.

<br>

## Installation

You can install `CurrencyProviding` using the Swift Package Manager.

1. In Xcode, select "File" > "Add Package Dependencies".
2. Copy & paste the following into the "Search or Enter Package URL" search bar.
```
https://github.com/JamesSedlacek/CurrencyProviding.git
```
4. Xcode will fetch the repository & the "CurrencyProviding" library will be added to your project.

<br>

## Getting Started

1. Add `CurrencyProviding` to your project.
```swift
import CurrencyProviding
import SwiftUI

struct ContentView: View {
    @State private var currencyProvider: CurrencyProvider = .init()

    var body: some View {
        VStack {
            Text("Hello, world!")
        }
        .environment(currencyProvider)
    }
}
```

<br>

2. Add `CurrencyPicker` to the settings screen in your project.
```swift
import CurrencyProviding
import SwiftUI

struct SettingsView {
    var body: some View {
        VStack {
            CurrencyPicker()
        }
    }
}
```

<br>

3. Use `CurrencyProvider` for Icons, Strings, and TextFields.
```swift
import CurrencyProviding
import SwiftUI

struct ExampleView: View {
    @Environment(CurrencyProvider.self)
    private var currencyProvider

    @State private var someNumber: Decimal = 0

    private var decimalToCurrencyString: String {
        currencyProvider.text(for: someNumber)
    }

    var body: some View {
        VStack {
            CurrencyTextField(value: $someNumber)

            currencyProvider.icon(withCircle: true)
        }
    }
}
```

<br>

## Author

James Sedlacek, find me on [X/Twitter](https://twitter.com/jsedlacekjr) or [LinkedIn](https://www.linkedin.com/in/jamessedlacekjr/)
