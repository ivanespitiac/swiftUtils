//
//  UIController.swift
//  iOSUtils
//
//  Created by Ivan Espitia on 24/01/20.
//  Copyright © 2020 Ivan Espitia. All rights reserved.
//

import Foundation
import UIKit
import MessageUI

public extension UIViewController {
    
    /**
     UI extensions
     */
    
    func showAlertNoTitle(message: String, onTap: @escaping() -> Void = {}) {
        self.alert(title: "", message: message, onTap: onTap)
    }
    
    func showAlert(title: String, message: String, onTap: @escaping() -> Void = {}) {
        self.alert(title: title, message: message, onTap: onTap)
    }
    
    func showQuestionMessage(title: String, message: String, onAccept: @escaping() -> Void, onCancel: @escaping() -> Void) {
        let controller = UIAlertController(title: title, message: message, preferredStyle: .alert)
        controller.addAction(UIAlertAction(title: "Ok", style: .default, handler: { action in
            onAccept()
        }))
        controller.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) in
            onCancel()
        }))
        self.present(controller, animated: true, completion: nil)
    }
    
    private func alert(title: String, message: String, onTap: @escaping() -> Void = {}) {
        let controller = UIAlertController(title: title, message: message, preferredStyle: .alert)
        controller.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            onTap()
        }))
        self.present(controller, animated: true, completion: nil)
    }
    
    /**
     Presenter extensions
     */
    func presentController(storyboardID: String, storyboardName: String = "Main", presentation: UIModalPresentationStyle = .fullScreen) {
       let controller = instanciateController(storyboardId: storyboardID, storyboardName: storyboardName)
       controller.modalPresentationStyle = presentation    
       self.present(controller, animated: true, completion: nil)
    }
    
    private func instanciateController(storyboardId: String, storyboardName: String = "Main") -> UIViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: storyboardId)
    }
    
    /**
     Open Email Builder
     **/
    func requestEmailBuilder(email: String) {
        print("Email \(email)")
        if MFMailComposeViewController.canSendMail() && self is MFMailComposeViewControllerDelegate {
            let mc: MFMailComposeViewController = MFMailComposeViewController()
            mc.mailComposeDelegate = self as? MFMailComposeViewControllerDelegate
            mc.setSubject("Contact Host")
            mc.setMessageBody("", isHTML: false)
            mc.setToRecipients([email])
            self.present(mc, animated: true, completion: nil)
        } else {
            if let url = URL(string: "mailto: \(email)") {
                if #available(iOS 10.0, *) {
                    UIApplication.shared.open(url)
                } else {
                    UIApplication.shared.openURL(url)
                }
            }
        }
    }
    
}
