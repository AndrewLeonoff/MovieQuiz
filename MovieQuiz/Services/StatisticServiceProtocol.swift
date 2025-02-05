//
//  StatisticServiceProtocol.swift
//  MovieQuiz
//
//  Created by Andrew Leonov on 14.01.2025.
//

import Foundation

protocol StatisticServiceProtocol {
    var gamesCount: Int { get }
    var totalAccuracy: Double { get }
    var bestGame: GameResult { get }
    
    func store(correct count: Int, total amount: Int)
}
