//
//  DecimalUtils.swift
//  Bankey
//
//  Created by 신상용 on 9/30/23.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
