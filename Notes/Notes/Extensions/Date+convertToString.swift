//
//  Date+convertToString.swift
//  Notes
//
//  Created by Assumani, Medi on 2/23/18.
//  Copyright © 2018 Assumani, Medi. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToString() -> String {
        return DateFormatter.localizedString(from: self, dateStyle: DateFormatter.Style.medium, timeStyle: DateFormatter.Style.medium)
    }
}

extension NSDate {
    func convertToString() -> String {
        return DateFormatter.localizedString(from: (self as Date), dateStyle: DateFormatter.Style.medium, timeStyle: DateFormatter.Style.medium)
    }
}
