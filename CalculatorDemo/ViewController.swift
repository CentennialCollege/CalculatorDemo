import UIKit

class ViewController: UIViewController
{
    var operand1: Double = 0.0
    var operand2: Double = 0.0
    var activeOperation: String = ""

    @IBOutlet weak var ResultLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

    @IBAction func OnNumberButton_Press(_ sender: UIButton)
    {
        switch sender.titleLabel!.text! {
        case "C":
            ResultLabel.text! = "0"
        case "⌫":
            ResultLabel.text!.popLast()
            if((ResultLabel.text!.count < 1) || (ResultLabel.text! == "-"))
            {
                ResultLabel.text! = "0"
            }
        case ".":
            if(!ResultLabel.text!.contains("."))
            {
                ResultLabel.text! += "."
            }
        case "+/-":
            if(ResultLabel.text! != "0")
            {
                if(!ResultLabel.text!.contains("-"))
                {
                    ResultLabel.text!.insert("-", at: ResultLabel.text!.startIndex)
                }
                else
                {
                    ResultLabel.text!.remove(at: ResultLabel.text!.startIndex)
                }
            }
        default:
            if(ResultLabel.text == "0")
            {
                ResultLabel.text! = sender.titleLabel!.text!
            }
            else
            {
               ResultLabel.text! += sender.titleLabel!.text!
            }
        }
        
        if(ResultLabel.text!.contains("."))
        {
            print(Double(ResultLabel.text!)!)
        }
        else
        {
            print(Int(ResultLabel.text!)!)
        }
        
        
        
    }
    
    @IBAction func OnOperatorButton_Press(_ sender: UIButton)
    {
        activeOperation = sender.titleLabel!.text!
        
        switch(activeOperation)
        {
        case "+":
            print("add")
        case "-":
            print("minus")
        case "x":
            print("multiply")
        case "÷":
            print("divide")
        case "%":
            print("percent")
        case "=":
            print("equals")
        default:
            print("error")
        }
    }
}

