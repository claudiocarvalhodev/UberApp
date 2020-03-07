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
        
        layer.cornerRadius = 5
        backgroundColor = .uberBlue
        setTitleColor(.white, for: .normal)
        heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

