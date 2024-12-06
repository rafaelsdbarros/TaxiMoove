//
//  UIColor.swift
//  TaxiMoove
//
//  Created by Rafael on 06/12/24.
//

import Foundation
import UIKit

extension UIColor {
        convenience init(hex: Int) {
            let components = (
                R: CGFloat((hex >> 16) & 0xff) / 255,
                G: CGFloat((hex >> 08) & 0xff) / 255,
                B: CGFloat((hex >> 00) & 0xff) / 255
            )
            self.init(red: components.R, green: components.G, blue: components.B, alpha: 1)
        }
}
