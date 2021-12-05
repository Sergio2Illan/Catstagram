//
//  CustomButton.swift
//  Catstagram
//
//  Created by Sergio Illan Illan on 6/12/21.
//

import UIKit

class CustomButton: UIButton {
    
    init(title: String){
        super.init(frame: .zero)
        
        setTitle(title, for: .normal)
        setTitleColor(.white, for: .normal)
        backgroundColor = .systemPurple
        layer.cornerRadius = 5
        setHeight(50)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
