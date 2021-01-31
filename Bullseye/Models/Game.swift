//
//  Game.swift
//  Bullseye
//
//  Created by Dylan Cronk on 1/19/21.
//

import Foundation

struct LeaderboardEntry {
  let score: Int
  let date: Date
}

struct Game {
  var totalScore = 0
  var currentRound = 1
  var targetScore = Int.random(in: 1...100)
  var leaderboardEntries: [LeaderboardEntry] = []
  
  func calcPointsAwarded(sliderValue: Int) -> Int {
    let difference = abs(targetScore - sliderValue)
    var bonus = 0
    if difference == 0 {
      bonus += 100
    }
    else if difference <= 2 {
      bonus += 50
    }
    return 100 - difference + bonus
  }
  
  mutating func startNewRound(points: Int) -> Void {
    totalScore += points
    currentRound += 1
    targetScore = Int.random(in: 1...100)
    addToLeaderboard(points: points)
  }
  
  mutating func addToLeaderboard(points: Int) -> Void {
    leaderboardEntries.append(LeaderboardEntry(score: points, date: Date()))
    leaderboardEntries.sort {$0.score > $1.score}
  }
  
  mutating func restart() -> Void {
    totalScore = 0
    currentRound = 1
    targetScore = Int.random(in: 1...100)
  }
}
