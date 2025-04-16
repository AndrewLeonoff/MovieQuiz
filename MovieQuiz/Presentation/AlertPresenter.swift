//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by Andrew Leonov on 06.01.2025.
//

import UIKit

final class AlertPresenter: AlertPresenterProtocol {
    
    func showAlert(on vc: UIViewController, model: AlertModel, accessibilityIdentifier: String?) {
        let alert = UIAlertController(
            title: model.title,
            message: model.message,
            preferredStyle: .alert)
        
        if let identifier = accessibilityIdentifier {
            alert.view.accessibilityIdentifier = identifier
        }
        
        let action = UIAlertAction(title: model.buttonText, style: .default) { _ in
            model.completion()
        }
        
        alert.addAction(action)
        vc.present(alert, animated: true, completion: nil)
    }
}
