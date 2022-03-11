//
//  ViewController.swift
//  CalculatorAssignment
//
//  Created by admin on 28/02/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var calculatorWorkings: UILabel!
    @IBOutlet weak var calculatorResults: UILabel!
    
    var workings: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        
    }
    
    func clearAll(){
        workings = ""
        calculatorWorkings.text = ""
        calculatorResults.text = ""
    }

    @IBAction func allClear(_ sender: Any) {
        clearAll()
    }
    
    func addTwoWorkings (value: String){
        workings = workings + value
        calculatorWorkings.text = workings
    }
    
    
    @IBAction func plusMinusSign(_ sender: Any) {
        
        addTwoWorkings(value: "+/-")
    }
    
    @IBAction func percentageSign(_ sender: Any) {
        addTwoWorkings(value: "%")
    }
    
    
    @IBAction func divisonSign(_ sender: Any) {
        addTwoWorkings(value: "/")
    }
    
    @IBAction func multiplicationSign(_ sender: Any) {
        addTwoWorkings(value: "*")
    }
    
    
    @IBAction func subtractionSign(_ sender: Any) {
        addTwoWorkings(value: "-")
    }
    
    @IBAction func additionSign(_ sender: Any) {
        addTwoWorkings(value: "+")
    }
    
    
    @IBAction func eqaulToSign(_ sender: Any) {
        let expression = NSExpression (format: workings)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        calculatorResults.text = resultString
    }
    
    func formatResult (result: Double) -> String {
        if (result.truncatingRemainder(dividingBy: 1) == 0){
            return String(format: "%.0f", result)
        }
        else {
            return String(format: "%.2f", result)
        }
    }
    
    
    @IBAction func decimalPoint(_ sender: Any) {
        addTwoWorkings(value: ".")
    }
    
    
    @IBAction func zeroNumber(_ sender: Any) {
        addTwoWorkings(value: "0")
    }
    
    
    @IBAction func oneNumber(_ sender: Any) {
        addTwoWorkings(value: "1")
    }
    
    @IBAction func numberTwo(_ sender: Any) {
        addTwoWorkings(value: "2")
    }
    
    @IBAction func numberThree(_ sender: Any) {
        addTwoWorkings(value: "3")
    }
    
    @IBAction func numberFour(_ sender: Any) {
        addTwoWorkings(value: "4")
    }
    
    
    @IBAction func numberFive(_ sender: Any) {
        addTwoWorkings(value: "5")
    }

    
    @IBAction func numberSix(_ sender: Any) {
        addTwoWorkings(value: "6")
    }
    
    @IBAction func numberSeven(_ sender: Any) {
        addTwoWorkings(value: "7")
    }
    
    
    @IBAction func numberEight(_ sender: Any) {
        addTwoWorkings(value: "8")
    }
    
    
    @IBAction func numberNine(_ sender: Any) {
        addTwoWorkings(value: "9")
    }
}

