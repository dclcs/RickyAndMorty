//
//  RMCharacterViewController.swift
//  RickyAndMorty
//
//  Created by daicanglan on 2023/4/1.
//

import UIKit

/// Controller to search for Characters
class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        print("URL: \(RMRequest.listCharactersRequests.url)")
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharacterResponse.self) { result in
            switch result {
            case .success(let model):
                print(model)
                break
            case .failure(let error):
                print(error)
                break
            }
        }
    }


}
