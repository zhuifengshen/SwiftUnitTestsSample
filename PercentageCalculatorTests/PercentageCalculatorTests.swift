//
//  PercentageCalculatorTests.swift
//  PercentageCalculatorTests
//
//  Created by Maxime Defauw on 03/02/16.
//  Copyright © 2016 App Coda. All rights reserved.
//

import XCTest
@testable import PercentageCalculator

class PercentageCalculatorTests: XCTestCase {
    var viewController:ViewController!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        viewController = storyboard.instantiateInitialViewController() as! ViewController
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPercentage() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let p = viewController.percentage(50, 50)
        XCTAssert(p == 25)
    }
    
    func testLabelValueShowedProperly(){
        let _ = viewController.view
        viewController.updateLabels(Float(80.0), Float(50.0), Float(40.0))
        XCTAssert(viewController.numberLabel.text == "80.0", "numberLabel doesn't show the right text")
        XCTAssert(viewController.percentageLabel.text == "50.0%", "percentageLabel doesn't show the right text")
        XCTAssert(viewController.resultLabel.text == "40.0", "resultLabel doesn't show the right text")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
