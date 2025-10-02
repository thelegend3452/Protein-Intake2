//
//  main.swift
//  
//
//  Created by Asmaar Abid on 02/10/2025.
//

//


import Foundation

var lowpergram = 0.8
var moderatepergram = 1.2
var (highpergram): Double = 2

enum Activity: String {
    case low = "low"
    case moderate = "moderate", high = "high"
}



func intake(weightInput: Double, operation: Activity) {
        switch operation {
            case .low:
            print("Low activity")
            let proteinIntake = weightInput * lowpergram // this shows how much i should have
            print("So you should get \(proteinIntake) per day for maximum recovery and best effect")
            
            print("Now lets see how much you have had today?")
            
            if let takenprotein = readLine(), let takenproteinInput = Double(takenprotein) {
                print("You've had \(takenproteinInput)g of protein today")

                let remaining = proteinIntake - takenproteinInput

                if takenproteinInput < proteinIntake {
                    // User is under their goal
                    print("You have not hit your protein intake.")
                    print("Remaining protein: \(remaining)g")
                } else if takenproteinInput > proteinIntake {
                    // User went over
                    let over = takenproteinInput - proteinIntake
                    print("You have hit your protein intake and beyond.")
                    print("You went over by \(over)g")
                } else {
                    // User hit the goal exactly
                    print("You hit exactly your protein goal!")
                    print("Good job!")
                }
            }

                
            case .moderate:
                print("Moderate Activity")
                let proteinIntake = weightInput * moderatepergram
                print("So you should get \(proteinIntake) per day for maximum recovery and best effect")
            
            print("Now lets see how much youve had today?")
            
            if let takenProtein = readLine(), let takenProteinInput = Double(takenProtein) {
                print("You've had \(takenProteinInput)g of protein today")
                
                let remanining = proteinIntake - takenProteinInput
                
                if takenProteinInput < proteinIntake {
                    print("You have not hit your protein-intake")
                    print("Remanining protein: \(remanining)g")
                } else if takenProteinInput > proteinIntake {
                    let over = takenProteinInput - proteinIntake
                    print("You hit you protein intake and beyond.")
                    print("You went over by \(over)g")
                } else {
                    print("You hit exactly your protein-intake!")
                    print("Good Job!")
                }
            }
            
            
            
            case .high:
                print("High Activity")
                let proteinIntake = weightInput * highpergram
                print("So you should get \(proteinIntake) per day for maximum recovery and best effect")
            print("Now lets see how much youve had today?")
            
            if let takenProtein = readLine(), let takenProteinInput = Double(takenProtein) {
                print("You've had \(takenProteinInput)g of protein today")
                
                let remanining = proteinIntake - takenProteinInput
                
                if takenProteinInput < proteinIntake {
                    print("You have not hit your protein-intake")
                    print("Remanining protein: \(remanining)g")
                } else if takenProteinInput > proteinIntake {
                    let over = takenProteinInput - proteinIntake
                    print("You hit you protein intake and beyond.")
                    print("You went over by \(over)g")
                } else {
                    print("You hit exactly your protein-intake!")
                    print("Good Job!")
                }
            }

            
    }
}

while true {
    print("Calculate your proteinIntake using swift")
    print("First enter your weight: ")
    if let weight = readLine(), let weightInput = Double(weight) {
        print("Your weight is \(weightInput)")
        print("So the protein-intake you should have should be, weight * by activitylevel")
        print("Reaching protein-intake will give best recovery and effect!")
        
        print("Enter your activity level: low, moderate, high")
        
        if let operatorString = readLine(), let operation = Activity(rawValue: operatorString) {
            intake(weightInput: weightInput, operation: operation)
            exit(0)
        }
        else {
            print("invalid choice, try again")
        }
        
    }
    else {
        print("Weight is in numbers not letters, try again")
    }
    
}



