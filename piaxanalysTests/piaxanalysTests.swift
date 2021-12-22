//
//  piaxanalysTests.swift
//  piaxanalysTests
//
//  Created by Bill Martensson on 2021-12-20.
//

import XCTest
@testable import piaxanalys

class piaxanalysTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAnnat()
    {
        
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        var someone = Person()
        
        XCTAssert(someone.getFullname() == "Namn saknas!")

        someone.firstname = " "
        XCTAssert(someone.getFullname() == "Felaktigt namn!")

        someone.firstname = "Torsten"
        someone.lastname = " "
        XCTAssert(someone.getFullname() == "Felaktigt efternamn!")

        
        someone.firstname = "Torsten"
        someone.lastname = "Brynolfsson"
                
        XCTAssert(someone.getFullname() == "Torsten Brynolfsson")

        var someone2 = Person()
        someone2.firstname = "Torsten"
                
        XCTAssert(someone2.getFullname() == "Torsten")

    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
