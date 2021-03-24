import UIKit

struct calculatorBrain {
    var bmi:BMI?
    
    func getBMIvalue() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
        
    
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    mutating func calcBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue <= 18 {
            bmi = BMI(value: bmiValue, advice: "You have severe undeweight, need to eat a lot", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if (bmiValue > 18) && (bmiValue < 25){
            bmi = BMI(value: bmiValue, advice: "You're healthy, everything alright", color: #colorLiteral(red: 0, green: 1, blue: 0, alpha: 1))
        } else if (bmiValue >= 25) && (bmiValue < 30){
           bmi = BMI(value: bmiValue, advice: "You have overweight, need to do some sport", color: #colorLiteral(red: 1, green: 0.9899911284, blue: 0, alpha: 1))
        } else if (bmiValue >= 30) && (bmiValue < 40){
            bmi = BMI(value: bmiValue, advice: "You have obese, need to go to doctor", color: #colorLiteral(red: 1, green: 0.499533534, blue: 0, alpha: 1))
        } else if (bmiValue >= 40){
            bmi = BMI(value: bmiValue, advice: "You have big troubles, need to immediately contact doctor", color: #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
        }
    }
}
