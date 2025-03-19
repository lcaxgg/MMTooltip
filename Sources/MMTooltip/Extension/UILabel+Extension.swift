//
//  UILabel+Extension.swift
//  MMTooltip
//
//  Created by Jayvee on 3/19/25.
//

import UIKit

extension UILabel {
    func configure(with attributes: TooltipViewAttributes) {
        guard !attributes.text.isEmpty else { return }
        
        let attr: [NSAttributedString.Key : Any] = [
            .font: attributes.font as Any,
            .foregroundColor: attributes.fontColor as Any,
            .kern: attributes.kern as Any
        ]
        
        let attributedString = NSMutableAttributedString(string: attributes.text, attributes: attr)
        
        let style = NSMutableParagraphStyle()
        style.alignment = attributes.alignment
        style.minimumLineHeight = attributes.lineHeight
        
        attributedString.addAttribute(.paragraphStyle, value: style, range: NSRange(location: .zero, length: attributedString.length))
        
        attributedText = attributedString as NSAttributedString
    }
}
