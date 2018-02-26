//
//  HomeViewController.swift
//  Horizontal Scroll
//
//  Created by Sanket  Ray on 26/02/18.
//  Copyright © 2018 Sanket  Ray. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    lazy var horizontalMenuBar: HorizontalMenuBar = {
        let mb = HorizontalMenuBar()
        mb.homeViewControler = self
        return mb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)

        setupHorizontalMenuBar()
        setupNavigationBar()
    }
    
    func setupNavigationBar() {
        
        self.navigationController?.topViewController?.title = "Home"
        let textAttributes: [NSAttributedStringKey: Any]? = [NSAttributedStringKey(rawValue: NSAttributedStringKey.foregroundColor.rawValue): UIColor.white, NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 18)]
        self.navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        let searchImage = UIImage(named: "search")?.withRenderingMode(.alwaysOriginal)
        let searchButton = UIBarButtonItem(image: searchImage, style: .plain, target: self, action: nil)
        let moreOptionsImage = UIImage(named: "moreOptions")?.withRenderingMode(.alwaysOriginal)
        let moreOptionsButton = UIBarButtonItem(image: moreOptionsImage, style: .plain, target: self, action: nil)
        let hamburgerImage = UIImage(named: "hamburger")
        let hamburgerButton = UIBarButtonItem(image: hamburgerImage, style: .plain, target: self, action: nil)
        hamburgerButton.tintColor = .white
        
        navigationItem.rightBarButtonItems = [moreOptionsButton, searchButton]
        navigationItem.leftBarButtonItem = hamburgerButton
    }
    
    func setupHorizontalMenuBar() {
        view.addSubview(horizontalMenuBar)
        horizontalMenuBar.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 50)
    }
    

}

extension UINavigationController {
    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

