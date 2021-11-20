//
//  LoginController.swift
//  Catstagram
//
//  Created by Sergio Illan Illan on 20/11/21.
//

import UIKit


class LoginController: UIViewController {
    
    //MARK: - Properties
    
    private let iconImage: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "catstagram 2"))
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    private let emailTexyField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .none
        tf.textColor = .white
        tf.keyboardAppearance = .dark
        tf.keyboardType = .emailAddress
        tf.backgroundColor = UIColor(white: 1, alpha: 0.1)
        tf.setHeight(50)
        tf.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.7)])
        return tf
    }()
    
    
    
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    
    //MARK: - Helpers
    
    func configureUI(){
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        
        
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPurple.cgColor, UIColor.systemBlue.cgColor]
        gradient.locations = [0, 1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        
        view.addSubview(iconImage)
        iconImage.centerX(inView: view)
        iconImage.setDimensions(height: 60, width: 110)
        iconImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 32)
    }
    
    
}
