//
//  AuthService.swift
//  Catstagram
//
//  Created by Sergio Illan Illan on 7/12/21.
//

import UIKit
import Firebase

struct AuthCredentials {
    let email: String
    let password: String
    let fullname: String
    let username: String
    let profileImage: UIImage
}

struct AuthService {
    static func registerUser(withCredential credentials: AuthCredentials, completion: @escaping(Error?) -> Void) {
        print("DEBUG: Credentials are: \(credentials)")
        
        ImageUploader.uploadImage(image: credentials.profileImage) { imageUrl in
            Auth.auth().createUser(withEmail: credentials.email, password: credentials.password) { result, error in
                if let error = error {
                    print("DEBUG: --> failed to register user: \(error.localizedDescription)")
                    return
                }
                
                guard let uid = result?.user.uid else {return}
                let data: [String:Any] = ["email":credentials.email, "fullname":credentials.fullname, "username":credentials.username, "profileImageUrl":imageUrl, "uid":uid]
                
                Firestore.firestore().collection("Users").document(uid).setData(data, completion: completion)
                
            }
        }
    }
}
