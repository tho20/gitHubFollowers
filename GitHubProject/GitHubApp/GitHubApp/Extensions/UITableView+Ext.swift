//
//  UITableView+Ext.swift
//  GitHubApp
//
//  Created by Thomas Verdier on 7/28/20.
//  Copyright © 2020 Thomas Verdier. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
