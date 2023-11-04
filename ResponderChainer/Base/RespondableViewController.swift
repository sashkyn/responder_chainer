//
//  RespondableViewController.swift
//  ResponderChainer
//
//  Created by Aleksandr Martseniuk on 04.11.2023.
//

import UIKit

open class RespondableViewController: UIViewController {
    
    open override func loadView() {
        view = ResearchableView(id: "MainView", color: .brown)
    }
}
