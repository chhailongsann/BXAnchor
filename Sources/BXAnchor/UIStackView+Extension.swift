//
//  UIStackView+Extension.swift
//  BXAnchor
//
//  Created by Sann Chhailong on 10/6/25.
//


import UIKit

extension UIStackView {
    
    
    @discardableResult
    public func padAll(_ padding: CGFloat) -> UIStackView {
        isLayoutMarginsRelativeArrangement = true
        layoutMargins.right = padding
        layoutMargins.left = padding
        layoutMargins.bottom = padding
        layoutMargins.top = padding
        return self
    }
    
    
    @discardableResult
    public func spacing(_ value: CGFloat) -> UIStackView {
        self.spacing = value
        return self
    }
    @discardableResult
    public func alignment(_ value: UIStackView.Alignment) -> UIStackView {
        self.alignment = value
        return self
    }
    
    @discardableResult
    public func distribution(_ value: UIStackView.Distribution) -> UIStackView {
        self.distribution = value
        return self
    }
    
    @discardableResult
    public func paddingSymmetri(horizontal: CGFloat = 0, vertical: CGFloat = 0) -> UIStackView {
        isLayoutMarginsRelativeArrangement = true
        layoutMargins.right = horizontal
        layoutMargins.left = horizontal
        layoutMargins.bottom = vertical
        layoutMargins.top = vertical
        return self
    }
    
    @discardableResult
    public func padding(top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) -> UIStackView {
        isLayoutMarginsRelativeArrangement = true
        layoutMargins.right = right
        layoutMargins.left = left
        layoutMargins.bottom = bottom
        layoutMargins.top = top
        return self
    }
}
