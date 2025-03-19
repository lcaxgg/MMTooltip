//
//  Attributes.swift
//  MMTooltip
//
//  Created by Jayvee on 3/19/25.
//

import UIKit

public struct TooltipViewAttributes {
    let backgroundColor: UIColor
    let text: String
    let font: UIFont
    let fontColor: UIColor
    let kern: CGFloat
    let lineHeight : CGFloat
    let alignment: NSTextAlignment
    
    public init(
        backgroundColor: UIColor,
        text: String,
        font: UIFont,
        fontColor: UIColor,
        kern: CGFloat,
        lineHeight: CGFloat,
        alignment: NSTextAlignment
    ) {
        self.backgroundColor = backgroundColor
        self.text = text
        self.font = font
        self.fontColor = fontColor
        self.kern = kern
        self.lineHeight = lineHeight
        self.alignment = alignment
    }
}

public struct PopoverAttributes {
    let superViewVC: UIViewController!
    let tipViewVC: UIViewController!
    let superView: UIView!
    let tipView: UIView!
    let arrowDirection: UIPopoverArrowDirection!
    let viewSize: CGSize!
    let x: CGFloat!
    let y: CGFloat!
    
    public init(
        superViewVC: UIViewController,
        tipViewVC: UIViewController,
        superView: UIView,
        tipView: UIView,
        arrowDirection: UIPopoverArrowDirection,
        viewSize: CGSize,
        x: CGFloat,
        y: CGFloat
    ) {
        self.superViewVC = superViewVC
        self.tipViewVC = tipViewVC
        self.superView = superView
        self.tipView = tipView
        self.arrowDirection = arrowDirection
        self.viewSize = viewSize
        self.x = x
        self.y = y
    }
}
