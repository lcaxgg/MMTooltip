//
//  UIViewController+Extension.swift
//  MMTooltip
//
//  Created by Jayvee on 3/19/25.
//

import UIKit

extension UIViewController {
    public func showTooltip(with attributes: PopoverAttributes) {
        view.add(subView: attributes.tipView)
        preferredContentSize = attributes.viewSize
        modalPresentationStyle = .popover
        
        if let presentationController = presentationController as? UIPopoverPresentationController {
            presentationController.backgroundColor = .clear
            presentationController.sourceView = attributes.superView
            presentationController.sourceRect = CGRect(x: attributes.x,
                                                       y: attributes.y,
                                                       width: .zero,
                                                       height: .zero)
            presentationController.permittedArrowDirections = attributes.arrowDirection
            view.backgroundColor = attributes.tipView.backgroundColor
            
            presentationController.delegate = attributes.tipViewVC
            attributes.superViewVC.present(attributes.tipViewVC, animated: true, completion: nil)
        }
    }
}

extension UIViewController: @retroactive UIAdaptivePresentationControllerDelegate {}
extension UIViewController: @retroactive UIPopoverPresentationControllerDelegate {
    public func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
}
