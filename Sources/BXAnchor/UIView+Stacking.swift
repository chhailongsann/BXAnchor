//
//  UIView+Stacking.swift
//  BXAnchor
//
//  Created by Sann Chhailong on 10/6/25.
//


import UIKit

@available(iOS 11.0, tvOS 11.0, *)
extension UIView {
  
  fileprivate func _stack(_ axis: NSLayoutConstraint.Axis = .vertical, views: [UIView?], spacing: CGFloat = 0, alignment: UIStackView.Alignment = .fill, distribution: UIStackView.Distribution = .fill) -> UIStackView {
    let _views = views.compactMap { $0 }
    let stackView = UIStackView(arrangedSubviews: _views)
    stackView.axis = axis
    stackView.spacing = spacing
    stackView.alignment = alignment
    stackView.distribution = distribution
    stackView.layout(in: self) {
      $0.fill()
    }
    return stackView
  }
  
  @discardableResult
  public func vstack(_ views: UIView?..., spacing: CGFloat = 0, alignment: UIStackView.Alignment = .fill, distribution: UIStackView.Distribution = .fill) -> UIStackView {
    return _stack(.vertical, views: views, spacing: spacing, alignment: alignment, distribution: distribution)
  }
  @discardableResult
  public func stack(_ views: [UIView]) -> UIStackView {
    return _stack(.vertical, views: views)
  }
  
  @discardableResult
  public func hstack(_ views: UIView..., spacing: CGFloat = 0, alignment: UIStackView.Alignment = .fill, distribution: UIStackView.Distribution = .fill) -> UIStackView {
    return _stack(.horizontal, views: views, spacing: spacing, alignment: alignment, distribution: distribution)
  }
  
}

extension CGSize {
  static public func equalEdge(_ edge: CGFloat) -> CGSize {
    return .init(width: edge, height: edge)
  }
}

extension CGSize {
  static public func square(_ wid: CGFloat) -> CGSize {
    return .init(width: wid, height: wid)
  }
}

extension UIImageView {
  convenience public init(image: UIImage?, contentMode: UIView.ContentMode = .scaleAspectFit) {
    self.init(image: image)
    self.contentMode = contentMode
    self.clipsToBounds = true
  }
  convenience init(cornerRadius: CGFloat = 0, image: UIImage?, contentMode: UIView.ContentMode = .scaleAspectFit, tintColor: UIColor = .black) {
    self.init(image: nil)
    self.image = image
    self.tintColor = tintColor
    self.layer.cornerRadius = cornerRadius
    self.clipsToBounds = true
    self.contentMode = contentMode
    self.isUserInteractionEnabled = true
  }
}
