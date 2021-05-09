import Foundation

class LetterBoard {
   
    static func solveLetterBoard(board: Board, word: String) -> Moves {

        var moves = Moves()

        var _board = board

        for c in word {
            let dir =  self.directionSelect(board: _board, letter: c)
            
            if dir == Direction.left {
                var band = false
                
                while band == false {
                    if _board.first == c {
                        moves.append(.init(direction: .left, letter: _board.first))
                        _board.removeFirst()
                        band = true
                    } else if _board.first != c {
                        moves.append(.init(direction: .left))
                        let element = _board.removeFirst()
                        _board.insert(element, at: _board.endIndex)
                    }
                }
                

            } else if dir == Direction.right {
                var band = false
                
                while band == false {
                    if _board.last == c {
                        moves.append(.init(direction: .right, letter: _board.last))
                        _board.removeLast()
                        band = true
                    } else if _board.last != c {
                        moves.append(.init(direction: .right))
                        let element = _board.removeLast()
                        _board.insert(element, at: _board.startIndex)
                    }
                }
            }

        }





        // TODO: write your solution here. Do not change the method signature in any way, or validation of your solution will fail.
        return moves
    }
    
}
