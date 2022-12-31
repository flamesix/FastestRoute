//
//  Alert.swift
//  FastesRoute
//
//  Created by Юрий Гриневич on 30.12.2022.
//

import UIKit

extension UIViewController {
    
    func alertAddAddress(title: String, placeholder: String, completion: @escaping (String) -> Void) {
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let alertOK = UIAlertAction(title: "OK", style: .default) { action in
            let text = alertController.textFields?.first
            guard let text = text?.text else { return }
            completion(text)
            
        }
        
        alertController.addTextField { text in
            text.placeholder = placeholder
        }
        
        let alertCancel = UIAlertAction(title: "Cancel", style: .default) { _ in
            
        }
        alertController.addAction(alertOK)
        alertController.addAction(alertCancel)
        
        present(alertController, animated: true)
    }
    
    func alertError(title: String, message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOK = UIAlertAction(title: "OK", style: .default)
        
        alertController.addAction(alertOK)
        present(alertController, animated: true)
    }
    
}
