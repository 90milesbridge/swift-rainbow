//
//  ViewController.swift
//  swift-rainbow
//
//  Created by Reinier Guerra on 6/22/19.
//  Copyright © 2019 nexxtway. All rights reserved.
//

import UIKit
import Material
import Motion


struct ButtonLayout {
    struct Flat {
        static let width: CGFloat = 120
        static let height: CGFloat = 44
        static let offsetY: CGFloat = -150
    }
    
    struct Raised {
        static let width: CGFloat = 150
        static let height: CGFloat = 44
        static let offsetY: CGFloat = -75
    }
    
    struct Fab {
        static let diameter: CGFloat = 48
    }
    
    struct Icon {
        static let width: CGFloat = 120
        static let height: CGFloat = 48
        static let offsetY: CGFloat = 75
    }
}

class ViewController: UIViewController {
    fileprivate let transitionViewController = UIViewController()
    
    fileprivate var menuButton: IconButton!
    fileprivate var starButton: IconButton!
    fileprivate var searchButton: IconButton!
    
    fileprivate var fabButton: FABButton!
    let v1 = UIView();
    
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        v1.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        v1.motionIdentifier = "v1"
        v1.backgroundColor = .purple
        self.view.addSubview(v1)
        
        menuButton = IconButton(image: Icon.cm.menu)
        
        self.navigationItem.titleLabel.text = "Material"
        navigationItem.detailLabel.text = "Build Beautiful Software"
        
        fabButton = FABButton(image: Icon.photoCamera)
        fabButton.addTarget(self, action: #selector(handleNextButton), for: .touchUpInside)
        view.layout(fabButton).width(64).height(64).bottom(24).right(24)
        
//        let button1 = FlatButton(title: "Flat Button 1")
//        let button2 = FlatButton(title: "Flat Button 2")
//
//        button1
//            .addTarget(self, action: #selector(handleClick), for: .touchUpInside)
//
//        view.layout(button1)
//            .top(200)
//            .left(200)
//            .width(ButtonLayout.Flat.width)
//            .height(ButtonLayout.Flat.height)
//
//
//        view.layout(button2)
//            .top(300)
//            .left(200)
//            .width(ButtonLayout.Flat.width)
//            .height(ButtonLayout.Flat.height)
    }
    
    @objc
    func handleNextButton() {
        transitionViewController.view.backgroundColor = .blue
        navigationController?.pushViewController(transitionViewController, animated: true)
    }
    
    @objc func handleClick() {
//        forgotPassword.view.backgroundColor = .blue
//        present(forgotPassword, animated: true);
//        let alert = UIAlertController(title: "OK", message: "pepe", preferredStyle: .alert);
//        present(alert, animated: true);
    }
}
