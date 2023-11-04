//
//  ViewController.swift
//  ResponderChainer
//
//  Created by Aleksandr Martseniuk on 04.11.2023.
//

import UIKit

class ViewController: RespondableViewController {
    
    private lazy var view1: UIView = ResearchableView(id: "Label 1", color: .black)
    private lazy var view2: UIView = ResearchableView(id: "Label 2", color: .blue)
    private lazy var view3: UIView = ResearchableView(id: "Label 3", color: .red)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        [view1, view2, view3].enumerated().forEach { (index: Int, subview: UIView) in
            view.addSubview(subview)
            NSLayoutConstraint.activate([
                subview.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(100 * (index + 1))),
                subview.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                subview.widthAnchor.constraint(equalToConstant: 100),
                subview.heightAnchor.constraint(equalToConstant: 100)
            ])
        }
    }
}
