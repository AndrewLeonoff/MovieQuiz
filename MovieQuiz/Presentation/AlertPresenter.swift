//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by Andrew Leonov on 06.01.2025.
//

import UIKit

final class AlertPresenter: AlertPresenterProtocol {
    
    func showAlert(on vc: UIViewController, model: AlertModel) {
        let alert = UIAlertController(
            title: model.title,
            message: model.message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(title: model.buttonText, style: .default) { _ in
            model.completion()
        }
        
        alert.addAction(action)
        vc.present(alert, animated: true, completion: nil)
    }
}
