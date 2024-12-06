//
//  ViewCode.swift
//  TaxiMoove
//
//  Created by Rafael on 06/12/24.
//

import Foundation
protocol ViewCode {
    func addSubViews()
    func setupConstraints()
    func setupStyle()
}

extension ViewCode {
    func setupView() {
        addSubViews()
        setupConstraints()
        setupStyle()
    }
}
