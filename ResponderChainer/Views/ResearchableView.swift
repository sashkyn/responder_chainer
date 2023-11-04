//
//  ResearchableView.swift
//  ResponderChainer
//
//  Created by Aleksandr Martseniuk on 04.11.2023.
//

import UIKit

final class ResearchableView: RespondableView {
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.backgroundColor = .black
        label.text = "Unknown"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    init(id: String, color: UIColor) {
        super.init(id: id)
        
        self.label.text = id
        self.label.backgroundColor = color
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(label)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor),
            label.trailingAnchor.constraint(equalTo: trailingAnchor),
            label.topAnchor.constraint(equalTo: topAnchor),
            label.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
