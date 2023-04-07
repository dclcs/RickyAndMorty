//
//  RMSettingsCellViewModel.swift
//  RickyAndMorty
//
//  Created by daicanglan on 2023/4/7.
//

import Foundation
import UIKit

struct RMSettingsCellViewModel: Identifiable, Hashable {
    
    var id = UUID()
    
    // MARK: - Public
    public var image: UIImage? {
        return type.iconImage
    }
    public var title: String {
        return type.displayTitle
    }
    
    public var iconContainerColor: UIColor {
        return type.iconContainerColor
    }
    
    private let type: RMSettingsOption
    
    // MARK: - Init
    init(type: RMSettingsOption) {
        self.type = type
    }
}
