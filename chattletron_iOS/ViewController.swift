//
//  ViewController.swift
//  chattletron_iOS
//
//  Created by Andrew Bui on 19/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let chattletronNavigationController: UINavigationController = {
        let chattletronViewController = ChattletronViewController()
        let uiNavigationController = UINavigationController(rootViewController: chattletronViewController)
        uiNavigationController.modalPresentationStyle = .fullScreen
        return uiNavigationController
    }()
    
    private var openChattletronButton: UIButton = {
        let uiButton = UIButton()
        uiButton.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
        uiButton.layer.cornerRadius = 5.0
        uiButton.setTitle("Open Chat", for: .normal)
        uiButton.setTitleColor(UIColor.systemBlue, for: .normal)
        uiButton.backgroundColor = UIColor.white
        uiButton.addTarget(self, action: #selector(didTapOpenChattletronButton), for: UIControl.Event.touchUpInside)
        return uiButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBlue
        
        view.addSubview(openChattletronButton)
        openChattletronButton.center.x = view.center.x
        openChattletronButton.center.y = view.center.y
    }
    
    @objc func didTapOpenChattletronButton() {
        present(chattletronNavigationController, animated: true)
    }

}

