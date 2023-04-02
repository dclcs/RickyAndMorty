//
//  Extensions.swift
//  RickyAndMorty
//
//  Created by daicanglan on 2023/4/2.
//

import UIKit

extension UIView {
    func addSubViews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}

