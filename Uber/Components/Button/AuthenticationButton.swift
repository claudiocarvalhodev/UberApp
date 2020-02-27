//
//  AuthenticationButton.swift
//  Uber
//
//  Created by claudiocarvalho on 27/02/20.
//  Copyright © 2020 claudiocarvalho. All rights reserved.
//

import UIKit

class AuthenticationButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setTitleColor(UIColor(white: 1, alpha: 0.5), for: .normal)
        backgroundColor = .uberBlue
        layer.cornerRadius = 5
        heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

