//
//  AlertPresenterDelegate.swift
//  MovieQuiz
//
//  Created by Andrew Leonov on 06.01.2025.
//

import Foundation

protocol AlertPresenterDelegate: AnyObject {
    func show(quiz result: QuizResultsViewModel)
}
