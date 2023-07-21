//
//  ViewController.swift
//  LoopsInSwift
//
//  Created by Amaan Gillani on 22/07/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        twoTableFunction()
        whileLoopExampleFunction()
        forInLoopExampleFunction()
        doWhileLoopExamplefunction()
        forLoopIncrementExampleFunction()
        // Do any additional setup after loading the view.
    }

    // examples of loops in swift
    // 1. For loop
    // function for table 2, if you need table of 3 or 4 or 5 just replace the number 2 in below code table
    func twoTableFunction() {
        for index in 0..<100 {
        guard index.isMultiple(of: 2) else {
          continue
        }
        print(index)
      }
    }
    
    // 2. While loop example
    func whileLoopExampleFunction() {
        var startPoint = 1,
        endingPoint = 8
        let check = true
        while (startPoint <= endingPoint) {
        if check {
        print("print: \(startPoint)")
        startPoint += 1
        }
        }
        print("while_loop_outside.")
    }
    
    // 3. For-in loop example
    func forInLoopExampleFunction() {
        let no_of_tyres = ["car": 4, "truck": 6, "bike": 2]
        for (vehicle_nm, tyre_cnt) in no_of_tyres
        {
        print("\(vehicle_nm)s that consists of \(tyre_cnt) tyres.")
        }

    }
    
    // 4. Repeat…while loop or do-while loop example
    func doWhileLoopExamplefunction() {
        let finl_sqr = 36
        var brd_gm = [Int](repeating: 0, count: finl_sqr + 1)
        brd_gm[05] = +12; brd_gm[08] = +11; brd_gm[10] = +09; brd_gm[12] = +02
        brd_gm[20] = -05; brd_gm[22] = -13; brd_gm[24] = -02; brd_gm[28] = -09
        var sqr = 0
        var dc_rll = 0
        repeat
        {
        sqr += brd_gm[sqr]
        dc_rll += 1
        if dc_rll == 12 { dc_rll = 1 }
        sqr += dc_rll
        } while sqr < finl_sqr
        print("End!")
    }
    
    // 5. For-condition-increment Loops
    func forLoopIncrementExampleFunction() {
       // 1
        for indx in stride(from: 0, to: 8, by: 6)
        {
        print(indx)
        }
        
        // 2: using array
        let countries = ["UAE", "Pakistan", "Egypt"]
        for country in countries {
            print(country)
        }
        
        //3 : in Dictionaries
        let ages = ["sara": 28, "ali": 2, "nida": 72]
        for (name, age) in ages {
            print("\(name) is \(age) years old")
        }
        
        // 4: combining a for loop with ranges
        for index in (0...3).reversed() {
            print("\(index)..")
        }
        
        // 5: Iterating over an array using forEach
        let cities = ["islamabad", "karachi", "peshawar"]
        cities.forEach { city in
            print(city)
        }
        
    }
}

