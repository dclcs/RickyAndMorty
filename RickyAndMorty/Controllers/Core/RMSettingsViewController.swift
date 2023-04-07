//
//  RMSettingsViewController.swift
//  RickyAndMorty
//
//  Created by daicanglan on 2023/4/1.
//

import SwiftUI
import UIKit

/// Controller to show various options and settings
class RMSettingsViewController: UIViewController {
    private let settingsSwiftUIViewController = UIHostingController(
        rootView: RMSettingsView(
            viewModel: RMSettingsViewViewModel(
                cellViewModels: RMSettingsOption.allCases.compactMap({
                    RMSettingsCellViewModel(type: $0)
                })
            )
        )
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Settings"
        addSwiftUiController()
    }
    
    private func addSwiftUiController() {
        addChild(settingsSwiftUIViewController)
        settingsSwiftUIViewController.didMove(toParent: self)
        
        view.addSubview(settingsSwiftUIViewController.view)
        settingsSwiftUIViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            settingsSwiftUIViewController.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            settingsSwiftUIViewController.view.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            settingsSwiftUIViewController.view.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            settingsSwiftUIViewController.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}
