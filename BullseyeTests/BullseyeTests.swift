//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Dylan Cronk on 1/19/21.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {
  var game: Game!
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    game = Game()
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    game = nil
  }
  
  func testScorePositive() {
    let guess = game.targetScore + 5
    let score = game.calcPointsAwarded(sliderValue: guess)
    XCTAssertEqual(score, 95)
  }
  
  func testScoreNegative() {
    let guess = game.targetScore - 5
    let score = game.calcPointsAwarded(sliderValue: guess)
    XCTAssertEqual(score, 95)
  }
  
  func testNewRound() {
    game.startNewRound(points: 100)
    XCTAssertEqual(game.totalScore, 100)
    XCTAssertEqual(game.currentRound, 2)
  }
  
  func testScoreExact() {
    let guess = game.targetScore
    let score = game.calcPointsAwarded(sliderValue: guess)
    XCTAssertEqual(score, 200)
  }
  
  func testScoreClose() {
    let guess = game.targetScore + 2
    let score = game.calcPointsAwarded(sliderValue: guess)
    XCTAssertEqual(score, 98 + 50)
  }
  
  func testRestart() {
    game.startNewRound(points: 100)
    XCTAssertNotEqual(game.totalScore, 0)
    XCTAssertNotEqual(game.currentRound, 1)
  }
  
  func testLeaderBoard() {
    game.startNewRound(points: 100)
    XCTAssertEqual(game.leaderboardEntries.count, 1)
    XCTAssertEqual(game.leaderboardEntries[0].score, 100)
    game.startNewRound(points: 200)
    XCTAssertEqual(game.leaderboardEntries.count, 2)
    XCTAssertEqual(game.leaderboardEntries[0].score, 200)
    XCTAssertEqual(game.leaderboardEntries[1].score, 100)
  }
}
