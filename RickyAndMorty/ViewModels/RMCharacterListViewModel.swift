//
//  RMCharacterListViewModel.swift
//  RickyAndMorty
//
//  Created by daicanglan on 2023/4/2.
//

import Foundation
import UIKit

final class RMCharacterListViewModel: NSObject {
    
    func fetchCharacters() {
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharacterResponse.self) { result in
            switch result {
            case .success(let model):
                print("Example image url " + String(model.results.first?.image ?? "No Image"))
                break
            case .failure(let error):
                print(error)
                break
            }
        }
    }
}

extension RMCharacterListViewModel: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
                        withReuseIdentifier: RMCharacterCollectionViewCell.cellIdentifier,
                        for: indexPath) as? RMCharacterCollectionViewCell else { fatalError("Unsupported cell") }
        let viewModel = RMCharacterCollectionViewCellViewModel(
                                        characterName: "Afraz",
                                        characterStatus: .alive,
                                        characterImageUrl: URL(string: "https://rickandmortyapi.com/api/character/avatar/1.jpeg"))
        cell.configure(with: viewModel)
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = UIScreen.main.bounds
        let width = (bounds.width - 30) / 2
        return CGSize(width: width, height: width * 1.5)
    }
}

