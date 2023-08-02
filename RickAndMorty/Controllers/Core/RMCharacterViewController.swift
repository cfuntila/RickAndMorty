//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Charity Funtila on 7/18/23.
//

import UIKit


/// Controller to show and search for Characters
class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Characters"
        let req = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        
        print(req.url)
        
        
    }
    

  

}
