import UIKit

// https://www.fullstack.cafe/interview-questions/stacks

/*
 Giving a String, write a function that reverses the String
 using a stack.
 */

func solution(_ text: String) -> String {
    var stack = Array(text)
    
    var reversed = [Character]()
    for i in stack {
        reversed.append(stack.popLast()!)
    }
    
    return String(reversed)
}

solution("abc") // cba
solution("Would you like to play a game?")
