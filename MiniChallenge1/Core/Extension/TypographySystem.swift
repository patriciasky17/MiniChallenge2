//
//  TypographySystem.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 30/04/23.
//

import Foundation
import SwiftUI

enum FontType: String {
  case system = "SFUIText"
  
  var name: String {
    self.rawValue.capitalized
  }
}

enum FontWeight: String {
  case extraLight
  case light
  case thin
  case regular
  case medium
  case semiBold
  case bold
  case extraBold
  case black
    case heavy
  
  case extraLightItalic
  case lightItalic
  case thinItalic
  case regularItalic
  case mediumItalic
  case semiBoldItalic
  case boldItalic
  case extraBoldItalic
  case blackItalic
  
  var name: String {
    "-" + self.rawValue.capitalized
  }
}


@available(iOS 14, *)
extension Font {
  
    static private func font(type: FontType, weight: FontWeight, style: UIFont.TextStyle) -> Font {
        .custom(type.name + weight.name, size: UIFont.preferredFont(forTextStyle: style).pointSize)
    }
    
    static private func font(type: FontType, weight: FontWeight, size: CGFloat) -> Font {
        .custom(type.name + weight.name, size: size)
      }
  /// A font with the large title text style.
    static let appLargeTitle = font(type: .system, weight: .heavy, size: 52)
  
  /// A font with the title text style.
  static let appTitle = font(type: .system, weight: .bold, style: .title1)
  
  /// A font for second level hierarchical headings.
    static let appSecondaryTitle = font(type: .system, weight: .bold, style: .title2)
  
  /// A font for third level hierarchical headings.
    static let appTertiaryTitle = font(type: .system, weight: .bold, style: .title3)
  
  /// A font with the headline text style.
    static let appHeadline = font(type: .system, weight: .bold, style: .headline)
  
  /// A font with the body text style.
    static let appBody = font(type: .system, weight: .regular, style: .body)

  /// A font with the callout text style.
    static let appCallout = font(type: .system, weight: .regular, style: .callout)
  
  /// A font with the caption text style.
    static let appCaption = font(type: .system, weight: .regular, style: .caption1)
  
  /// A font with the credits text style.
  static let appCredits = font(type: .system, weight: .light, style: .caption2)
}
