//
//  StatisticService.swift
//  MovieQuiz
//
//  Created by Andrew Leonov on 14.01.2025.
//

import Foundation

final class StatisticService: StatisticServiceProtocol {
    
    private enum StatisticKeys: String {
        case gamesCount
        case totalCorrectAnswers
        case totalAccuracy
        case bestGame
    }
    
    private enum GameResultKeys: String {
        case correct
        case total
        case date
    }
    
    private let storage: UserDefaults = .standard
    
    var gamesCount: Int {
        get {
            storage.integer(forKey: StatisticKeys.gamesCount.rawValue)
        }
        set {
            storage.set(newValue, forKey: StatisticKeys.gamesCount.rawValue)
        }
    }
    
    var totalCorrectAnswers: Int {
        get {
            storage.integer(forKey: StatisticKeys.totalCorrectAnswers.rawValue)
        }
        set {
            storage.set(newValue, forKey: StatisticKeys.totalCorrectAnswers.rawValue)
        }
    }
    
    var totalAccuracy: Double {
        get {
            storage.double(forKey: StatisticKeys.totalAccuracy.rawValue)
        }
        set {
            storage.set(newValue, forKey: StatisticKeys.totalAccuracy.rawValue)
        }
    }
    
    var bestGame: GameResult {
        get {
            GameResult(
                correct: storage.integer(forKey: GameResultKeys.correct.rawValue),
                total: storage.integer(forKey: GameResultKeys.total.rawValue),
                date: storage.object(forKey: GameResultKeys.date.rawValue) as? Date ?? Date())
        }
        set {
            storage.set(newValue.correct, forKey: GameResultKeys.correct.rawValue)
            storage.set(newValue.total, forKey: GameResultKeys.total.rawValue)
            storage.set(newValue.date, forKey: GameResultKeys.date.rawValue)
        }
    }
    
    func store(correct count: Int, total amount: Int) {
        gamesCount += 1
        totalCorrectAnswers += count
        
        if gamesCount > 0 {
            totalAccuracy = Double(totalCorrectAnswers) / Double(10 * gamesCount) * 100
        }
        
        let newGame = GameResult(correct: count, total: amount, date: Date())
        
        if newGame.isBetterThan(bestGame) {
            bestGame = newGame
        }
    }
}
