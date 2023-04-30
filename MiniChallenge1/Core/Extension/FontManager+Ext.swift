//
//  FontManager+Ext.swift
//  MiniChallenge1
//
//  Created by Patricia Ho on 30/04/23.
//

import Foundation
import UIKit
import SwiftUI

//MARK: - Font Parts
public extension UIFont {

    enum Family: String {
        case system = "SFUIText" //".SFUI"
        case inter = "Inter"

        //easy to change default app font family
        public static let defaultFamily = Family.system
    }

    enum CustomWeight: String {
        case regular = "Regular", medium = "Medium", light = "Light", heavy = "Heavy", bold, semibold, black
    }

    enum Size: CGFloat {
        case title1 = 58, menuTitle = 20
        case caption = 16, caption2 = 40
        case body32 = 32, body = 24, ax5body = 53
        case subheadline = 49
    }

    class func stringName(_ family: Family, _ weight: CustomWeight) -> String {
        /**
        Define incompatible family, weight  here
        in this case set defaults compatible values
        */
        let fontWeight: String
        switch (family, weight) {
//        case (.inter, .heavy):
//            fontWeight = CustomWeight.semibold.rawValue
//        case (.inter, .light):
//            fontWeight = "\(weight.rawValue)"
        default:
            fontWeight = weight.rawValue
            print("\(fontWeight)")
        }
        //put Family and Weight together
        let familyName = family.rawValue
        print("\(familyName)-\(fontWeight)")
        return fontWeight.isEmpty ? "\(familyName)" : "\(familyName)-\(fontWeight)"
    }
}

//MARK: - Initializers
public extension UIFont {
    
    convenience init(_ size: Size, _ weight: CustomWeight) {
        self.init(.defaultFamily, size, weight)
    }
    
    convenience init(_ family: Family = .defaultFamily,
                     _ size: Size, _ weight: CustomWeight) {
        self.init(name: UIFont.stringName(family, weight), size: size.rawValue)!
    }
}


@available(iOS 13.0, *)
extension Font {

    init(_ size: UIFont.Size, _ weight: UIFont.CustomWeight) {
        self.init(.defaultFamily, size, weight)
    }

    init(_ family: UIFont.Family = .defaultFamily,
                     _ size: UIFont.Size, _ weight: UIFont.CustomWeight) {
        self.init(UIFont(family, size, weight))
    }
}

// For Typography System!
extension Font {
    static var title1: Font {
        return Font.custom(UIFont.stringName(.defaultFamily, .heavy), size: UIFont.Size.title1.rawValue)
    }
}
