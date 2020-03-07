//
//  UITextField+Extensions.swift
//  Uber
//
//  Created by claudiocarvalho on 27/02/20.
//  Copyright © 2020 claudiocarvalho. All rights reserved.
//

import UIKit

extension UITextField {
    
    func textField(withPlaceholder placeholder: String, isSecureTextEntry: Bool) -> UITextField {
        let tf = UITextField()
        tf.borderStyle = .none
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.textColor = .white
        tf.keyboardAppearance = .dark
        tf.isSecureTextEntry = isSecureTextEntry
        tf.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        return tf
    }
}
