//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Yuqin Luo on 8/30/25.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("total " + String(model.info.pages))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }

}
