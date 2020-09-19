//
//  Date+Ext.swift
//  GitHubApp
//
//  Created by Thomas Verdier on 7/14/20.
//  Copyright © 2020 Thomas Verdier. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat  =  "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
