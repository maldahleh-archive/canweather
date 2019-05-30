//
//  AlertUtils.swift
//  canweather
//
//  Created by Mohammed Al-Dahleh on 2019-05-30.
//  Copyright © 2019 Codeovo Software Ltd. All rights reserved.
//

import UIKit

class AlertUtils {
    private struct Messages {
        static let Header = "CanWeather"
        static let Confirmation = "OK"
    }
    
    static func presentAlertWith(_ controller: UIViewController, message: String) {
        let alertController = UIAlertController(title: Messages.Header, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: Messages.Confirmation, style: .default, handler: nil))
        
        controller.present(alertController, animated: true, completion: nil)
    }
}
