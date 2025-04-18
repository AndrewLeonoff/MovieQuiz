//
//  GameResult.swift
//  MovieQuiz
//
//  Created by Andrew Leonov on 14.01.2025.
//

import Foundation

struct GameRecord: Codable {
    let correct: Int
    let total: Int
    let date: Date
    
    func isBetterThan(_ another: GameRecord) -> Bool {
        correct > another.correct
    }
}
