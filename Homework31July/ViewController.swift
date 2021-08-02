//
//  ViewController.swift
//  Homework31July
//
//  Created by Dominika Poleshyck on 31.07.21.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homework()
        calculate(condition5: 12, condition6: 3)
        exponentiation(number: 3, times: 4)
        factorial(factorialNumber: 4)
        
    }
    
    
    
    func calculate(condition1: Int, condition2: Int) {
        let result = condition1 + condition2
        print(result)
    }
    
    func calculate(condition3: Int, condition4: Int) {
        let result = condition3 - condition4
        print(result)
    }
    
    func calculate(condition5: Int, condition6: Int) {
        let result = condition5 * condition6
        print(result)
    }
    
    func calculate(condition7: Int, condition8: Int) {
        let result = condition7 / condition8
        print(result)
    }
    
    
    
    func exponentiation (number: Int, times: Int) {
        let exponent = Int(pow(Double(number), Double(times)))
        print (exponent)
    }
}


func homework() -> () {
    let allElements: [(number: Int, letter: String)] = [(2, "a"), (1, "b"), (4, "c"), (3, "d")]
    var resultOfNumbers = allElements.map { (number: Int, letter: String) in
        return ((number * number), letter)
    }
    print(resultOfNumbers)
    resultOfNumbers.sort { firstElement, secondElement in
        return firstElement < secondElement
    }
    print(resultOfNumbers)
    let totalResult = resultOfNumbers.filter { valueOfNumber in
        let digit = valueOfNumber.0
        return digit % 2 == 0
    }
    print(totalResult)
    return
}

func factorial(factorialNumber: Int) -> Double {
    if factorialNumber == 0 {
        return 1
    } else {
        return Double(factorialNumber) * factorial(factorialNumber: factorialNumber - 1)
    }
    
    
}
