//
//  Theme.swift
//  PodcastApp
//
//  Created by Kaan Uzman on 25/10/23.
//

import Foundation
import UIKit

struct Theme {
    let themeColor: ThemeColor
    let themeFont: ThemeFont
}

struct ThemeColor {
    /// Primary color of the theme.
    let primaryColor: UIColor
    /// Secondary color of the theme.
    let secondaryColor: UIColor
    /// Background color of the theme.
    let backgroundColor: UIColor
    /// Button background color of the theme.
    let buttonBackgroundColor: UIColor
    /// Text color of the theme.
    let textColor: UIColor
}

struct ThemeFont {
    let headlineFont: UIFont
    let bodyFont: UIFont
}

extension Theme {
    static var defaultTheme: Theme {
        return Theme(
            themeColor: ThemeColor(
                primaryColor: .primary,
                secondaryColor: .green,
                backgroundColor: .systemBackground,
                buttonBackgroundColor: .primary,
                textColor: .white
            ),
            themeFont: ThemeFont(
                headlineFont: .systemFont(ofSize: FontSize.headline),
                bodyFont: .systemFont(ofSize: FontSize.body)
            )
        )
    }
}
