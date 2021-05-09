import XCTest
@testable import LetterBoard

class LetterBoardTests: XCTestCase {
    
    func testLetterBoardUsingCat() {
        let testBoard: Board = [ "a", "z", "c", "t", "v", "a" ]
        let word = "cat"
        
        print("Testing word \(word) in board \(testBoard.asString())")
        
        let moves = LetterBoard.solveLetterBoard(board: testBoard, word: word)
        let expected = [
            /* c */ Move(direction: Direction.left),
                    Move(direction: Direction.left),
                    Move(direction: Direction.left, letter: "c"),
            /* a */ Move(direction: Direction.right),
                    Move(direction: Direction.right, letter: "a"),
            /* t */ Move(direction: Direction.left),
                    Move(direction: Direction.left, letter: "t")
        ]
        
        XCTAssertEqual(expected, moves)
    }
    
    func testLetterBoardUsingTV() {
        let testBoard: Board = [ "a", "z", "c", "t", "v", "a" ]
        let word = "tv"
        
        print("Testing word \(word) in board \(testBoard.asString())")
        
        let moves = LetterBoard.solveLetterBoard(board: testBoard, word: word)
        let expected = [
            /* t */ Move(direction: Direction.right),
                    Move(direction: Direction.right),
                    Move(direction: Direction.right, letter: "t"),
            /* v */ Move(direction: Direction.left, letter: "v")
        ]
        
        XCTAssertEqual(expected, moves)
    }
    
}
