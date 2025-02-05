//
//  QuestionFactoryDelegate.swift
//  MovieQuiz
//
//  Created by Andrew Leonov on 03.01.2025.
//

import Foundation

protocol QuestionFactoryDelegate: AnyObject {
    func didReceiveNextQuestion(question: QuizQuestion?)
}
