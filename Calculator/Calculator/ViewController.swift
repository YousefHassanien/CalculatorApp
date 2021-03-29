//  Created by Yousef Hassanien on 3/28/21.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var Calculator: UILabel!
    @IBOutlet weak var Results: UILabel!
    
    var workings:String = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        clearAll()
    }

    func clearAll()
    {
        workings = ""
        Calculator.text = ""
        Results.text = ""
    }
    @IBAction func Clear(_ sender: Any) {
        clearAll()
    }
    @IBAction func backTap(_ sender: Any) {
    }
    
    func addToWorkings(value: String)
    {
        if(!workings.isEmpty)
        {
            workings.removeLast()
            Calculator.text = workings
        }
        workings = workings + value
        Calculator.text = workings
    }
    @IBAction func Minus(_ sender: Any) {
        addToWorkings(value: "-")
    }
    @IBAction func Plus(_ sender: Any) {
        addToWorkings(value: "+")
    }
    @IBAction func Multiply(_ sender: Any) {
        addToWorkings(value: "*")
    }
    @IBAction func Equalstap(_ sender: Any) {
        addToWorkings(value: "=")
    
        let expression = NSExpression(format: workings)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        Calculator.text = resultString
    }
    func formatResult(result: Double) -> String
    {
        if(result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", result)
        }
        else
        {
            return String(format: "%.2f", result)
    }
    }
    @IBAction func zerotap(_ sender: Any) {
        addToWorkings(value: "0")
    }
    @IBAction func Decimaltap(_ sender: Any) {
        addToWorkings(value: ".")
    }
    @IBAction func Threetap(_ sender: Any) {
        addToWorkings(value: "3")
    }
    @IBAction func Twotao(_ sender: Any) {
        addToWorkings(value: "2")
    }
    @IBAction func Onetap(_ sender: Any) {
        addToWorkings(value: "1")
    }
    @IBAction func Sixtap(_ sender: Any) {
        addToWorkings(value: "6")
    }
    @IBAction func Fivetap(_ sender: Any) {
        addToWorkings(value: "5")
    }
    @IBAction func Fourtap(_ sender: Any) {
        addToWorkings(value: "4")
    }
    @IBAction func Ninetap(_ sender: Any) {
        addToWorkings(value: "9")
    }
    @IBAction func Eighttap(_ sender: Any) {
        addToWorkings(value: "8")
    }
    @IBAction func Seventap(_ sender: Any) {
        addToWorkings(value: "7")
    }
}
