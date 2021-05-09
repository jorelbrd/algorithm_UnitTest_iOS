import Foundation

extension Board {
    
    func asString() -> String {
        return "[ \(map { String($0) }.joined(separator: ", ")) ]"
    }
    
    // TODO: add other extension methods that may be helpful here...
    
}


extension LetterBoard {
    static func directionSelect(board: Board, letter: String.Element) -> Direction {
        var i = 0
        var bandL = false
        var distL = 0
        while bandL == false {
            if board[i] == letter {
                bandL = true
                distL = i + 1
            }
            i = i + 1
        }

        var j = board.count - 1
        var bandR = false
        var distR = 0
        while bandR == false {
            if board[j] == letter {
                bandR = true
                distR = board.count - j
            }
            j = j - 1
        }

        if distL < distR || distL == distR {
            return Direction.left
        }
        else{
            return Direction.right
        }
    }
}

