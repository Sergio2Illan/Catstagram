//
//  CustomTextField.swift
//  Catstagram
//
//  Created by Sergio Illan Illan on 5/12/21.
//

import UIKit

class CustomTextField: UITextField {
    
    
    init(placeholder: String) {
        super.init(frame: .zero)
        
        let spacer = UIView()
        leftView = spacer
        leftViewMode = .always
        
        spacer.setDimensions(height: 50, width: 12)
        
        borderStyle = .none
        textColor = .white
        keyboardAppearance = .dark
        keyboardType = .emailAddress
        backgroundColor = UIColor(white: 1, alpha: 0.1)
        setHeight(50)
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.7)])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
