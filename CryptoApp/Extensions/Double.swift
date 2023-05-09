//
//  Double.swift
//  CryptoApp
//
//  Created by Kamran Namazov on 28.12.22.
//

import Foundation

extension Double{
    private var currencyFormatter:NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    private var numberFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func toCurrency() -> String {
        return currencyFormatter.string(from: self as NSNumber) ?? "0.00"
    }
    func toPercent() -> String {
        guard let numberAsString = numberFormatter.string(for: self) else {return "" }
        return numberAsString + "%"
    }
}
