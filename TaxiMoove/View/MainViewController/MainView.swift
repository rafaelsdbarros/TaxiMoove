//
//  MainView.swift
//  TaxiMoove
//
//  Created by Rafael on 06/12/24.
//

import Foundation
import UIKit

final class MainView: UIView {
    
    lazy var logoLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TaxiMoove"
        label.font = UIFont(name: "Pacifico-Regular", size: 42)
        label.tintColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var informationLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Clique abaixo para iniciar sua viagem."
        label.font = .systemFont(ofSize: 20)
        label.tintColor = .black
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    
    lazy var startButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 20
        button.backgroundColor = UIColor(hex: 0x05732F)
        button.setTitle("Iniciar", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30)
        return button
    }()
    
    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MainView: ViewCode {
    
    func addSubViews() {
        addSubview(logoLabel)
        addSubview(startButton)
        addSubview(informationLabel)
    }
    
    func setupConstraints() {
        
        logoLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        logoLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -30).isActive = true
        logoLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant:  30).isActive = true
        
        startButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
        startButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -30).isActive = true
        startButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant:  30).isActive = true
        startButton.heightAnchor.constraint(equalToConstant: 60 ).isActive = true
        
        informationLabel.bottomAnchor.constraint(equalTo: startButton.topAnchor, constant:  -30).isActive = true
        informationLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -30).isActive = true
        informationLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant:  30).isActive = true
    }
    
    func setupStyle() {
        backgroundColor = UIColor(hex: 0xFDFEFE)
    }
    
    
}
