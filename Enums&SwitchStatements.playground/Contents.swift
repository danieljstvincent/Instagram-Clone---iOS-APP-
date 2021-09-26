import Foundation
import UIKit

class Program {
 let HOME_TEAM_WON = 1

    //O(n) time | O(k) space -- where n is the number
    // of competitions and k is the number of teams
    
    func competitionsTestCase() {
        [
          ["HTML", "C#"],
          ["C#", "Python"],
          ["Python", "HTML"]
        ]
    }
    
  func tournamentWinner(_ competitions: [[String]], _ results: [Int]) -> String {
        // This string will keep track of the best team
        var currentBestTeam = ""
        
        // Below is a dictionary and "scores" is an empty [String: Int] dictionary
        var scores = [String: Int]()
        
        // Inside the "score" dictionary we store the empty string "CurrentBestTeam"
        scores[currentBestTeam] = 0
        
        //iterates over each of the items while also telling you the items's position in the array
        for (idx, competition) in competitions.enumerated() {
        
        // The index of the array is store in "result"
        let result = results[idx]
        
        // This is a Tuple that swaps the values
            let (homeTeam, awayTeam) = (competitions[0], competitions[1])
        
        // ???
            var winningTeam: String = awayTeam
        
        //???
        if result == HOME_TEAM_WON {
            winningTeam = homeTeam
        }
        
        //helper funcation that add three point to the exiciting team
        updateScores(winningTeam, 3, &scores)
            
        //We check if the score that we just updated is greater then the score of the winning team
        if scores[winningTeam]! > scores[currentBestTeam]! {
            currentBestTeam = winningTeam
        }
  }
    // We return the current best team for our soluation
    return currentBestTeam
}

func updateScores(_ team: String,  _ points: Int, _ scores: inout [String: Int]) {
    if scores[team] == nil {
        scores[team] = 0
    }
    scores[team] = scores[team]! + points
    }
}
