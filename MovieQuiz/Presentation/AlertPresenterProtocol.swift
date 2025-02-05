//
//  AlertPresenterProtocol.swift
//  MovieQuiz
//
//  Created by Andrew Leonov on 06.01.2025.
//

import UIKit

protocol AlertPresenterProtocol {
    func showAlert(on vc: UIViewController, model: AlertModel)
}
